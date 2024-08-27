Instance: OpenMrsActiveServiceRequestExample
InstanceOf: OpenMrsServiceRequest
Usage: #example
Title: "OpenMRS Service Request - Lab Order (Active)"
Description: "Represents an active service request for the lab order."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"
* status = #active
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076364
* subject = Reference(OpenMrsGeneralPatientExample)
* encounter = Reference(OpenMrsGeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
// * specimen = Reference(OpenMrsAvailableSpecimenForActiveRequestsExample)

Instance: OpenMrsRevokedServiceRequestExample
InstanceOf: OpenMrsServiceRequest
Usage: #example
Title: "OpenMRS Service Request - Lab Order (Revoked)"
Description: "Represents a service request that has been revoked before it could be fully attended to."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"
* status = #revoked
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076364
* subject = Reference(OpenMrsGeneralPatientExample)
* encounter = Reference(OpenMrsGeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
// * specimen = Reference(OpenMrsAvailableSpecimenForRevokedRequestExample)

Instance: OpenMrsCompletedServiceRequestExample
InstanceOf: OpenMrsServiceRequest
Usage: #example
Title: "OpenMRS Service Request - Lab Order (Completed)"
Description: "Represents a completed service request for the lab order."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"
* status = #completed
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076364
* subject = Reference(OpenMrsGeneralPatientExample)
* encounter = Reference(OpenMrsGeneralEncounterExample)
* occurrenceDateTime = "2012-01-05"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
// * specimen = Reference(OpenMrsAvailableSpecimenForCompletedRequestsExample)

Instance: OpenMrsAvailableSpecimenForActiveRequestsExample
InstanceOf: OpenMrsUATSpecimen
Usage: #example
Title: "OpenMRS Specimen - Used During Testing (Order is Active)"
Description: "The specimen associated with the lab order that will be used during testing."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"
* type = $SCT#119361006
* type.text = "Specimen Type"
* subject = Reference(OpenMrsGeneralPatientExample)
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
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"
* type = $SCT#119361006
* type.text = "Specimen Type"
* subject = Reference(OpenMrsGeneralPatientExample)
* collection.collectedDateTime = "2022-07-28"
* receivedTime = "2022-07-28"
* status = #available
* request = Reference(OpenMrsRevokedServiceRequestExample)

Instance: OpenMrsLabResultTaskExample
InstanceOf: OpenMrsUATLabTask
Usage: #example
Title: "OpenMRS Task - Lab Order Completed"
Description: "Indicates that the task that has been initiated for the lab request has now been completed and the lab result issued."
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* basedOn = Reference(OpenMrsCompletedServiceRequestExample)
* status = #completed
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* output.type.text = "Some Lab Result"
* output.valueReference = Reference(OpenMrsLabResultsDiagnosticReportExample)
* for = Reference(OpenMrsGeneralPatientExample)

Instance: OpenMrsLabOrderRejectionTaskExample
InstanceOf: OpenMrsUATLabTask
Usage: #example
Title: "OpenMRS Task - Lab Order Rejected by Laboratory"
Description: "Indicates that the task that has been initiated for the lab request has been rejected by the receiving laboratory/lab technician."
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* basedOn = Reference(OpenMrsCompletedServiceRequestExample)
* status = #rejected
* statusReason = $SCT#123840003
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* for = Reference(OpenMrsGeneralPatientExample)

Instance: OpenMrsAvailableSpecimenForCompletedRequestsExample
InstanceOf: OpenMrsUATSpecimen
Usage: #example
Title: "OpenMRS Specimen - Used During Testing (Completed Order)"
Description: "The specimen associated with the lab order that was used during testing."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"
* type = $SCT#119361006
* type.text = "Specimen Type"
* subject = Reference(OpenMrsGeneralPatientExample)
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
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"
* type = $SCT#119361006
* type.text = "Specimen Type"
* subject = Reference(OpenMrsGeneralPatientExample)
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
* subject = Reference(OpenMrsGeneralPatientExample)
* encounter = Reference(OpenMrsGeneralEncounterExample)
* performer = Reference(GeneralPractitionerExample)
* result = Reference(OpenMrsTestResultExample)
* issued = "2022-07-28T13:28:17-05:00"

Instance: OpenMrsLabOrderTaskExample
InstanceOf: OpenMrsUATLabTask
Usage: #example
Title: "OpenMRS Task - New Lab Order Requested"
Description: "Represents a task that has been initiated to facilitate the overall progress of the new lab request."
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* basedOn = Reference(OpenMrsActiveServiceRequestExample)
* status = #requested
* intent = #order
* executionPeriod.start = "2022-07-28"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* for = Reference(OpenMrsGeneralPatientExample)

Instance: OpenMrsLabOrderCancellationTaskExample
InstanceOf: OpenMrsUATLabTask
Usage: #example
Title: "OpenMRS Task - Lab Order Cancelled by Requester"
Description: "Indicates that the task that has been initiated for the lab request has been cancelled by the requestiong organization/practitioner."
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* basedOn = Reference(OpenMrsRevokedServiceRequestExample)
* status = #cancelled
* statusReason = $SCT#281264009
* intent = #order
* executionPeriod.start = "2022-07-28"
* executionPeriod.end = "2022-07-30"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* for = Reference(OpenMrsGeneralPatientExample)

Instance: OpenMrsTestResultExample
InstanceOf: OpenMrsUATDiagnosticTestResultObservation
Usage: #example
Title: "OpenMRS Observation - Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* status = #final
* code.text = "Some code"
* subject = Reference(OpenMrsGeneralPatientExample)
* encounter = Reference(OpenMrsGeneralEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueString = "Positive"
* performer = Reference(LaboratoryProviderExample)
// * specimen = Reference(OpenMrsAvailableSpecimenForCompletedRequestsExample)

Instance: OpenMrsGeneralEncounterExample
InstanceOf: UATTargetFacilityEncounter
Usage: #example
Title: "Encounter - Initiated By The PIMS Facility Providing the Service" 
Description: "Represents the current facility at which the patient is receiving health services."
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#OBSENC
* status = #finished
* subject = Reference(OpenMrsGeneralPatientExample)
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)

Instance: OpenMrsGeneralPatientExample
InstanceOf: OpenMrsUATBwPatient
Usage: #example
Title: "Patient - PIMS"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345671"
* identifier[MRN].system = "http://moh.bw.org/identifier/mrn"

* identifier[OMANG].value = "omang1234"
* identifier[OMANG].system = "http://moh.bw.org/ext/identifier/omang"

* identifier[Birth].value = "birth certificate number"
* identifier[Birth].system = "http://moh.bw.org/ext/identifier/birth"

* identifier[Passport].value = "ppn1234"
* identifier[Passport].system = "http://moh.bw.org/ext/identifier/passport"

* identifier[OpenMRS].value = "openmrs id"
* identifier[OpenMRS].system = "http://moh.bw.org/ext/identifier/openmrs"

* identifier[Internal].value = "internal id"
* identifier[Internal].system = "http://moh.bw.org/ext/identifier/internalid"

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* address[+].city = "Addis Ababa"
* address[=].line[+] = "123"
* address[=].line[+] = "Tesfaye Street"
* address[=].line[+] = "Bole"
* address[=].district = "Addis Ababa Central District"
* address[=].state = "Addis Ababa"

* managingOrganization = Reference(CurrentServiceProviderExample)

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home