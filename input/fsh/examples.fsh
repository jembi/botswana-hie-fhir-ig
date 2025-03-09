Instance: CurrentServiceProviderExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization - Current Facility"
Description: "Current organization providing health related services."
* identifier[MOHID][+].value = "MOH001"
* identifier[MOHID][=].system = "http://moh.bw.org/identifier/mohid"

* identifier[HFUID][+].value = "HFUID001"
* identifier[HFUID][=].system = "http://moh.bw.org/identifier/hfuid"

* identifier[MFL][+].value = http://moh.bw.org/CodeSystem/cs-master-facility-list#703564-5
* identifier[MFL][=].system = "http://moh.bw.org//identifier/mfl-code"

* active = true
* name = "Kweneng Health Post"
* address[+].line[+] = "Kweneng East"
* address[=].city = "Mogoditshane"
* address[=].district = "Kweneng"

Instance: LaboratoryProviderExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization - Current Laboratory"
Description: "Current organization providing laboratory related services."
* identifier[MOHID][+].value = "MOH001"
* identifier[MOHID][=].system = "http://moh.bw.org/identifier/mohid"

* identifier[HFUID][+].value = "HFUID001"
* identifier[HFUID][=].system = "http://moh.bw.org/identifier/hfuid"

* identifier[MFL][+].value = http://moh.bw.org/CodeSystem/cs-master-facility-list#537111-7
* identifier[MFL][=].system = "http://moh.bw.org//identifier/mfl-code"

* active = true
* name = "Kweneng Laboratory"
* address[+].line[+] = "Kweneng East"
* address[=].city = "Mogoditshane"
* address[=].district = "Kweneng"

Instance: GeneralPractitionerExample
InstanceOf: GeneralPractitioner
Usage: #example
Title: "Practitioner - General Practitioner"
Description: 
"Represents the practitioners who participated in the health-related event."
* identifier[OMANG].value = "omang1234"
* identifier[OMANG].system = "http://moh.bw.org//identifier/omang"
* name[+].prefix[+] = "Dr"
* name[=].given[+] = "Tom"
* name[=].given[+] = "Junes"
* name[=].family = "Smith"
* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

Instance: BwPatientExample
InstanceOf: BwPatient
Usage: #example
Title: "Botswana Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345671"
* identifier[MRN].system = "http://moh.bw.org/identifier/mrn"

* identifier[OMANG].value = "omang1234"
* identifier[OMANG].system = "http://moh.bw.org//identifier/omang"

* identifier[Birth].value = "001209565658"
* identifier[Birth].system = "http://moh.bw.org//identifier/birth"

* identifier[Passport].value = "ppn1234"
* identifier[Passport].system = "http://moh.bw.org//identifier/passport"

* identifier[OpenMRS].value = "Openmrs12345"
* identifier[OpenMRS].system = "http://moh.bw.org//identifier/openmrs"

* identifier[Internal].value = "SysId12345"
* identifier[Internal].system = "http://moh.bw.org//identifier/internalid"

* identifier[PIMS].value = "PIMS12345"
* identifier[PIMS].system = "http://moh.bw.org//identifier/pims"

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* address[+].line[+] = "5630"
* address[=].line[+] = "Maboneng Street"
* address[=].line[+] = "Kweneng East"
* address[=].city = "Mogoditshane"
* address[=].district = "Kweneng"

* managingOrganization = Reference(CurrentServiceProviderExample)

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

Instance: TargetFacilityEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Encounter - Initiated By The Facility Providing the Service" 
Description: "Represents the current facility at which the patient is receiving health services."
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#OBSENC
* status = #finished
* subject = Reference(BwPatientExample)
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(CurrentServiceProviderExample)

Instance: LabOrderActiveServiceRequestExample
InstanceOf: LabOrderServiceRequest
Usage: #example
Title: "Service Request - Lab Order (Active)"
Description: "Represents an active service request for the lab order."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"
* status = #active
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076341
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-12-20"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(AvailableSpecimenForActiveRequestsExample)

Instance: LabOrderRevokedServiceRequestExample
InstanceOf: LabOrderServiceRequest
Usage: #example
Title: "Service Request - Lab Order (Revoked)"
Description: "Represents a service request that has been revoked before it could be fully attended to."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"
* status = #revoked
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076341
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-12-20"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(AvailableSpecimenForRevokedRequestsExample)

Instance: LabOrderCompletedServiceRequestExample
InstanceOf: LabOrderServiceRequest
Usage: #example
Title: "Service Request - Lab Order (Completed)"
Description: "Represents a completed service request for the lab order."
* identifier[PLAC].value = "ORDER12345"
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"
* status = #completed
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076341
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-12-20"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(AvailableSpecimenForCompletedRequestsExample)

