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
* title = "Interoperability Layer (IL)"
* status = #active
* purpose = "The Interoperability Layer plays a vital role in ensuring that both lab orders and diagnostic reports are stored in the Shared Health Record."
* type = #system

Instance: ClientRegistryActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Client Registry"
Description: "Represents the system designed to uniquely identify individuals who receive healthcare services, often by maintaining a central record of patients and their demographics, assigning unique identifiers, and enabling healthcare workers to identify facilities where a patient has received care."
* name = "ClientRegistry"
* title = "Client Registry (CR)"
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
* title = "Birth and Death Registration System (BDRS)"
* status = #active
* purpose = "The helps in maintaining accurate population data, enabling effective policy-making, and ensuring access to services such as healthcare, social security, and education."
* type = #system

Instance: ICSActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Immigration and Citizenship System"
Description: "Represents the system used to manage the entry, stay, and exit of foreign nationals and to govern the acquisition and loss of citizenship in the country."
* name = "ImmigrationCitizenshipSystem"
* title = "Immigration and Citizenship System (ICS)"
* status = #active
* purpose = "This helps in identifying foreign nationals when accessing services such as healthcare in a health facility."
* type = #system

Instance: APIActorDefinitionExample
InstanceOf: ActorDefinition
Usage: #example
Title: "ActorDefinition - Cross-Service API"
Description: "Represents the system used to provide a single entrypoint for demographic search queries that might have a mix of various query parameters."
* name = "API"
* title = "Cross-Service API (API)"
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