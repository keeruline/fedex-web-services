# encoding: UTF-8
# Generated by wsdl2ruby (SOAP4R-NG/2.0.4)
require 'xsd/qname'

module FedexWebServices; module Soap; module Close


# {http://fedex.com/ws/close/v5}ClientDetail
#   accountNumber - SOAP::SOAPString
#   meterNumber - SOAP::SOAPString
#   integratorId - SOAP::SOAPString
#   localization - FedexWebServices::Soap::Close::Localization
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

# {http://fedex.com/ws/close/v5}CloseDocument
#   type - FedexWebServices::Soap::Close::CloseDocumentType
#   shippingCycle - SOAP::SOAPString
#   shippingDocumentDisposition - FedexWebServices::Soap::Close::ShippingDocumentDispositionType
#   accessReference - SOAP::SOAPString
#   resolution - SOAP::SOAPNonNegativeInteger
#   copiesToPrint - SOAP::SOAPNonNegativeInteger
#   parts - FedexWebServices::Soap::Close::ShippingDocumentPart
class CloseDocument
  attr_accessor :type
  attr_accessor :shippingCycle
  attr_accessor :shippingDocumentDisposition
  attr_accessor :accessReference
  attr_accessor :resolution
  attr_accessor :copiesToPrint
  attr_accessor :parts

  def initialize(type = nil, shippingCycle = nil, shippingDocumentDisposition = nil, accessReference = nil, resolution = nil, copiesToPrint = nil, parts = [])
    @type = type
    @shippingCycle = shippingCycle
    @shippingDocumentDisposition = shippingDocumentDisposition
    @accessReference = accessReference
    @resolution = resolution
    @copiesToPrint = copiesToPrint
    @parts = parts
  end
end

# {http://fedex.com/ws/close/v5}CloseDocumentFormat
#   dispositions - FedexWebServices::Soap::Close::ShippingDocumentDispositionDetail
#   topOfPageOffset - FedexWebServices::Soap::Close::LinearMeasure
#   imageType - FedexWebServices::Soap::Close::ShippingDocumentImageType
#   stockType - FedexWebServices::Soap::Close::ShippingDocumentStockType
#   provideInstructions - SOAP::SOAPBoolean
#   localization - FedexWebServices::Soap::Close::Localization
class CloseDocumentFormat
  attr_accessor :dispositions
  attr_accessor :topOfPageOffset
  attr_accessor :imageType
  attr_accessor :stockType
  attr_accessor :provideInstructions
  attr_accessor :localization

  def initialize(dispositions = [], topOfPageOffset = nil, imageType = nil, stockType = nil, provideInstructions = nil, localization = nil)
    @dispositions = dispositions
    @topOfPageOffset = topOfPageOffset
    @imageType = imageType
    @stockType = stockType
    @provideInstructions = provideInstructions
    @localization = localization
  end
end

# {http://fedex.com/ws/close/v5}CloseDocumentSpecification
#   closeDocumentTypes - FedexWebServices::Soap::Close::CloseDocumentType
#   detailedDeliveryManifestDetail - FedexWebServices::Soap::Close::DetailedDeliveryManifestDetail
#   hazardousMaterialsCertificationDetail - FedexWebServices::Soap::Close::HazardousMaterialsCertificationDetail
#   manifestDetail - FedexWebServices::Soap::Close::ManifestDetail
#   op950Detail - FedexWebServices::Soap::Close::Op950Detail
class CloseDocumentSpecification
  attr_accessor :closeDocumentTypes
  attr_accessor :detailedDeliveryManifestDetail
  attr_accessor :hazardousMaterialsCertificationDetail
  attr_accessor :manifestDetail
  attr_accessor :op950Detail

  def initialize(closeDocumentTypes = [], detailedDeliveryManifestDetail = nil, hazardousMaterialsCertificationDetail = nil, manifestDetail = nil, op950Detail = nil)
    @closeDocumentTypes = closeDocumentTypes
    @detailedDeliveryManifestDetail = detailedDeliveryManifestDetail
    @hazardousMaterialsCertificationDetail = hazardousMaterialsCertificationDetail
    @manifestDetail = manifestDetail
    @op950Detail = op950Detail
  end
end

# {http://fedex.com/ws/close/v5}CloseManifestReferenceDetail
#   type - FedexWebServices::Soap::Close::CustomerReferenceType
#   value - SOAP::SOAPString
class CloseManifestReferenceDetail
  attr_accessor :type
  attr_accessor :value

  def initialize(type = nil, value = nil)
    @type = type
    @value = value
  end
