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
* contact.address[+].line[+] = "Kweneng East"
* contact.address[=].city = "Mogoditshane"
* contact.address[=].district = "Kweneng"

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
* status = #completed
* subject = Reference(BwPatientExample)
* actualPeriod.start = "2012-12-09"
* actualPeriod.end = "2012-12-09"
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
* identifier[MRN].value = "MRN12345671"
* identifier[OpenMRS].value = "Openmrs12345"
* identifier[Internal].value = "SysId12345"
* identifier[PIMS].value = "PIMS12345"

* managingOrganization = Reference(ServiceProviderExample)

//* link[TruePatientRef].other.extension[TruePatientRefExt].valueString = "Patient/85c29cd8-8469-4ad5-be71-09d00a6ef816"

Instance: RestrictedPatientExample2
InstanceOf: RestrictedPatient
Usage: #example
Title: "Includes all personal patient data  - After being supplied by the Client Registry."
Description: 
    "The patient resource after having its data populated by the Client Registry."

* identifier[MasterPatientIndex][+].value = "some id value"
* identifier[MasterPatientIndex][+].value = "some other id value for some reason"
* identifier[MRN].value = "MRN12345671"
* identifier[OpenMRS].value = "Openmrs12345"
* identifier[Internal].value = "SysId12345"
* identifier[PIMS].value = "PIMS12345"

//* link[TruePatientRef].other.extension[TruePatientRefExt].valueString = "Patient/85c29cd8-8469-4ad5-be71-09d00a6ef816"
* link[PatientData].other = Reference(BwPatientDataFromCR)
* contained = BwPatientDataFromCR
* managingOrganization = Reference(ServiceProviderExample)

Instance: BwPatientDataFromCR
InstanceOf: Patient
Usage: #inline
* identifier[+].value = "omang1234"
* identifier[=].system = "http://moh.bw.org/identifier/omang"

* identifier[+].value = "001209565658"
* identifier[=].system = "http://moh.bw.org/identifier/birth"

* identifier[+].value = "ppn1234"
* identifier[=].system = "http://moh.bw.org/identifier/passport"

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* address[+].line[+] = "5630"
* address[=].line[+] = "Maboneng Street"
* address[=].line[+] = "Kweneng East"
* address[=].city = "Mogoditshane"
* address[=].district = "Kweneng"

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

Instance: SearchForPatientInFHIR
InstanceOf: Endpoint
Usage: #definition
Title: "Search Patient in FHIR - Using business identifiers."
Description: 
    "Point-of-Service systems can search for a patient in FHIR using one or more business identifiers."
* status = #active
* connectionType = $EndpointConnectionType#hl7-fhir-rest
* name = "Patient"
* description = "The Patient endpoint coming with the FHIR API."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/fhir/Patient?identifier=http://moh.bw.org/identifier/omang|omang123,identifier=http://moh.bw.org/identifier/birth|birth456,identifier=http://moh.bw.org/identifier/passport|passport789"

Instance: SearchForPatientInCR
InstanceOf: Endpoint
Usage: #definition
Title: "Search Patient in Client Registry - Using XXX."
Description: 
    "Interoperability layer searches for a patient in the client registry using XXX."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#CR-rest
* name = "CR endpoint name"
* description = "The endpoint used for XXX."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/json
* address = "http://server.url/CR/endopint?params"

Instance: SearchForPatientInCRResponse
InstanceOf: Endpoint
Usage: #definition
Title: "Search Patient in Client Registry - Response."
Description: 
    "Interoperability layer receives a response from the CR for the search request."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#IL-rest
* name = "IL endpoint name"
* description = "The endpoint used for XXX."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/json
* address = "http://server.url/IL/endpoint"

Instance: ValidatePatientResourceInFHIR
InstanceOf: Endpoint
Usage: #definition
Title: "Validate Patient Resource in FHIR."
Description: 
    "FHIR uses its $validate operation to ensure that data provided in the Patient Resource is compliant with the specified FHIR Profile."
* status = #active
* connectionType = $EndpointConnectionType#hl7-fhir-rest
* name = "$validate"
* description = "The $validate operation checks whether the suppplied content will be accepted by the server, based on the constraints applied to one or more profiles referenced by the Resource containing the data."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/fhir/Patient/$validate"

Instance: MPIForPatientIssuedByCR
InstanceOf: Endpoint
Usage: #definition
Title: "Master Patient Index identifier issued by the Client Registry."
Description: 
    "Interoperability layer receives a MPI as part of the response from the CR when creating new patients."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#IL-rest
* name = "IL endpoint name"
* description = "The endpoint used for XXX."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/json
* address = "http://server.url/IL/endpoint"

Instance: FHIRResourceProcessResponse
InstanceOf: Endpoint
Usage: #definition
Title: "Response issued by FHIR after CRUD requests."
Description: 
    "Interoperability layer receives an outcome response for each CRUD request."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#IL-rest
* name = "IL endpoint name"
* description = "The endpoint used for XXX. See https://www.hl7.org/fhir/http.html."
* payload[+]
  * type = $EndpointPayloadType#any
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/IL/endpoint"

Instance: ClinicianActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Clinician"
Description: "Represents the individual responsible for the care of patient."
* name = "Clinician"
* title = "Clinician"
* status = #active
* purpose = "The Clinician will request new lab orders and diagnose the patient based on the results returned from the lab."
* type = #person