Instance: AvailableSpecimenForActiveRequestsExample
InstanceOf: LabOrderSpecimen
Usage: #example
Title: "Specimen - Used During Testing (Order is Active)"
Description: "The specimen associated with the lab order that will be used during testing."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"
* type = $LNC#LA17760-2
* type.text = "Plasma specimen"
* subject = Reference(BwPatientExample)
* collection.collectedDateTime = "2012-12-21"
* receivedTime = "2012-12-22"
* status = #available
* request = Reference(LabOrderActiveServiceRequestExample)

Instance: AvailableSpecimenForRevokedRequestsExample
InstanceOf: LabOrderSpecimen
Usage: #example
Title: "Specimen - Considered Ready For Testing"
Description: "The specimen associated with the lab order that was considered ready for testing but the service request was revoked."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"
* type = $LNC#LA17760-2
* type.text = "Plasma specimen"
* subject = Reference(BwPatientExample)
* collection.collectedDateTime = "2012-12-21"
* receivedTime = "2012-12-22"
* status = #available
* request = Reference(LabOrderRevokedServiceRequestExample)

Instance: AvailableSpecimenForCompletedRequestsExample
InstanceOf: LabOrderSpecimen
Usage: #example
Title: "Specimen - Used During Testing (Completed Order)"
Description: "The specimen associated with the lab order that was used during testing."
* identifier[USID].value = "abc123"
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"
* type = $LNC#LA17760-2
* type.text = "Plasma specimen"
* subject = Reference(BwPatientExample)
* collection.collectedDateTime = "2012-12-21"
* receivedTime = "2012-12-22"
* status = #available
* request = Reference(LabOrderCompletedServiceRequestExample)

Instance: LabOrderTaskExample
InstanceOf: LabOrderTask
Usage: #example
Title: "Task - New Lab Order Requested"
Description: "Represents a task that has been initiated to facilitate the overall progress of the new lab request."
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* basedOn = Reference(LabOrderActiveServiceRequestExample)
* status = #requested
* intent = #order
* executionPeriod.start = "2012-12-21"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* for = Reference(BwPatientExample)

Instance: LabOrderResultTaskExample
InstanceOf: LabOrderTask
Usage: #example
Title: "Task - Lab Order Completed"
Description: "Indicates that the task that has been initiated for the lab request has now been completed and the lab result issued."
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* basedOn = Reference(LabOrderCompletedServiceRequestExample)
* status = #completed
* intent = #order
* executionPeriod.start = "2012-12-22"
* executionPeriod.end = "2012-12-24"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* output.type.text = "CD4 Count Test Result"
* output.valueReference = Reference(LabResultsDiagnosticReportExample)
* for = Reference(BwPatientExample)

Instance: LabOrderRejectionTaskExample
InstanceOf: LabOrderTask
Usage: #example
Title: "Task - Lab Order Rejected by Laboratory"
Description: "Indicates that the task that has been initiated for the lab request has been rejected by the receiving laboratory/lab technician."
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* basedOn = Reference(LabOrderCompletedServiceRequestExample)
* status = #rejected
//* statusReason = $SCT#123840003
* intent = #order
* executionPeriod.start = "2012-12-22"
* executionPeriod.end = "2012-12-24"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* for = Reference(BwPatientExample)

Instance: LabOrderCancellationTaskExample
InstanceOf: LabOrderTask
Usage: #example
Title: "Task - Lab Order Cancelled by Requester"
Description: "Indicates that the task that has been initiated for the lab request has been cancelled by the requestiong organization/practitioner."
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"
* identifier[FILL].value = "ORDER12345"
* basedOn = Reference(LabOrderRevokedServiceRequestExample)
* status = #cancelled
//* statusReason = $SCT#281264009
* intent = #order
* executionPeriod.start = "2012-12-22"
* executionPeriod.end = "2012-12-24"
* requester = Reference(CurrentServiceProviderExample)
* owner = Reference(CurrentServiceProviderExample)
* for = Reference(BwPatientExample)

Instance: LabResultsDiagnosticReportExample
InstanceOf: LabOrderDiagnosticReport
Usage: #example
Title: "Diagnostic Report - Lab Result"
Description: "Represents the results for the lab order."
* category = $LNC#11502-2
* basedOn = Reference(LabOrderCompletedServiceRequestExample)
* status = #final
* code.text = "HIV viral load test"
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* performer = Reference(GeneralPractitionerExample)
* result = Reference(DiagnosticTestResultObservationExample)
* issued = "2012-12-27T13:28:17-05:00"

Instance: DiagnosticTestResultObservationExample
InstanceOf: DiagnosticTestResultObservation
Usage: #example
Title: "Observation - Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "HIV viral load test"
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2012-12-29"
* valueInteger = 900
* performer = Reference(LaboratoryProviderExample)
* specimen = Reference(AvailableSpecimenForCompletedRequestsExample)