end

# {http://fedex.com/ws/close/v5}CloseSmartPostDetail
#   hubId - SOAP::SOAPString
#   customerId - SOAP::SOAPString
#   customerManifestId - SOAP::SOAPString
#   destinationCountryCode - SOAP::SOAPString
#   pickupCarrier - FedexWebServices::Soap::Close::CarrierCodeType
class CloseSmartPostDetail
  attr_accessor :hubId
  attr_accessor :customerId
  attr_accessor :customerManifestId
  attr_accessor :destinationCountryCode
  attr_accessor :pickupCarrier

  def initialize(hubId = nil, customerId = nil, customerManifestId = nil, destinationCountryCode = nil, pickupCarrier = nil)
    @hubId = hubId
    @customerId = customerId
    @customerManifestId = customerManifestId
    @destinationCountryCode = destinationCountryCode
    @pickupCarrier = pickupCarrier
  end
end

# {http://fedex.com/ws/close/v5}CloseWithDocumentsProcessingOptionsRequested
class CloseWithDocumentsProcessingOptionsRequested < ::Array
end

# {http://fedex.com/ws/close/v5}CloseWithDocumentsReply
#   highestSeverity - FedexWebServices::Soap::Close::NotificationSeverityType
#   notifications - FedexWebServices::Soap::Close::Notification
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   documents - FedexWebServices::Soap::Close::CloseDocument
class CloseWithDocumentsReply
  attr_accessor :highestSeverity
  attr_accessor :notifications
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :documents

  def initialize(highestSeverity = nil, notifications = [], transactionDetail = nil, version = nil, documents = [])
    @highestSeverity = highestSeverity
    @notifications = notifications
    @transactionDetail = transactionDetail
    @version = version
    @documents = documents
  end
end

# {http://fedex.com/ws/close/v5}CloseWithDocumentsRequest
#   webAuthenticationDetail - FedexWebServices::Soap::Close::WebAuthenticationDetail
#   clientDetail - FedexWebServices::Soap::Close::ClientDetail
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   actionType - FedexWebServices::Soap::Close::CloseActionType
#   processingOptions - FedexWebServices::Soap::Close::CloseWithDocumentsProcessingOptionsRequested
#   carrierCode - FedexWebServices::Soap::Close::CarrierCodeType
#   shippingCycle - SOAP::SOAPString
#   reprintCloseDate - SOAP::SOAPDateTime
#   manifestReferenceDetail - FedexWebServices::Soap::Close::CloseManifestReferenceDetail
#   smartPostDetail - FedexWebServices::Soap::Close::CloseSmartPostDetail
#   closeDocumentSpecification - FedexWebServices::Soap::Close::CloseDocumentSpecification
class CloseWithDocumentsRequest
  attr_accessor :webAuthenticationDetail
  attr_accessor :clientDetail
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :actionType
  attr_accessor :processingOptions
  attr_accessor :carrierCode
  attr_accessor :shippingCycle
  attr_accessor :reprintCloseDate
  attr_accessor :manifestReferenceDetail
  attr_accessor :smartPostDetail
  attr_accessor :closeDocumentSpecification

  def initialize(webAuthenticationDetail = nil, clientDetail = nil, transactionDetail = nil, version = nil, actionType = nil, processingOptions = nil, carrierCode = nil, shippingCycle = nil, reprintCloseDate = nil, manifestReferenceDetail = nil, smartPostDetail = nil, closeDocumentSpecification = nil)
    @webAuthenticationDetail = webAuthenticationDetail
    @clientDetail = clientDetail
    @transactionDetail = transactionDetail
    @version = version
    @actionType = actionType
    @processingOptions = processingOptions
    @carrierCode = carrierCode
    @shippingCycle = shippingCycle
    @reprintCloseDate = reprintCloseDate
    @manifestReferenceDetail = manifestReferenceDetail
    @smartPostDetail = smartPostDetail
    @closeDocumentSpecification = closeDocumentSpecification
  end
end