Instance: LaboratoryTechnicianActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Laboratory Technician"
Description: "Represents the individual responsible for conducting lab tests."
* name = "LaboratoryTechnician"
* title = "Laboratory Technician"
* status = #active
* purpose = "The Laboratory Technician will examine the specimens associated with the lab order and issue a diagnostic report."
* type = #person

Instance: InteroperabilityLayerActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Interoperability Layer"
Description: "Represents the architectural component responsible for coordinating transactions from one system to another during Health Information Exchange."
* name = "InteroperabilityLayer"
* title = "Interoperability Layer"
* status = #active
* purpose = "The Interoperability Layer plays a vital role in ensuring that both lab orders and diagnostic reports are stored in the Shared Health Record."
* type = #system

Instance: HIESystemActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - HIE System (To Be Reviewed)"
Description: "Represents the system that enables the secure and electronic sharing of patient data among different healthcare providers and organizations, facilitating better coordination and quality of care."
* name = "HIESystem"
* title = "HIE System"
* status = #active
* purpose = "need to figure out the pupose of this actor."
* type = #system

Instance: ClientRegistryActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Client Registry"
Description: "Represents the system designed to uniquely identify individuals who receive healthcare services, often by maintaining a central record of patients and their demographics, assigning unique identifiers, and enabling healthcare workers to identify facilities where a patient has received care."
* name = "ClientRegistry"
* title = "Client Registry"
* status = #active
* purpose = "The client registry is important for the accurate and efficient identification and linking of patient records across different healthcare organizations within a health information exchange network."
* type = #system

Instance: OmangActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Omang"
Description: "Represents the system used for national identification of the population in Botswana."
* name = "Omang"
* title = "Omang"
* status = #active
* purpose = "The population identification data stored in Omang is helpful when it comes to identifying the patient presented at a health facility."
* type = #system

Instance: BDRSActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Birth and Death Registration System"
Description: "Represents the system used for recording births and deaths, ensuring that citizens are formally recognized and provided with legal identification."
* name = "BirthDeathRegistrationSystem"
* title = "Birth and Death Registration System"
* status = #active
* purpose = "The helps in maintaining accurate population data, enabling effective policy-making, and ensuring access to services such as healthcare, social security, and education."
* type = #system

Instance: ICSActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Immigration and Citizenship System"
Description: "Represents the system used to manage the entry, stay, and exit of foreign nationals and to govern the acquisition and loss of citizenship in the country."
* name = "ImmigrationCitizenshipSystem"
* title = "Immigration and Citizenship System"
* status = #active
* purpose = "This helps in identifying foreign nationals when accessing services such as healthcare in a health facility."
* type = #system

Instance: APIActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Cross-Service API"
Description: "Represents the system used to provide a single entrypoint for demographic search queries that might have a mix of various query parameters."
* name = "API"
* title = "Cross-Service API"
* status = #active
* purpose = "When a FHIR search query comes in to this endpoint, it will be treated as a generic FHIR API search query, and applied across all services."
* type = #system

Instance: SHRActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Shared Health Record"
Description: "Represents the system that stores a defined set of normalized patient data, serving as a longitudinal health record across different facilities, ensuring continuity of care."
* name = "SharedHealthRecord"
* title = "Shared Health Record (SHR)"
* status = #active
* purpose = "To facilitate the exchange and access of patient health information across different healthcare settings, improving care delivery and decision-making."
* type = #system

Instance: PIMSActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - PIMS"
Description: "Represents the system used to collect, manage, and track patient health records across healthcare facilities, supporting improved care, reporting, and decision-making."
* name = "PatientInformationManagementSystem"
* title = "Patient Information Management System (PIMS)"
* status = #active
* purpose = "To collect, organize, and store patient data in a way that is easily accessible and usable by healthcare providers."
* type = #system

Instance: IPMSActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - IPMS"
Description: "Represents a centralized electronic medical record (EMR) system implemented by the Ministry of Health and Wellness. It aims to enhance patient care by providing a unified platform for managing medical records across public health facilitie."
* name = "IntegratedPatientManagementSystem"
* title = "Integrated Patient Management System (IPMS)"
* status = #active
* purpose = "To transition from paper-based to a technology-based medical record system. This system aims to enhance efficiency, ensure secure management of patient information, and improve the quality and accessibility of healthcare services, particularly in rural areas."
* type = #system

Instance: OpenMRSActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - OpenMRS"
Description: "Represents an open-source electronic medical record system that is used to manage patient data, support HIV care, and strengthen health information systems across the country’s healthcare facilities."
* name = "OpenMRS"
* title = "OpenMRS"
* status = #active
* purpose = "Used as the main patient care system and electronic medical record (EMR) system, providing a platform to manage patient data and improve healthcare delivery, particularly in resource-constrained environments."
* type = #system

Instance: MFLActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Master Facility List"
Description: "Represents a comprehensive, standardized registry of all health facilities—both public and private—across the country. Managed by the Ministry of Health and Wellness, the MFL assigns unique codes to each facility, ensuring accurate identification and facilitating interoperability across health information systems. This system supports efficient health data management, reporting, and planning."
* name = "MasterFacilityList"
* title = "Master Facility List (MFL)"
* status = #active
* purpose = "Serves as a comprehensive, authoritative record of all health facilities within the country, both public and private. It's a crucial tool for the Ministry of Health and Wellness to manage, plan, and monitor the health system."
* type = #system