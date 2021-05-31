# encoding: UTF-8
# Generated by wsdl2ruby (SOAP4R-NG/2.0.4)
require 'xsd/qname'

module FedexWebServices; module Soap; module AddressValidation


# {http://fedex.com/ws/addressvalidation/v4}Address
#   streetLines - SOAP::SOAPString
#   city - SOAP::SOAPString
#   stateOrProvinceCode - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   urbanizationCode - SOAP::SOAPString
#   countryCode - SOAP::SOAPString
#   countryName - SOAP::SOAPString
#   residential - SOAP::SOAPBoolean
class Address
  attr_accessor :streetLines
  attr_accessor :city
  attr_accessor :stateOrProvinceCode
  attr_accessor :postalCode
  attr_accessor :urbanizationCode
  attr_accessor :countryCode
  attr_accessor :countryName
  attr_accessor :residential

  def initialize(streetLines = [], city = nil, stateOrProvinceCode = nil, postalCode = nil, urbanizationCode = nil, countryCode = nil, countryName = nil, residential = nil)
    @streetLines = streetLines
    @city = city
    @stateOrProvinceCode = stateOrProvinceCode
    @postalCode = postalCode
    @urbanizationCode = urbanizationCode
    @countryCode = countryCode
    @countryName = countryName
    @residential = residential
  end
end

# {http://fedex.com/ws/addressvalidation/v4}AddressAttribute
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class AddressAttribute
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://fedex.com/ws/addressvalidation/v4}AddressToValidate
#   clientReferenceId - SOAP::SOAPString
#   contact - FedexWebServices::Soap::AddressValidation::Contact
#   address - FedexWebServices::Soap::AddressValidation::Address
class AddressToValidate
  attr_accessor :clientReferenceId
  attr_accessor :contact
  attr_accessor :address

  def initialize(clientReferenceId = nil, contact = nil, address = nil)
    @clientReferenceId = clientReferenceId
    @contact = contact
    @address = address
  end
end

# {http://fedex.com/ws/addressvalidation/v4}AddressValidationReply
#   highestSeverity - FedexWebServices::Soap::AddressValidation::NotificationSeverityType
#   notifications - FedexWebServices::Soap::AddressValidation::Notification
#   transactionDetail - FedexWebServices::Soap::AddressValidation::TransactionDetail
#   version - FedexWebServices::Soap::AddressValidation::VersionId
#   replyTimestamp - SOAP::SOAPDateTime
#   addressResults - FedexWebServices::Soap::AddressValidation::AddressValidationResult
class AddressValidationReply
  attr_accessor :highestSeverity
  attr_accessor :notifications
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :replyTimestamp
  attr_accessor :addressResults

  def initialize(highestSeverity = nil, notifications = [], transactionDetail = nil, version = nil, replyTimestamp = nil, addressResults = [])
    @highestSeverity = highestSeverity
    @notifications = notifications
    @transactionDetail = transactionDetail
    @version = version
    @replyTimestamp = replyTimestamp
    @addressResults = addressResults
  end
end

# {http://fedex.com/ws/addressvalidation/v4}AddressValidationRequest
#   webAuthenticationDetail - FedexWebServices::Soap::AddressValidation::WebAuthenticationDetail
#   clientDetail - FedexWebServices::Soap::AddressValidation::ClientDetail
#   transactionDetail - FedexWebServices::Soap::AddressValidation::TransactionDetail
#   version - FedexWebServices::Soap::AddressValidation::VersionId
#   inEffectAsOfTimestamp - SOAP::SOAPDateTime
#   addressesToValidate - FedexWebServices::Soap::AddressValidation::AddressToValidate
class AddressValidationRequest
  attr_accessor :webAuthenticationDetail
  attr_accessor :clientDetail
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :inEffectAsOfTimestamp
  attr_accessor :addressesToValidate

  def initialize(webAuthenticationDetail = nil, clientDetail = nil, transactionDetail = nil, version = nil, inEffectAsOfTimestamp = nil, addressesToValidate = [])
    @webAuthenticationDetail = webAuthenticationDetail
    @clientDetail = clientDetail
    @transactionDetail = transactionDetail
    @version = version
    @inEffectAsOfTimestamp = inEffectAsOfTimestamp
    @addressesToValidate = addressesToValidate
  end
end

# {http://fedex.com/ws/addressvalidation/v4}AddressValidationResult
#   clientReferenceId - SOAP::SOAPString
#   state - FedexWebServices::Soap::AddressValidation::OperationalAddressStateType
#   classification - FedexWebServices::Soap::AddressValidation::FedExAddressClassificationType
#   effectiveContact - FedexWebServices::Soap::AddressValidation::Contact
#   effectiveAddress - FedexWebServices::Soap::AddressValidation::Address
#   parsedAddressPartsDetail - FedexWebServices::Soap::AddressValidation::ParsedAddressPartsDetail
#   attributes - FedexWebServices::Soap::AddressValidation::AddressAttribute
class AddressValidationResult
  attr_accessor :clientReferenceId
  attr_accessor :state
  attr_accessor :classification
  attr_accessor :effectiveContact
  attr_accessor :effectiveAddress
  attr_accessor :parsedAddressPartsDetail
  attr_accessor :attributes

  def initialize(clientReferenceId = nil, state = nil, classification = nil, effectiveContact = nil, effectiveAddress = nil, parsedAddressPartsDetail = nil, attributes = [])
    @clientReferenceId = clientReferenceId
    @state = state
    @classification = classification
    @effectiveContact = effectiveContact
    @effectiveAddress = effectiveAddress
    @parsedAddressPartsDetail = parsedAddressPartsDetail
    @attributes = attributes
  end