# {http://fedex.com/ws/close/v5}CustomerImageUsage
#   type - FedexWebServices::Soap::Close::CustomerImageUsageType
#   id - FedexWebServices::Soap::Close::ImageId
#   internalId - SOAP::SOAPString
#   internalImageType - FedexWebServices::Soap::Close::InternalImageType
class CustomerImageUsage
  attr_accessor :type
  attr_accessor :id
  attr_accessor :internalId
  attr_accessor :internalImageType

  def initialize(type = nil, id = nil, internalId = nil, internalImageType = nil)
    @type = type
    @id = id
    @internalId = internalId
    @internalImageType = internalImageType
  end
end

# {http://fedex.com/ws/close/v5}DetailedDeliveryManifestDetail
#   format - FedexWebServices::Soap::Close::CloseDocumentFormat
#   clientTimeZoneOffset - SOAP::SOAPString
class DetailedDeliveryManifestDetail
  attr_accessor :format
  attr_accessor :clientTimeZoneOffset

  def initialize(format = nil, clientTimeZoneOffset = nil)
    @format = format
    @clientTimeZoneOffset = clientTimeZoneOffset
  end
end

# {http://fedex.com/ws/close/v5}GroundCloseDocumentsReply
#   highestSeverity - FedexWebServices::Soap::Close::NotificationSeverityType
#   notifications - FedexWebServices::Soap::Close::Notification
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   closeDocuments - FedexWebServices::Soap::Close::CloseDocument
class GroundCloseDocumentsReply
  attr_accessor :highestSeverity
  attr_accessor :notifications
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :closeDocuments

  def initialize(highestSeverity = nil, notifications = [], transactionDetail = nil, version = nil, closeDocuments = [])
    @highestSeverity = highestSeverity
    @notifications = notifications
    @transactionDetail = transactionDetail
    @version = version
    @closeDocuments = closeDocuments
  end
end

# {http://fedex.com/ws/close/v5}GroundCloseReply
#   highestSeverity - FedexWebServices::Soap::Close::NotificationSeverityType
#   notifications - FedexWebServices::Soap::Close::Notification
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   codReport - SOAP::SOAPBase64
#   hazMatCertificate - SOAP::SOAPBase64
#   manifest - FedexWebServices::Soap::Close::ManifestFile
#   multiweightReport - SOAP::SOAPBase64
class GroundCloseReply
  attr_accessor :highestSeverity
  attr_accessor :notifications
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :codReport
  attr_accessor :hazMatCertificate
  attr_accessor :manifest
  attr_accessor :multiweightReport

  def initialize(highestSeverity = nil, notifications = [], transactionDetail = nil, version = nil, codReport = nil, hazMatCertificate = nil, manifest = nil, multiweightReport = nil)
    @highestSeverity = highestSeverity
    @notifications = notifications
    @transactionDetail = transactionDetail
    @version = version
    @codReport = codReport
    @hazMatCertificate = hazMatCertificate
    @manifest = manifest
    @multiweightReport = multiweightReport
  end
end

# {http://fedex.com/ws/close/v5}GroundCloseReportsReprintReply
#   highestSeverity - FedexWebServices::Soap::Close::NotificationSeverityType
#   notifications - FedexWebServices::Soap::Close::Notification
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   codReport - SOAP::SOAPBase64
#   hazMatCertificate - SOAP::SOAPBase64
#   manifests - FedexWebServices::Soap::Close::ManifestFile
class GroundCloseReportsReprintReply
  attr_accessor :highestSeverity
  attr_accessor :notifications
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :codReport
  attr_accessor :hazMatCertificate
  attr_accessor :manifests

  def initialize(highestSeverity = nil, notifications = [], transactionDetail = nil, version = nil, codReport = nil, hazMatCertificate = nil, manifests = [])
    @highestSeverity = highestSeverity
    @notifications = notifications
    @transactionDetail = transactionDetail
    @version = version
    @codReport = codReport
    @hazMatCertificate = hazMatCertificate
    @manifests = manifests
  end
end

# {http://fedex.com/ws/close/v5}GroundCloseReportsReprintRequest
#   webAuthenticationDetail - FedexWebServices::Soap::Close::WebAuthenticationDetail
#   clientDetail - FedexWebServices::Soap::Close::ClientDetail
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   reportDate - SOAP::SOAPDate
#   trackingNumber - SOAP::SOAPString
#   closeReportType - FedexWebServices::Soap::Close::CloseReportType
class GroundCloseReportsReprintRequest
  attr_accessor :webAuthenticationDetail
  attr_accessor :clientDetail
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :reportDate
  attr_accessor :trackingNumber
  attr_accessor :closeReportType

  def initialize(webAuthenticationDetail = nil, clientDetail = nil, transactionDetail = nil, version = nil, reportDate = nil, trackingNumber = nil, closeReportType = nil)
    @webAuthenticationDetail = webAuthenticationDetail
    @clientDetail = clientDetail
    @transactionDetail = transactionDetail
    @version = version
    @reportDate = reportDate
    @trackingNumber = trackingNumber
    @closeReportType = closeReportType
  end
