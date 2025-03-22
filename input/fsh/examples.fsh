Instance: ServiceProviderExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization - Current Facility"
Description: "Current organization providing health related services."
* identifier[MOHID].value = "MOH001"
* identifier[HFUID].value = "HFUID001"
* identifier[MFL].value = $MasterFacilityList#703564-5

* active = true
* name = "Kweneng Health Post"
* address[+].line[+] = "Kweneng East"
* address[=].city = "Mogoditshane"
* address[=].district = "Kweneng"

Instance: BwPractitionerExample
InstanceOf: BwPractitioner
Usage: #example
Title: "Practitioner"
Description: 
"Represents the practitioners who participated in the health-related event."
* identifier[OMANG].value = "omang1234"

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
Description: "Is used to document demographics and other personal information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345671"
* identifier[OMANG].value = "omang1234"
* identifier[Birth].value = "001209565658"
* identifier[Passport].value = "ppn1234"
* identifier[OpenMRS].value = "Openmrs12345"
* identifier[Internal].value = "SysId12345"
* identifier[PIMS].value = "PIMS12345"

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* address[+].line[+] = "5630"
* address[=].line[+] = "Maboneng Street"
* address[=].line[+] = "Kweneng East"
* address[=].city = "Mogoditshane"
* address[=].district = "Kweneng"

* managingOrganization = Reference(ServiceProviderExample)

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
* class = $V3ActCode#OBSENC
* status = #finished
* subject = Reference(BwPatientExample)
* period.start = "2012-12-09"
* period.end = "2012-12-09"
* serviceProvider = Reference(ServiceProviderExample)

Instance: LabOrderActiveServiceRequestExample
InstanceOf: LabOrderServiceRequest
Usage: #example
Title: "ServiceRequest - Lab Order (Active)"
Description: "Represents an active service request for the lab order."
* identifier[PLAC].value = "ORDER12345"

* status = #active
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076341
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-12-20"
* requester = Reference(BwPractitionerExample)
* performer = Reference(ServiceProviderExample)
* specimen = Reference(AvailableSpecimenForActiveRequestsExample)

Instance: LabOrderRevokedServiceRequestExample
InstanceOf: LabOrderServiceRequest
Usage: #example
Title: "ServiceRequest - Lab Order (Revoked)"
Description: "Represents a service request that has been revoked before it could be fully attended to."
* identifier[PLAC].value = "ORDER12345"

* status = #revoked
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076341
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-12-20"
* requester = Reference(BwPractitionerExample)
* performer = Reference(ServiceProviderExample)
* specimen = Reference(AvailableSpecimenForRevokedRequestsExample)

Instance: LabOrderCompletedServiceRequestExample
InstanceOf: LabOrderServiceRequest
Usage: #example
Title: "ServiceRequest - Lab Order (Completed)"
Description: "Represents a completed service request for the lab order."
* identifier[PLAC].value = "ORDER12345"

* status = #completed
* intent = #order
* code = $OpenMrsLabOrderCodeSystem#3076341
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2012-12-20"
* requester = Reference(BwPractitionerExample)
* performer = Reference(ServiceProviderExample)
* specimen = Reference(AvailableSpecimenForCompletedRequestsExample)

Instance: AvailableSpecimenForActiveRequestsExample
InstanceOf: LabOrderSpecimen
Usage: #example
Title: "Specimen - Used During Testing (Order is Active)"
Description: "The specimen associated with the lab order that will be used during testing."
* identifier[USID].value = "abc123"

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
* identifier[FILL].value = "ORDER12345"

* basedOn = Reference(LabOrderActiveServiceRequestExample)
* status = #requested
* intent = #order
* executionPeriod.start = "2012-12-21"
* requester = Reference(ServiceProviderExample)
* owner = Reference(ServiceProviderExample)
* for = Reference(BwPatientExample)

Instance: LabOrderResultTaskExample
InstanceOf: LabOrderTask
Usage: #example
Title: "Task - Lab Order Completed"
Description: "Indicates that the task that has been initiated for the lab request has now been completed and the lab result issued."
* identifier[FILL].value = "ORDER12345"

* basedOn = Reference(LabOrderCompletedServiceRequestExample)
* status = #completed
* intent = #order
* executionPeriod.start = "2012-12-22"
* executionPeriod.end = "2012-12-24"
* requester = Reference(ServiceProviderExample)
* owner = Reference(ServiceProviderExample)
* output.type.text = "Xpert Test Result"
* output.valueReference = Reference(LabResultsDiagnosticReportExample)
* for = Reference(BwPatientExample)