end

# {http://fedex.com/ws/addressvalidation/v4}ClientDetail
#   accountNumber - SOAP::SOAPString
#   meterNumber - SOAP::SOAPString
#   integratorId - SOAP::SOAPString
#   localization - FedexWebServices::Soap::AddressValidation::Localization
class ClientDetail
  attr_accessor :accountNumber
  attr_accessor :meterNumber
  attr_accessor :integratorId
  attr_accessor :localization

  def initialize(accountNumber = nil, meterNumber = nil, integratorId = nil, localization = nil)
    @accountNumber = accountNumber
    @meterNumber = meterNumber
    @integratorId = integratorId
    @localization = localization
  end
end

# {http://fedex.com/ws/addressvalidation/v4}Contact
#   contactId - SOAP::SOAPString
#   personName - SOAP::SOAPString
#   title - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   phoneExtension - SOAP::SOAPString
#   tollFreePhoneNumber - SOAP::SOAPString
#   pagerNumber - SOAP::SOAPString
#   faxNumber - SOAP::SOAPString
#   eMailAddress - SOAP::SOAPString
class Contact
  attr_accessor :contactId
  attr_accessor :personName
  attr_accessor :title
  attr_accessor :companyName
  attr_accessor :phoneNumber
  attr_accessor :phoneExtension
  attr_accessor :tollFreePhoneNumber
  attr_accessor :pagerNumber
  attr_accessor :faxNumber
  attr_accessor :eMailAddress

  def initialize(contactId = nil, personName = nil, title = nil, companyName = nil, phoneNumber = nil, phoneExtension = nil, tollFreePhoneNumber = nil, pagerNumber = nil, faxNumber = nil, eMailAddress = nil)
    @contactId = contactId
    @personName = personName
    @title = title
    @companyName = companyName
    @phoneNumber = phoneNumber
    @phoneExtension = phoneExtension
    @tollFreePhoneNumber = tollFreePhoneNumber
    @pagerNumber = pagerNumber
    @faxNumber = faxNumber
    @eMailAddress = eMailAddress
  end
end

# {http://fedex.com/ws/addressvalidation/v4}Localization
#   languageCode - SOAP::SOAPString
#   localeCode - SOAP::SOAPString
class Localization
  attr_accessor :languageCode
  attr_accessor :localeCode

  def initialize(languageCode = nil, localeCode = nil)
    @languageCode = languageCode
    @localeCode = localeCode
  end
end

# {http://fedex.com/ws/addressvalidation/v4}Notification
#   severity - FedexWebServices::Soap::AddressValidation::NotificationSeverityType
#   source - SOAP::SOAPString
#   code - SOAP::SOAPString
#   message - SOAP::SOAPString
#   localizedMessage - SOAP::SOAPString
#   messageParameters - FedexWebServices::Soap::AddressValidation::NotificationParameter
class Notification
  attr_accessor :severity
  attr_accessor :source
  attr_accessor :code
  attr_accessor :message
  attr_accessor :localizedMessage
  attr_accessor :messageParameters

  def initialize(severity = nil, source = nil, code = nil, message = nil, localizedMessage = nil, messageParameters = [])
    @severity = severity
    @source = source
    @code = code
    @message = message
    @localizedMessage = localizedMessage
    @messageParameters = messageParameters
  end
end

# {http://fedex.com/ws/addressvalidation/v4}NotificationParameter
#   id - SOAP::SOAPString
#   value - SOAP::SOAPString
class NotificationParameter
  attr_accessor :id
  attr_accessor :value

  def initialize(id = nil, value = nil)
    @id = id
    @value = value
  end
end

# {http://fedex.com/ws/addressvalidation/v4}ParsedAddressPartsDetail
#   parsedStreetLine - FedexWebServices::Soap::AddressValidation::ParsedStreetLineDetail
#   parsedPostalCode - FedexWebServices::Soap::AddressValidation::ParsedPostalCodeDetail
class ParsedAddressPartsDetail
  attr_accessor :parsedStreetLine
  attr_accessor :parsedPostalCode

  def initialize(parsedStreetLine = nil, parsedPostalCode = nil)
    @parsedStreetLine = parsedStreetLine
    @parsedPostalCode = parsedPostalCode
  end
end

# {http://fedex.com/ws/addressvalidation/v4}ParsedPostalCodeDetail
#   base - SOAP::SOAPString
#   addOn - SOAP::SOAPString
#   deliveryPoint - SOAP::SOAPString
class ParsedPostalCodeDetail
  attr_accessor :base
  attr_accessor :addOn
  attr_accessor :deliveryPoint

  def initialize(base = nil, addOn = nil, deliveryPoint = nil)
    @base = base
    @addOn = addOn
    @deliveryPoint = deliveryPoint
  end