end

# {http://fedex.com/ws/close/v5}GroundCloseRequest
#   webAuthenticationDetail - FedexWebServices::Soap::Close::WebAuthenticationDetail
#   clientDetail - FedexWebServices::Soap::Close::ClientDetail
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   closeGrouping - FedexWebServices::Soap::Close::CloseGroupingType
#   timeUpToWhichShipmentsAreToBeClosed - SOAP::SOAPDateTime
#   manifestReferenceDetail - FedexWebServices::Soap::Close::CloseManifestReferenceDetail
class GroundCloseRequest
  attr_accessor :webAuthenticationDetail
  attr_accessor :clientDetail
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :closeGrouping
  attr_accessor :timeUpToWhichShipmentsAreToBeClosed
  attr_accessor :manifestReferenceDetail

  def initialize(webAuthenticationDetail = nil, clientDetail = nil, transactionDetail = nil, version = nil, closeGrouping = nil, timeUpToWhichShipmentsAreToBeClosed = nil, manifestReferenceDetail = nil)
    @webAuthenticationDetail = webAuthenticationDetail
    @clientDetail = clientDetail
    @transactionDetail = transactionDetail
    @version = version
    @closeGrouping = closeGrouping
    @timeUpToWhichShipmentsAreToBeClosed = timeUpToWhichShipmentsAreToBeClosed
    @manifestReferenceDetail = manifestReferenceDetail
  end
end

# {http://fedex.com/ws/close/v5}GroundCloseWithDocumentsRequest
#   webAuthenticationDetail - FedexWebServices::Soap::Close::WebAuthenticationDetail
#   clientDetail - FedexWebServices::Soap::Close::ClientDetail
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   closeDate - SOAP::SOAPDate
#   closeDocumentSpecification - FedexWebServices::Soap::Close::CloseDocumentSpecification
class GroundCloseWithDocumentsRequest
  attr_accessor :webAuthenticationDetail
  attr_accessor :clientDetail
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :closeDate
  attr_accessor :closeDocumentSpecification

  def initialize(webAuthenticationDetail = nil, clientDetail = nil, transactionDetail = nil, version = nil, closeDate = nil, closeDocumentSpecification = nil)
    @webAuthenticationDetail = webAuthenticationDetail
    @clientDetail = clientDetail
    @transactionDetail = transactionDetail
    @version = version
    @closeDate = closeDate
    @closeDocumentSpecification = closeDocumentSpecification
  end
end

# {http://fedex.com/ws/close/v5}HazardousMaterialsCertificationDetail
#   format - FedexWebServices::Soap::Close::CloseDocumentFormat
class HazardousMaterialsCertificationDetail
  attr_accessor :format

  def initialize(format = nil)
    @format = format
  end
end

# {http://fedex.com/ws/close/v5}LinearMeasure
#   value - SOAP::SOAPDecimal
#   units - FedexWebServices::Soap::Close::LinearUnits
class LinearMeasure
  attr_accessor :value
  attr_accessor :units

  def initialize(value = nil, units = nil)
    @value = value
    @units = units
  end
end

# {http://fedex.com/ws/close/v5}Localization
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

# {http://fedex.com/ws/close/v5}ManifestDetail
#   format - FedexWebServices::Soap::Close::CloseDocumentFormat
class ManifestDetail
  attr_accessor :format

  def initialize(format = nil)
    @format = format
  end
end

# {http://fedex.com/ws/close/v5}ManifestFile
#   fileName - SOAP::SOAPString
#   file - SOAP::SOAPBase64
class ManifestFile
  attr_accessor :fileName
  attr_accessor :file

  def initialize(fileName = nil, file = nil)
    @fileName = fileName
    @file = file
  end
end

# {http://fedex.com/ws/close/v5}Notification
#   severity - FedexWebServices::Soap::Close::NotificationSeverityType
#   source - SOAP::SOAPString
#   code - SOAP::SOAPString
#   message - SOAP::SOAPString
#   localizedMessage - SOAP::SOAPString
#   messageParameters - FedexWebServices::Soap::Close::NotificationParameter
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

