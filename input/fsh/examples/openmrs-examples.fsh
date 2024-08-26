Instance: OpenMrsActiveServiceRequestExample
InstanceOf: OpenMrsServiceRequest
Usage: #example
Title: "OpenMRS Service Request - Lab Order (Active)"
Description: "Represents an active service request for the lab order."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.gov.bw/fhir/identifier/service-request-id"
* identifier[PLAC].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* status = #active
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076364
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(OpenMrsAvailableSpecimenForActiveRequestsExample)

Instance: OpenMrsRevokedServiceRequestExample
InstanceOf: OpenMrsServiceRequest
Usage: #example
Title: "OpenMRS Service Request - Lab Order (Revoked)"
Description: "Represents a service request that has been revoked before it could be fully attended to."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.gov.bw/fhir/identifier/service-request-id"
* identifier[PLAC].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* status = #revoked
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076364
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(OpenMrsAvailableSpecimenForRevokedRequestExample)

Instance: OpenMrsCompletedServiceRequestExample
InstanceOf: OpenMrsServiceRequest
Usage: #example
Title: "OpenMRS Service Request - Lab Order (Completed)"
Description: "Represents a completed service request for the lab order."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.gov.bw/fhir/identifier/service-request-id"
* identifier[PLAC].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* status = #completed
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076364
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(OpenMrsAvailableSpecimenForCompletedRequestsExample)

Instance: OpenMrsAvailableSpecimenForActiveRequestsExample
InstanceOf: OpenMrsUATSpecimen
Usage: #example
Title: "OpenMRS Specimen - Used During Testing (Order is Active)"
Description: "The specimen associated with the lab order that will be used during testing."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.gov.bw/fhir/identifier/specimen-id"
* identifier[USID].type = http://terminology.hl7.org/CodeSystem/v2-0203#USID
* type = $SCT#119361006
* type.text = "Specimen Type"
* subject = Reference(GeneralPatientExample)
* collection.collectedDateTime = "2022-07-28"
* receivedTime = "2022-07-28"
* status = #available
* request = Reference(OpenMrsActiveServiceRequestExample)

Instance: OpenMrsAvailableSpecimenForRevokedRequestExample
InstanceOf: OpenMrsUATSpecimen
Usage: #example
Title: "OpenMRS Specimen - Considered Ready For Testing"
Description: "The specimen associated with the lab order that was considered ready for testing but the service request was revoked."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.gov.bw/fhir/identifier/specimen-id"
* identifier[USID].type = http://terminology.hl7.org/CodeSystem/v2-0203#USID
* type = $SCT#119361006
* type.text = "Specimen Type"
* subject = Reference(GeneralPatientExample)
* collection.collectedDateTime = "2022-07-28"
* receivedTime = "2022-07-28"
* status = #available
* request = Reference(OpenMrsRevokedServiceRequestExample)

Instance: OpenMrsLabResultTaskExample
InstanceOf: OpenMrsUATLabTask
Usage: #example
Title: "OpenMRS Task - Lab Order Completed"
Description: "Indicates that the task that has been initiated for the lab request has now been completed and the lab result issued."
* identifier[FILL].system = "http://moh.gov.bw/fhir/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* basedOn = Reference(OpenMrsCompletedServiceRequestExample)
* status = #completed
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* output.type.text = "Some Lab Result"
* output.valueReference = Reference(OpenMrsLabResultsDiagnosticReportExample)

Instance: OpenMrsLabOrderRejectionTaskExample
InstanceOf: OpenMrsUATLabTask
Usage: #example
Title: "OpenMRS Task - Lab Order Rejected by Laboratory"
Description: "Indicates that the task that has been initiated for the lab request has been rejected by the receiving laboratory/lab technician."
* identifier[FILL].system = "http://moh.gov.bw/fhir/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* basedOn = Reference(OpenMrsCompletedServiceRequestExample)
* status = #rejected
* statusReason = $SCT#123840003
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)

Instance: OpenMrsAvailableSpecimenForCompletedRequestsExample
InstanceOf: OpenMrsUATSpecimen
Usage: #example
Title: "OpenMRS Specimen - Used During Testing (Completed Order)"
Description: "The specimen associated with the lab order that was used during testing."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.gov.bw/fhir/identifier/specimen-id"
* identifier[USID].type = http://terminology.hl7.org/CodeSystem/v2-0203#USID
* type = $SCT#119361006
* type.text = "Specimen Type"
* subject = Reference(GeneralPatientExample)
* collection.collectedDateTime = "2022-07-28"
* receivedTime = "2022-07-28"
* status = #available
* request = Reference(OpenMrsCompletedServiceRequestExample)

Instance: OpenMrsUnsatisfactorySpecimenExample
InstanceOf: OpenMrsUATSpecimen
Usage: #example
Title: "OpenMRS Specimen - Unsatsifactory and Cannot be Used"
Description: "The specimen associated with the lab order is considered unsatisfactory by the lab technician and cannot be used for testing."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.gov.bw/fhir/identifier/specimen-id"
* identifier[USID].type = http://terminology.hl7.org/CodeSystem/v2-0203#USID
* type = $SCT#119361006
* type.text = "Specimen Type"
* subject = Reference(GeneralPatientExample)
* collection.collectedDateTime = "2022-07-28"
* receivedTime = "2022-07-28"
* status = #unsatisfactory
* request = Reference(OpenMrsCompletedServiceRequestExample)

Instance: OpenMrsLabResultsDiagnosticReportExample
InstanceOf: OpenMrsUATDiagnosticReport
Usage: #example
Title: "OpenMRS Diagnostic Report - Lab Result"
Description: "Represents the results for the lab order."
* basedOn = Reference(OpenMrsCompletedServiceRequestExample)
* status = #final
* code.text = "Some Test Type"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(GeneralPractitionerExample)
* result = Reference(OpenMrsTestResultExample)
* issued = "2022-07-28T13:28:17-05:00"

Instance: OpenMrsLabOrderTaskExample
InstanceOf: OpenMrsUATLabTask
Usage: #example
Title: "OpenMRS Task - New Lab Order Requested"
Description: "Represents a task that has been initiated to facilitate the overall progress of the new lab request."
* identifier[FILL].system = "http://moh.gov.bw/fhir/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* basedOn = Reference(OpenMrsActiveServiceRequestExample)
* status = #requested
* intent = #order
* executionPeriod.start = "2022-07-28"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)

Instance: OpenMrsLabOrderCancellationTaskExample
InstanceOf: OpenMrsUATLabTask
Usage: #example
Title: "OpenMRS Task - Lab Order Cancelled by Requester"
Description: "Indicates that the task that has been initiated for the lab request has been cancelled by the requestiong organization/practitioner."
* identifier[FILL].system = "http://moh.gov.bw/fhir/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* basedOn = Reference(OpenMrsRevokedServiceRequestExample)
* status = #cancelled
* statusReason = $SCT#281264009
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)

Instance: OpenMrsTestResultExample
InstanceOf: OpenMrsUATDiagnosticTestResultObservation
Usage: #example
Title: "OpenMRS Observation - Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* status = #final
* code.text = "Some code"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueString = "Positive"
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(OpenMrsAvailableSpecimenForCompletedRequestsExample)