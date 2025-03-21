require 'logger'
require 'minitest/autorun'
require 'fedex_web_services'

class IntegrationTest < MiniTest::Unit::TestCase
  include FedexWebServices

  @@logger = Logger.new($stderr)

  def setup
    credentials = %w(FEDEX_ACCOUNT FEDEX_METER FEDEX_AUTH_KEY FEDEX_SECURITY_CODE).map do |env_var|
      ENV.fetch(env_var) { flunk("Missing environment variable #{env_var}") }
    end

    @credentials = Api::Credentials.new(*credentials, :test)
    @api = Api.new(@credentials)
  end

  protected
    def run_request(api, method, request)
      api.send(method, request)
    rescue
      err = $!
      @@logger.error([ "FedEx Exception: #{err.message}", *err.backtrace ] * "\n  ")

      until ((err = err.cause).nil?)
        @@logger.error([ "caused by: #{err.class.name} #{err}", *err.backtrace ] * "\n  ")
      end

      if (api.wiredump)
        @@logger.debug("FedEx SOAP debug output")
        @@logger.debug(api.wiredump)
      end

      raise
    end
end

class ShipTest < IntegrationTest
  include FedexWebServices::Soap

  def test_process_shipment
    service = "FEDEX_2_DAY"

    from = Ship::Party.new.tap do |shipper|
      shipper.contact = Ship::Contact.new.tap do |contact|
        contact.personName  = "Joe Shmoe"
        contact.phoneNumber = "(123) 456 789"
      end

      shipper.address = Ship::Address.new.tap do |address|
        address.streetLines         = [ "123 4th St" ]
        address.city                = "San Luis Obispo"
        address.stateOrProvinceCode = "CA"
        address.postalCode          = "93401"
        address.countryCode         = "US"
        address.residential         = true
      end
    end

    to = Ship::Party.new.tap do |recipient|
      recipient.contact = Ship::Contact.new.tap do |contact|
        contact.personName  = "Ahwahnee Hotel"
        contact.phoneNumber = "(801) 559-5000"
      end
      recipient.address = Ship::Address.new.tap do |address|
        address.streetLines         = [ "9006 Yosemite Lodge Drive" ]
        address.city                = "Yosemite National Park"
        address.stateOrProvinceCode = "CA"
        address.postalCode          = "95389"
        address.countryCode         = "US"
        address.residential         = true
      end
    end

    label_spec = Ship::LabelSpecification.new
    label_spec.labelFormatType = Ship::LabelFormatType::COMMON2D
    label_spec.imageType       = Ship::ShippingDocumentImageType::PDF
    label_spec.labelStockType  = Ship::ShippingDocumentStockType::PAPER_LETTER

    weights = [ 10, 55.34, 10.2 ].map do |weight|
      Ship::Weight.new.tap do |w|
        w.units = "LB"
        w.value = weight
      end
    end

    requests = ProcessShipmentRequest.shipment_requests(service, from, to, label_spec, weights)
    requests.each do |request|
      request.sender_paid!(@credentials.account_number)
      request.list_rate!
      request.regular_pickup!
      request.customer_reference!("01234")
      request.customer_invoice!("56789")
    end

    run_request(@api, :process_shipments, requests).each do |response|
      delete_request = DeleteShipmentRequest.new
      delete_request.delete_all_packages!(response.tracking_number, Ship::TrackingIdType::EXPRESS)
      run_request(@api, :delete_shipment, delete_request)
    end
  end
end

class CloseTest < IntegrationTest
  def test_smart_post_close
    run_request(@api, :close_smart_post, CloseSmartPostRequest.new)
  end
end