# {http://fedex.com/ws/close/v5}NotificationParameter
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

# {http://fedex.com/ws/close/v5}Op950Detail
#   format - FedexWebServices::Soap::Close::CloseDocumentFormat
#   customerImageUsages - FedexWebServices::Soap::Close::CustomerImageUsage
#   signatureName - SOAP::SOAPString
class Op950Detail
  attr_accessor :format
  attr_accessor :customerImageUsages
  attr_accessor :signatureName

  def initialize(format = nil, customerImageUsages = [], signatureName = nil)
    @format = format
    @customerImageUsages = customerImageUsages
    @signatureName = signatureName
  end
end

# {http://fedex.com/ws/close/v5}ReprintGroundCloseDocumentsRequest
#   webAuthenticationDetail - FedexWebServices::Soap::Close::WebAuthenticationDetail
#   clientDetail - FedexWebServices::Soap::Close::ClientDetail
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   reprintOption - FedexWebServices::Soap::Close::ReprintGroundCloseDocumentsOptionType
#   closeDate - SOAP::SOAPDate
#   trackingNumber - SOAP::SOAPString
#   closeDocumentSpecification - FedexWebServices::Soap::Close::CloseDocumentSpecification
class ReprintGroundCloseDocumentsRequest
  attr_accessor :webAuthenticationDetail
  attr_accessor :clientDetail
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :reprintOption
  attr_accessor :closeDate
  attr_accessor :trackingNumber
  attr_accessor :closeDocumentSpecification

  def initialize(webAuthenticationDetail = nil, clientDetail = nil, transactionDetail = nil, version = nil, reprintOption = nil, closeDate = nil, trackingNumber = nil, closeDocumentSpecification = nil)
    @webAuthenticationDetail = webAuthenticationDetail
    @clientDetail = clientDetail
    @transactionDetail = transactionDetail
    @version = version
    @reprintOption = reprintOption
    @closeDate = closeDate
    @trackingNumber = trackingNumber
    @closeDocumentSpecification = closeDocumentSpecification
  end
end

# {http://fedex.com/ws/close/v5}ShippingDocumentDispositionDetail
#   dispositionType - FedexWebServices::Soap::Close::ShippingDocumentDispositionType
#   grouping - FedexWebServices::Soap::Close::ShippingDocumentGroupingType
#   storageDetail - FedexWebServices::Soap::Close::ShippingDocumentStorageDetail
#   eMailDetail - FedexWebServices::Soap::Close::ShippingDocumentEMailDetail
#   printDetail - FedexWebServices::Soap::Close::ShippingDocumentPrintDetail
class ShippingDocumentDispositionDetail
  attr_accessor :dispositionType
  attr_accessor :grouping
  attr_accessor :storageDetail
  attr_accessor :eMailDetail
  attr_accessor :printDetail

  def initialize(dispositionType = nil, grouping = nil, storageDetail = nil, eMailDetail = nil, printDetail = nil)
    @dispositionType = dispositionType
    @grouping = grouping
    @storageDetail = storageDetail
    @eMailDetail = eMailDetail
    @printDetail = printDetail
  end
end

# {http://fedex.com/ws/close/v5}ShippingDocumentEMailDetail
#   eMailRecipients - FedexWebServices::Soap::Close::ShippingDocumentEMailRecipient
#   grouping - FedexWebServices::Soap::Close::ShippingDocumentEMailGroupingType
#   localization - FedexWebServices::Soap::Close::Localization
class ShippingDocumentEMailDetail
  attr_accessor :eMailRecipients
  attr_accessor :grouping
  attr_accessor :localization

  def initialize(eMailRecipients = [], grouping = nil, localization = nil)
    @eMailRecipients = eMailRecipients
    @grouping = grouping
    @localization = localization
  end
end

# {http://fedex.com/ws/close/v5}ShippingDocumentEMailRecipient
#   recipientType - FedexWebServices::Soap::Close::EMailNotificationRecipientType
#   address - SOAP::SOAPString
class ShippingDocumentEMailRecipient
  attr_accessor :recipientType
  attr_accessor :address

  def initialize(recipientType = nil, address = nil)
    @recipientType = recipientType
    @address = address
  end
end