Instance: LabOrderRejectionTaskExample
InstanceOf: LabOrderTask
Usage: #example
Title: "Task - Lab Order Rejected by Laboratory"
Description: "Indicates that the task that has been initiated for the lab request has been rejected by the receiving laboratory/lab technician."
* identifier[FILL].value = "ORDER12345"

* basedOn = Reference(LabOrderCompletedServiceRequestExample)
* status = #rejected
* intent = #order
* executionPeriod.start = "2012-12-22"
* executionPeriod.end = "2012-12-24"
* requester = Reference(ServiceProviderExample)
* owner = Reference(ServiceProviderExample)
* for = Reference(BwPatientExample)

Instance: LabOrderCancellationTaskExample
InstanceOf: LabOrderTask
Usage: #example
Title: "Task - Lab Order Cancelled by Requester"
Description: "Indicates that the task that has been initiated for the lab request has been cancelled by the requestiong organization/practitioner."
* identifier[FILL].value = "ORDER12345"

* basedOn = Reference(LabOrderRevokedServiceRequestExample)
* status = #cancelled
* intent = #order
* executionPeriod.start = "2012-12-22"
* executionPeriod.end = "2012-12-24"
* requester = Reference(ServiceProviderExample)
* owner = Reference(ServiceProviderExample)
* for = Reference(BwPatientExample)

Instance: LabResultsDiagnosticReportExample
InstanceOf: LabOrderDiagnosticReport
Usage: #example
Title: "DiagnosticReport - Lab Result"
Description: "Represents the results for the lab order."
* category = $LNC#11502-2
* basedOn = Reference(LabOrderCompletedServiceRequestExample)
* status = #final
* code = $PimsLabOrderCodeSystem#129
* code.text = "Xpert"
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* performer = Reference(BwPractitionerExample)
* result = Reference(LabResultObservationExample)
* issued = "2012-12-27T13:28:17-05:00"

Instance: LabResultObservationExample
InstanceOf: LabResultObservation
Usage: #example
Title: "Observation - Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* status = #final
* category = $ObservationCategory#laboratory
* code = $PimsLabOrderCodeSystem#129
* code.text = "Xpert"
* subject = Reference(BwPatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2012-12-29"
* valueInteger = 900
* performer = Reference(ServiceProviderExample)
* specimen = Reference(AvailableSpecimenForCompletedRequestsExample)

Instance: RestrictedPatientExample1
InstanceOf: RestrictedPatient
Usage: #example
Title: "Excludes all personal patient data - After new patient submitted for creation."
Description: 
    "The patient resource that should be stored in the FHIR database when using a Client Registry."

* identifier[MasterPatientIndex][+].value = "some id value"
* identifier[MasterPatientIndex][+].value = "some other id value for some reason"
//* link[TruePatientRef].other.extension[TruePatientRefExt].valueString = "Patient/85c29cd8-8469-4ad5-be71-09d00a6ef816"

Instance: RestrictedPatientExample2
InstanceOf: RestrictedPatient
Usage: #example
Title: "Includes all personal patient data  - After being supplied by the Client Registry."
Description: 
    "The patient resource after having its data populated by the Client Registry."

* identifier[MasterPatientIndex][+].value = "some id value"
* identifier[MasterPatientIndex][+].value = "some other id value for some reason"
//* link[TruePatientRef].other.extension[TruePatientRefExt].valueString = "Patient/85c29cd8-8469-4ad5-be71-09d00a6ef816"
* link[TruePatientData].other = Reference(BwPatientDataFromCR)
* contained = BwPatientDataFromCR

Instance: BwPatientDataFromCR
InstanceOf: BwPatient
Usage: #inline
* identifier[MRN].value = "MRN12345671"
* identifier[OMANG].value = "omang1234"
* identifier[Birth].value = "001209565658"
* identifier[Passport].value = "ppn1234"
* identifier[OpenMRS].value = "Openmrs12345"
* identifier[Internal].value = "SysId12345"
* identifier[PIMS].value = "PIMS12345"

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* address[+].line[+] = "5630"
* address[=].line[+] = "Maboneng Street"
* address[=].line[+] = "Kweneng East"
* address[=].city = "Mogoditshane"
* address[=].district = "Kweneng"

* managingOrganization = Reference(ServiceProviderExample)

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home