end

# {http://fedex.com/ws/addressvalidation/v4}ParsedStreetLineDetail
#   houseNumber - SOAP::SOAPString
#   preStreetType - SOAP::SOAPString
#   leadingDirectional - SOAP::SOAPString
#   streetName - SOAP::SOAPString
#   streetSuffix - SOAP::SOAPString
#   trailingDirectional - SOAP::SOAPString
#   unitLabel - SOAP::SOAPString
#   unitNumber - SOAP::SOAPString
#   ruralRoute - SOAP::SOAPString
#   pOBox - SOAP::SOAPString
#   building - SOAP::SOAPString
#   organization - SOAP::SOAPString
class ParsedStreetLineDetail
  attr_accessor :houseNumber
  attr_accessor :preStreetType
  attr_accessor :leadingDirectional
  attr_accessor :streetName
  attr_accessor :streetSuffix
  attr_accessor :trailingDirectional
  attr_accessor :unitLabel
  attr_accessor :unitNumber
  attr_accessor :ruralRoute
  attr_accessor :pOBox
  attr_accessor :building
  attr_accessor :organization

  def initialize(houseNumber = nil, preStreetType = nil, leadingDirectional = nil, streetName = nil, streetSuffix = nil, trailingDirectional = nil, unitLabel = nil, unitNumber = nil, ruralRoute = nil, pOBox = nil, building = nil, organization = nil)
    @houseNumber = houseNumber
    @preStreetType = preStreetType
    @leadingDirectional = leadingDirectional
    @streetName = streetName
    @streetSuffix = streetSuffix
    @trailingDirectional = trailingDirectional
    @unitLabel = unitLabel
    @unitNumber = unitNumber
    @ruralRoute = ruralRoute
    @pOBox = pOBox
    @building = building
    @organization = organization
  end
end

# {http://fedex.com/ws/addressvalidation/v4}TransactionDetail
#   customerTransactionId - SOAP::SOAPString
#   localization - FedexWebServices::Soap::AddressValidation::Localization
class TransactionDetail
  attr_accessor :customerTransactionId
  attr_accessor :localization

  def initialize(customerTransactionId = nil, localization = nil)
    @customerTransactionId = customerTransactionId
    @localization = localization
  end
end

# {http://fedex.com/ws/addressvalidation/v4}WebAuthenticationDetail
#   parentCredential - FedexWebServices::Soap::AddressValidation::WebAuthenticationCredential
#   userCredential - FedexWebServices::Soap::AddressValidation::WebAuthenticationCredential
class WebAuthenticationDetail
  attr_accessor :parentCredential
  attr_accessor :userCredential

  def initialize(parentCredential = nil, userCredential = nil)
    @parentCredential = parentCredential
    @userCredential = userCredential
  end
end

# {http://fedex.com/ws/addressvalidation/v4}WebAuthenticationCredential
#   key - SOAP::SOAPString
#   password - SOAP::SOAPString
class WebAuthenticationCredential
  attr_accessor :key
  attr_accessor :password

  def initialize(key = nil, password = nil)
    @key = key
    @password = password
  end
end

# {http://fedex.com/ws/addressvalidation/v4}VersionId
#   serviceId - SOAP::SOAPString
#   major - SOAP::SOAPInt
#   intermediate - SOAP::SOAPInt
#   minor - SOAP::SOAPInt
class VersionId
  attr_accessor :serviceId
  attr_accessor :major
  attr_accessor :intermediate
  attr_accessor :minor

  def initialize(serviceId = nil, major = nil, intermediate = nil, minor = nil)
    @serviceId = serviceId
    @major = major
    @intermediate = intermediate
    @minor = minor
  end
end

# {http://fedex.com/ws/addressvalidation/v4}AutoConfigurationType
class AutoConfigurationType < ::String
  ENTERPRISE = new("ENTERPRISE")
  SHIPPING_SERVICE_PROVIDER = new("SHIPPING_SERVICE_PROVIDER")
  SOFTWARE_ONLY = new("SOFTWARE_ONLY")
  TRADITIONAL = new("TRADITIONAL")
end

# {http://fedex.com/ws/addressvalidation/v4}FedExAddressClassificationType
class FedExAddressClassificationType < ::String
  BUSINESS = new("BUSINESS")
  MIXED = new("MIXED")
  RESIDENTIAL = new("RESIDENTIAL")
  UNKNOWN = new("UNKNOWN")
end

# {http://fedex.com/ws/addressvalidation/v4}NotificationSeverityType
class NotificationSeverityType < ::String
  ERROR = new("ERROR")
  FAILURE = new("FAILURE")
  NOTE = new("NOTE")
  SUCCESS = new("SUCCESS")
  WARNING = new("WARNING")
end

# {http://fedex.com/ws/addressvalidation/v4}OperationalAddressStateType
class OperationalAddressStateType < ::String
  NORMALIZED = new("NORMALIZED")
  RAW = new("RAW")
  STANDARDIZED = new("STANDARDIZED")
end


end; end; end