# {http://fedex.com/ws/close/v5}ShippingDocumentPart
#   documentPartSequenceNumber - SOAP::SOAPPositiveInteger
#   image - SOAP::SOAPBase64
class ShippingDocumentPart
  attr_accessor :documentPartSequenceNumber
  attr_accessor :image

  def initialize(documentPartSequenceNumber = nil, image = nil)
    @documentPartSequenceNumber = documentPartSequenceNumber
    @image = image
  end
end

# {http://fedex.com/ws/close/v5}ShippingDocumentPrintDetail
#   printerId - SOAP::SOAPString
class ShippingDocumentPrintDetail
  attr_accessor :printerId

  def initialize(printerId = nil)
    @printerId = printerId
  end
end

# {http://fedex.com/ws/close/v5}ShippingDocumentStorageDetail
#   filePath - SOAP::SOAPString
#   fileNaming - FedexWebServices::Soap::Close::ShippingDocumentNamingType
#   fileSuffix - SOAP::SOAPString
class ShippingDocumentStorageDetail
  attr_accessor :filePath
  attr_accessor :fileNaming
  attr_accessor :fileSuffix

  def initialize(filePath = nil, fileNaming = nil, fileSuffix = nil)
    @filePath = filePath
    @fileNaming = fileNaming
    @fileSuffix = fileSuffix
  end
end

# {http://fedex.com/ws/close/v5}SmartPostCloseReply
#   highestSeverity - FedexWebServices::Soap::Close::NotificationSeverityType
#   notifications - FedexWebServices::Soap::Close::Notification
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
class SmartPostCloseReply
  attr_accessor :highestSeverity
  attr_accessor :notifications
  attr_accessor :transactionDetail
  attr_accessor :version

  def initialize(highestSeverity = nil, notifications = [], transactionDetail = nil, version = nil)
    @highestSeverity = highestSeverity
    @notifications = notifications
    @transactionDetail = transactionDetail
    @version = version
  end
end

# {http://fedex.com/ws/close/v5}SmartPostCloseRequest
#   webAuthenticationDetail - FedexWebServices::Soap::Close::WebAuthenticationDetail
#   clientDetail - FedexWebServices::Soap::Close::ClientDetail
#   transactionDetail - FedexWebServices::Soap::Close::TransactionDetail
#   version - FedexWebServices::Soap::Close::VersionId
#   hubId - SOAP::SOAPString
#   customerManifestId - SOAP::SOAPString
#   destinationCountryCode - SOAP::SOAPString
#   pickUpCarrier - FedexWebServices::Soap::Close::CarrierCodeType
#   manifestReferenceDetail - FedexWebServices::Soap::Close::CloseManifestReferenceDetail
class SmartPostCloseRequest
  attr_accessor :webAuthenticationDetail
  attr_accessor :clientDetail
  attr_accessor :transactionDetail
  attr_accessor :version
  attr_accessor :hubId
  attr_accessor :customerManifestId
  attr_accessor :destinationCountryCode
  attr_accessor :pickUpCarrier
  attr_accessor :manifestReferenceDetail

  def initialize(webAuthenticationDetail = nil, clientDetail = nil, transactionDetail = nil, version = nil, hubId = nil, customerManifestId = nil, destinationCountryCode = nil, pickUpCarrier = nil, manifestReferenceDetail = nil)
    @webAuthenticationDetail = webAuthenticationDetail
    @clientDetail = clientDetail
    @transactionDetail = transactionDetail
    @version = version
    @hubId = hubId
    @customerManifestId = customerManifestId
    @destinationCountryCode = destinationCountryCode
    @pickUpCarrier = pickUpCarrier
    @manifestReferenceDetail = manifestReferenceDetail
  end
end

# {http://fedex.com/ws/close/v5}TransactionDetail
#   customerTransactionId - SOAP::SOAPString
#   localization - FedexWebServices::Soap::Close::Localization
class TransactionDetail
  attr_accessor :customerTransactionId
  attr_accessor :localization

  def initialize(customerTransactionId = nil, localization = nil)
    @customerTransactionId = customerTransactionId
    @localization = localization
  end
end

# {http://fedex.com/ws/close/v5}WebAuthenticationDetail
#   parentCredential - FedexWebServices::Soap::Close::WebAuthenticationCredential
#   userCredential - FedexWebServices::Soap::Close::WebAuthenticationCredential
class WebAuthenticationDetail
  attr_accessor :parentCredential
  attr_accessor :userCredential

  def initialize(parentCredential = nil, userCredential = nil)
    @parentCredential = parentCredential
    @userCredential = userCredential
  end
