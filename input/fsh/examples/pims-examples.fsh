Instance: PimsActiveServiceRequestExample
InstanceOf: PimsServiceRequest
Usage: #example
Title: "PIMS Service Request - Lab Order (Active)"
Description: "Represents an active service request for the lab order."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.gov.bw/fhir/identifier/service-request-id"
* identifier[PLAC].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* status = #active
* intent = #order
* code = $PimsLabOrderCodeSystem#P-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(PimsAvailableSpecimenForActiveRequestsExample)

Instance: PimsRevokedServiceRequestExample
InstanceOf: PimsServiceRequest
Usage: #example
Title: "PIMS Service Request - Lab Order (Revoked)"
Description: "Represents a service request that has been revoked before it could be fully attended to."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.gov.bw/fhir/identifier/service-request-id"
* identifier[PLAC].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* status = #revoked
* intent = #order
* code = $PimsLabOrderCodeSystem#P-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(PimsAvailableSpecimenForRevokedRequestExample)

Instance: PimsCompletedServiceRequestExample
InstanceOf: PimsServiceRequest
Usage: #example
Title: "PIMS Service Request - Lab Order (Completed)"
Description: "Represents a completed service request for the lab order."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.gov.bw/fhir/identifier/service-request-id"
* identifier[PLAC].type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* status = #completed
* intent = #order
* code = $PimsLabOrderCodeSystem#P-1
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(PimsAvailableSpecimenForCompletedRequestsExample)

Instance: PimsAvailableSpecimenForActiveRequestsExample
InstanceOf: PimsUATSpecimen
Usage: #example
Title: "PIMS Specimen - Used During Testing (Order is Active)"
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
* request = Reference(PimsActiveServiceRequestExample)

Instance: PimsAvailableSpecimenForRevokedRequestExample
InstanceOf: PimsUATSpecimen
Usage: #example
Title: "PIMS Specimen - Considered Ready For Testing"
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
* request = Reference(PimsRevokedServiceRequestExample)

Instance: PimsLabResultTaskExample
InstanceOf: PimsUATLabTask
Usage: #example
Title: "PIMS Task - Lab Order Completed"
Description: "Indicates that the task that has been initiated for the lab request has now been completed and the lab result issued."
* identifier[FILL].system = "http://moh.gov.bw/fhir/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* basedOn = Reference(PimsCompletedServiceRequestExample)
* status = #completed
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* output.type.text = "Some Lab Result"
* output.valueReference = Reference(PimsLabResultsDiagnosticReportExample)

Instance: PimsLabOrderRejectionTaskExample
InstanceOf: PimsUATLabTask
Usage: #example
Title: "PIMS Task - Lab Order Rejected by Laboratory"
Description: "Indicates that the task that has been initiated for the lab request has been rejected by the receiving laboratory/lab technician."
* identifier[FILL].system = "http://moh.gov.bw/fhir/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* basedOn = Reference(PimsCompletedServiceRequestExample)
* status = #rejected
* statusReason = $SCT#123840003
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)

Instance: PimsAvailableSpecimenForCompletedRequestsExample
InstanceOf: PimsUATSpecimen
Usage: #example
Title: "PIMS Specimen - Used During Testing (Completed Order)"
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
* request = Reference(PimsCompletedServiceRequestExample)

Instance: PimsUnsatisfactorySpecimenExample
InstanceOf: PimsUATSpecimen
Usage: #example
Title: "PIMS Specimen - Unsatsifactory and Cannot be Used"
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
* request = Reference(PimsCompletedServiceRequestExample)

Instance: PimsLabResultsDiagnosticReportExample
InstanceOf: PimsUATDiagnosticReport
Usage: #example
Title: "PIMS Diagnostic Report - Lab Result"
Description: "Represents the results for the lab order."
* basedOn = Reference(PimsCompletedServiceRequestExample)
* status = #final
* code.text = "Some Test Type"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* performer = Reference(GeneralPractitionerExample)
* result = Reference(PimsTestResultExample)
* issued = "2022-07-28T13:28:17-05:00"

Instance: PimsLabOrderTaskExample
InstanceOf: PimsUATLabTask
Usage: #example
Title: "PIMS Task - New Lab Order Requested"
Description: "Represents a task that has been initiated to facilitate the overall progress of the new lab request."
* identifier[FILL].system = "http://moh.gov.bw/fhir/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* basedOn = Reference(PimsActiveServiceRequestExample)
* status = #requested
* intent = #order
* executionPeriod.start = "2022-07-28"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)

Instance: PimsLabOrderCancellationTaskExample
InstanceOf: PimsUATLabTask
Usage: #example
Title: "PIMS Task - Lab Order Cancelled by Requester"
Description: "Indicates that the task that has been initiated for the lab request has been cancelled by the requestiong organization/practitioner."
* identifier[FILL].system = "http://moh.gov.bw/fhir/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* identifier[FILL].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* basedOn = Reference(PimsRevokedServiceRequestExample)
* status = #cancelled
* statusReason = $SCT#281264009
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)

Instance: PimsTestResultExample
InstanceOf: PimsUATDiagnosticTestResultObservation
Usage: #example
Title: "PIMS Observation - Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* status = #final
* code.text = "Some code"
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueString = "Positive"
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(PimsAvailableSpecimenForCompletedRequestsExample)