end

# {http://fedex.com/ws/close/v5}WebAuthenticationCredential
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

# {http://fedex.com/ws/close/v5}VersionId
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

# {http://fedex.com/ws/close/v5}CarrierCodeType
class CarrierCodeType < ::String
  FDXC = new("FDXC")
  FDXE = new("FDXE")
  FDXG = new("FDXG")
  FXCC = new("FXCC")
  FXFR = new("FXFR")
  FXSP = new("FXSP")
end

# {http://fedex.com/ws/close/v5}CloseActionType
class CloseActionType < ::String
  CLOSE = new("CLOSE")
  PREVIEW_CLOSE_DOCUMENTS = new("PREVIEW_CLOSE_DOCUMENTS")
  REPRINT_CLOSE_DOCUMENTS = new("REPRINT_CLOSE_DOCUMENTS")
end

# {http://fedex.com/ws/close/v5}CloseDocumentType
class CloseDocumentType < ::String
  COD_REPORT = new("COD_REPORT")
  DETAILED_DELIVERY_MANIFEST = new("DETAILED_DELIVERY_MANIFEST")
  HAZARDOUS_MATERIALS_CERTIFICATION = new("HAZARDOUS_MATERIALS_CERTIFICATION")
  MANIFEST = new("MANIFEST")
  MULTIWEIGHT_REPORT = new("MULTIWEIGHT_REPORT")
  OP_950 = new("OP_950")
end

# {http://fedex.com/ws/close/v5}CloseGroupingType
class CloseGroupingType < ::String
  MANIFEST_REFERENCE = new("MANIFEST_REFERENCE")
  SHIPPING_CYCLE = new("SHIPPING_CYCLE")
  TIME = new("TIME")
end

# {http://fedex.com/ws/close/v5}CloseReportType
class CloseReportType < ::String
  ALL = new("ALL")
  COD = new("COD")
  HAZMAT = new("HAZMAT")
  MANIFEST = new("MANIFEST")
  MULTIWEIGHT = new("MULTIWEIGHT")
end

# {http://fedex.com/ws/close/v5}CloseWithDocumentsProcessingOptionType
class CloseWithDocumentsProcessingOptionType < ::String
  ERROR_IF_OPEN_SHIPMENTS_FOUND = new("ERROR_IF_OPEN_SHIPMENTS_FOUND")
  WARNING_IF_OPEN_SHIPMENTS_FOUND = new("WARNING_IF_OPEN_SHIPMENTS_FOUND")
end

# {http://fedex.com/ws/close/v5}CustomerImageUsageType
class CustomerImageUsageType < ::String
  LETTER_HEAD = new("LETTER_HEAD")
  SIGNATURE = new("SIGNATURE")
end

# {http://fedex.com/ws/close/v5}CustomerReferenceType
class CustomerReferenceType < ::String
  BILL_OF_LADING = new("BILL_OF_LADING")
  CUSTOMER_REFERENCE = new("CUSTOMER_REFERENCE")
  DEPARTMENT_NUMBER = new("DEPARTMENT_NUMBER")
  ELECTRONIC_PRODUCT_CODE = new("ELECTRONIC_PRODUCT_CODE")
  INTRACOUNTRY_REGULATORY_REFERENCE = new("INTRACOUNTRY_REGULATORY_REFERENCE")
  INVOICE_NUMBER = new("INVOICE_NUMBER")
  PACKING_SLIP_NUMBER = new("PACKING_SLIP_NUMBER")
  P_O_NUMBER = new("P_O_NUMBER")
  RMA_ASSOCIATION = new("RMA_ASSOCIATION")
  SHIPMENT_INTEGRITY = new("SHIPMENT_INTEGRITY")
  STORE_NUMBER = new("STORE_NUMBER")
end

# {http://fedex.com/ws/close/v5}EMailNotificationRecipientType
class EMailNotificationRecipientType < ::String
  BROKER = new("BROKER")
  OTHER = new("OTHER")
  RECIPIENT = new("RECIPIENT")
  SHIPPER = new("SHIPPER")
  THIRD_PARTY = new("THIRD_PARTY")
end

# {http://fedex.com/ws/close/v5}ImageId
class ImageId < ::String
  IMAGE_1 = new("IMAGE_1")
  IMAGE_2 = new("IMAGE_2")
  IMAGE_3 = new("IMAGE_3")
  IMAGE_4 = new("IMAGE_4")
  IMAGE_5 = new("IMAGE_5")
end

# {http://fedex.com/ws/close/v5}InternalImageType
class InternalImageType < ::String
  LETTER_HEAD = new("LETTER_HEAD")
  SIGNATURE = new("SIGNATURE")
end

# {http://fedex.com/ws/close/v5}LinearUnits
class LinearUnits < ::String
  CM = new("CM")
  IN = new("IN")
end

# {http://fedex.com/ws/close/v5}NotificationSeverityType
class NotificationSeverityType < ::String
  ERROR = new("ERROR")
  FAILURE = new("FAILURE")
  NOTE = new("NOTE")
  SUCCESS = new("SUCCESS")
  WARNING = new("WARNING")
end

# {http://fedex.com/ws/close/v5}ReprintGroundCloseDocumentsOptionType
class ReprintGroundCloseDocumentsOptionType < ::String
  BY_SHIP_DATE = new("BY_SHIP_DATE")
  BY_TRACKING_NUMBER = new("BY_TRACKING_NUMBER")
end

# {http://fedex.com/ws/close/v5}ShippingDocumentDispositionType
class ShippingDocumentDispositionType < ::String
  CONFIRMED = new("CONFIRMED")
  DEFERRED_QUEUED = new("DEFERRED_QUEUED")
  DEFERRED_RETURNED = new("DEFERRED_RETURNED")
  DEFERRED_STORED = new("DEFERRED_STORED")
  EMAILED = new("EMAILED")
  QUEUED = new("QUEUED")
  RETURNED = new("RETURNED")
  STORED = new("STORED")
end

# {http://fedex.com/ws/close/v5}ShippingDocumentEMailGroupingType
class ShippingDocumentEMailGroupingType < ::String
  BY_RECIPIENT = new("BY_RECIPIENT")
  NONE = new("NONE")
end

# {http://fedex.com/ws/close/v5}ShippingDocumentGroupingType
class ShippingDocumentGroupingType < ::String
  CONSOLIDATED_BY_DOCUMENT_TYPE = new("CONSOLIDATED_BY_DOCUMENT_TYPE")
  CONSOLIDATED_BY_IMAGE_TYPE = new("CONSOLIDATED_BY_IMAGE_TYPE")
  INDIVIDUAL = new("INDIVIDUAL")
end

# {http://fedex.com/ws/close/v5}ShippingDocumentImageType
class ShippingDocumentImageType < ::String
  DIB = new("DIB")
  DOC = new("DOC")
  DPL = new("DPL")
  EPL2 = new("EPL2")
  GIF = new("GIF")
  PDF = new("PDF")
  PNG = new("PNG")
  RTF = new("RTF")
  TEXT = new("TEXT")
  ZPLII = new("ZPLII")
end

# {http://fedex.com/ws/close/v5}ShippingDocumentNamingType
class ShippingDocumentNamingType < ::String
  FAST = new("FAST")
  LEGACY_FXRS = new("LEGACY_FXRS")
end

# {http://fedex.com/ws/close/v5}ShippingDocumentStockType
class ShippingDocumentStockType < ::String
  OP_900_LG = new("OP_900_LG")
  OP_900_LG_B = new("OP_900_LG_B")
  OP_900_LL = new("OP_900_LL")
  OP_900_LL_B = new("OP_900_LL_B")
  OP_950 = new("OP_950")
  PAPER_4X6 = new("PAPER_4X6")
  PAPER_4_PER_PAGE_PORTRAIT = new("PAPER_4_PER_PAGE_PORTRAIT")
  PAPER_LETTER = new("PAPER_LETTER")
  STOCK_4X6 = new("STOCK_4X6")
  STOCK_4X675_LEADING_DOC_TAB = new("STOCK_4X6.75_LEADING_DOC_TAB")
  STOCK_4X675_TRAILING_DOC_TAB = new("STOCK_4X6.75_TRAILING_DOC_TAB")
  STOCK_4X8 = new("STOCK_4X8")
  STOCK_4X9_LEADING_DOC_TAB = new("STOCK_4X9_LEADING_DOC_TAB")
  STOCK_4X9_TRAILING_DOC_TAB = new("STOCK_4X9_TRAILING_DOC_TAB")
end


end; end; end
