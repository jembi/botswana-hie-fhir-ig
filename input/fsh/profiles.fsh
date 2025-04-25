Profile: ServiceProvider
Parent: Organization
Id: service-organization
Title: "Service Provider"
Description: "Organization providing health related services."
* identifier 1..*

* insert Slice(identifier, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    MOHID 0..1 MS and // Ministry of Health Identifier
    HFUID 0..1 MS and // Health Facility Identifier
    MFL 0..1 MS // Master Facility List

* identifier[MOHID].value 1..1
* identifier[MOHID].system = "http://moh.bw.org/identifier/mohid"

* identifier[HFUID].value 1..1
* identifier[HFUID].system = "http://moh.bw.org/identifier/hfuid"

* identifier[MFL].value 1..1
* identifier[MFL].value from VSMasterFacilityListCodes (extensible)
* identifier[MFL].system = "http://moh.bw.org/identifier/mfl-code"

* active 1..1
* name 1..1
* contact 1..1
* contact.address 1..1

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Encounter - Initiated By The Facility Providing the Service" 
Description: "Represents the current facility at which the patient is receiving health services."
//* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|3.0.0
//* classHistory.class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|3.0.0
//* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority|3.0.0
//* hospitalization.reAdmission from http://terminology.hl7.org/ValueSet/v2-0092|2.9
* subject 1..1 
* subject only Reference(BwPatient)
* actualPeriod 1..1
* serviceProvider 0..1 MS
* serviceProvider only Reference(ServiceProvider)

Profile: BwPatient
Parent: Patient
Id: bw-patient
Title: "Patient - Botswana Patient"
Description: "Is used to document demographics and other personal information about an individual receiving care or other health-related services."
* obeys PatientIdentifier-1

* identifier 1..*

* insert Slice(identifier, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    MRN 0..1 MS and
    OMANG 0..1 MS and
    Birth 0..1 MS and
    Passport 0..1 MS and
    Internal 0..1 MS and
    PIMS 0..1 MS and
    OpenMRS 0..1 MS

* identifier[MRN].value 1..1
* identifier[MRN].system = "http://moh.bw.org/identifier/mrn"

* identifier[OMANG].value 1..1
* identifier[OMANG].system = "http://moh.bw.org/identifier/omang"

* identifier[Birth].value 1..1
* identifier[Birth].system = "http://moh.bw.org/identifier/birth"

* identifier[Passport].value 1..1
* identifier[Passport].system = "http://moh.bw.org/identifier/passport"

* identifier[Internal].value 1..1
* identifier[Internal].system = "http://moh.bw.org/identifier/internalid"

* identifier[PIMS].value 1..1
* identifier[PIMS].system = "http://moh.bw.org/identifier/pims"

* identifier[OpenMRS].value 1..1
* identifier[OpenMRS].system = "http://moh.bw.org/identifier/openmrs"

* name 1..*
* name.given 1..*
* name.family 1..1

* gender 1..1
* birthDate 1..1
* address 0..* MS
* telecom 0..* MS

* managingOrganization 0..1 MS
* managingOrganization only Reference(ServiceProvider)

Profile: LabOrderTask
Parent: Task
Id: lab-order-task
Title: "Task - Lab Orders"
Description: "Assists with tracking the state of the lab order and its completion status."
* identifier 1..*

* insert Slice(identifier, value, system, open, Slicing identifier based on the system value, false)

* identifier contains
    FILL 1..1
  
* identifier[FILL].value 1..1
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"

* basedOn 1..*
* basedOn only Reference(LabOrderServiceRequest)

* intent = #order
* executionPeriod 1..1

* requester 1..1
* requester only Reference(BwPractitioner or ServiceProvider)

* for 1..1
* for only Reference(BwPatient)

* owner 1..1
* owner only Reference(BwPractitioner or ServiceProvider)

* output 0..* MS
* output.type 1..1
* output.type.text 1..1
* output.valueReference 1..1
* output.valueReference only Reference(LabOrderDiagnosticReport)

Profile: LabOrderServiceRequest
Parent: ServiceRequest
Id: lab-order-service-request
Title: "ServiceRequest - Lab Orders"
Description: "Represents the service request for lab orders."
* identifier 1..*

* insert Slice(identifier, value, system, open, Slicing identifier based on the system value, false)

* identifier contains
    PLAC 1..1

* identifier[PLAC].value 1..1
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"

* intent = #order

* code 1..1
* code from VSLabOrderCodes (extensible)

* subject 1..1
* subject only Reference(BwPatient)

* encounter 0..1 MS
//* encounter only Reference(TargetFacilityEncounter)

* occurrenceDateTime 1..1

* requester 1..1
* requester only Reference(BwPractitioner or ServiceProvider)

* performer 1..*
* performer only Reference(BwPractitioner or ServiceProvider)

* specimen 1..*
* specimen only Reference(LabOrderSpecimen)

//* locationCode from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType|2014-03-26

Profile: BwPractitioner
Parent: Practitioner
Id: practitioner
Title: "Practitioner"
Description: "Represents the practitioner who participated in the health related service."
* identifier 1..*

* insert Slice(identifier, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    OMANG 0..1 MS

* identifier[OMANG].value 1..1
* identifier[OMANG].system = "http://moh.bw.org/identifier/omang"

* name 1..*
* name.given 1..*
* name.family 1..1

* telecom 1..*

Profile: LabOrderSpecimen
Parent: Specimen
Id: lab-order-specimen
Title: "Specimen"
Description: "The specimen associated with the lab order."
* identifier 1..*

* insert Slice(identifier, value, system, open, Slicing identifier based on the system value, false)

* identifier contains
    USID 1..1
  
* identifier[USID].value 1..1
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"

//* collection.fastingStatusCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0916|2.9
//* container.additiveCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0371|2.9
//* condition from http://terminology.hl7.org/ValueSet/v2-0493|2.9

* type 0..1 MS

* subject 1..1
* subject only Reference(BwPatient)

* request 1..*
* request only Reference(LabOrderServiceRequest)

* collection 1..1
* collection.collected[x] only dateTime
* collection.collectedDateTime 1..1

* receivedTime 0..1 MS

Profile: LabResultObservation
Parent: Observation
Id: lab-result-observation
Title: "Observation - Lab Result"
Description: "Represents the patient's test result for a given lab order."
* category 1..1
* category = $ObservationCategory#laboratory

* code from VSLabOrderCodes (extensible)
* code.text 1..1
* value[x] 1..1

* subject 1..1
* subject only Reference(BwPatient)

* encounter 0..1 MS
//* encounter only Reference(TargetFacilityEncounter)

* effectiveDateTime 1..1

* performer 1..*
* performer only Reference(ServiceProvider or BwPractitioner)

* specimen 1..1
* specimen only Reference(LabOrderSpecimen)

Profile: LabOrderDiagnosticReport
Parent: DiagnosticReport
Id: lab-order-diagnostic-report
Title: "DiagnosticReport - Lab Order"
Description: "Represents the results for the lab order."
* category 1..1
* category = $LNC#11502-2

* code from VSLabOrderCodes (extensible)
* code.text 1..1

* subject 1..1
* subject only Reference(BwPatient)

* encounter 0..1 MS
//* encounter only Reference(TargetFacilityEncounter)

* result 1..*
* result only Reference(LabResultObservation)

* issued 1..1

* basedOn 1..1
* basedOn only Reference(LabOrderServiceRequest)

* performer 1..*
* performer only Reference(BwPractitioner or ServiceProvider)

Profile: LabOrdersBundle
Parent: Bundle
Id: lab-orders-bundle
Title: "Bundle - Lab Orders"
Description: "This bundle contains all of the lab order profiles for managing lab orders."
* type = #transaction

* entry 1..*
  * fullUrl 1..1

* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "Entry resources for capturing lab order information."

* entry contains
    patient 0..1 MS and 
    //encounter 0..1 MS and
    serviceRequest 1..1 and
    specimens 1..* and 
    task 1..1 and
    practitioners 0..* MS and
    diagnosticReport 0..1 MS and
    observations 0..* MS and
    organization 0..1 MS

* insert BundleEntry(BwPatient, patient)
//* insert BundleEntry(TargetFacilityEncounter, encounter)
* insert BundleEntry(LabOrderServiceRequest, serviceRequest)
* insert BundleEntry(LabOrderSpecimen, specimens)
* insert BundleEntry(LabOrderTask, task)
* insert BundleEntry(BwPractitioner, practitioners)
* insert BundleEntry(LabOrderDiagnosticReport, diagnosticReport)
* insert BundleEntry(LabResultObservation, observations)
* insert BundleEntry(ServiceProvider, organization)

Profile: RestrictedPatient
Parent: Patient
Id: patient-identity-cross-reference
Title: "Patient - Patient Identity Cross Reference"
Description: 
    "Is used by the Client Registry to re-identify the patient with his/her corresponding longitudinal clinical record."
    
//* obeys PatientContained-1
* id
  * ^short = "Must be the same ID as the patient resource that suppplied the personal data during creation"
  * ^definition = "Once the patient data has been stored in the FHIR server, a literal ID (FHIR server generated) will have been assigned or some client/system could have provided a preferred ID. This ID SHALL be assigned to this resource after the data supplying patient resource has been deleted from the server."
* identifier 1..*
//* identifier.system 1..1
//* identifier.system = "http://moh.bw.org/identifier/mpi"

* insert Slice(identifier, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    MasterPatientIndex 1..* and
    MRN 0..1 MS and
    Internal 0..1 MS and
    PIMS 0..1 MS and
    OpenMRS 0..1 MS

* identifier[MasterPatientIndex].value 1..1
* identifier[MasterPatientIndex].system = "http://moh.bw.org/identifier/mpi"

* identifier[MRN].value 1..1
* identifier[MRN].system = "http://moh.bw.org/identifier/mrn"

* identifier[Internal].value 1..1
* identifier[Internal].system = "http://moh.bw.org/identifier/internalid"

* identifier[PIMS].value 1..1
* identifier[PIMS].system = "http://moh.bw.org/identifier/pims"

* identifier[OpenMRS].value 1..1
* identifier[OpenMRS].system = "http://moh.bw.org/identifier/openmrs"

* name 0..0
* active 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..1 MS
* managingOrganization only Reference(ServiceProvider)

* contained 0..1 MS
  * ^short = "Contained patient data"
  * ^definition = "Patient data supplied by the Client Registry."
* contained only Patient

* link 0..* MS
* insert Slice(link, value, other.display, open, Slicing link based on \"other\" display value, false)

* link contains
    //TruePatientRef 1..1 and
    PatientData 0..1 MS

/** link[TruePatientRef].other.display 1..1
* link[TruePatientRef].other.display = "True patient reference"
* link[TruePatientRef].other 1..1
* link[TruePatientRef].other.extension contains TruePatientReferenceExtension named TruePatientRefExt 1..1
* link[TruePatientRef].type = #seealso*/

* link[PatientData].other.display 1..1
* link[PatientData].other.display = "Patient data provided by Client Registry"
* link[PatientData].other.reference 1..1
* link[PatientData].type = #seealso

Profile: ProcessPatientInFHIRBundle
Parent: LabOrdersBundle
Id: process-patient-bundle
Title: "Bundle - Process Patient in FHIR"
Description: "While this bundle contains all of the lab order profiles for managing lab orders as defined in the bundle for \"Lab Orders\", it also includes the \"RestrictedPatient\" profile that will replace the \"Botswana Patient\" in the FHIR server."

* entry contains
    restrictedPatient 1..1

* id
  * ^short = "Matching patient ID"
  * ^definition = "SHALL be set to the same ID used by all patient references in the bundle."

* insert BundleEntry(RestrictedPatient, restrictedPatient)

Profile: BwRequirements
Parent: Requirements
Id: bw-requirements
Title: "Requirements"
Description: "Represents the requirements for the use case described in this Implementation Guide."
* name 1..1

* actor MS

* insert Slice(actor, value, extension.value, open, Slicing the actor classification extension based on the code value, false)

* actor contains
    Primary 1..* MS and
    Secondary 0..* MS

* actor[Primary].extension contains ActorClassificationExtension named ActorClassification 1..1
* actor[Primary].extension[ActorClassification].valueCodeableConcept 1..1
* actor[Primary].extension[ActorClassification].valueCodeableConcept = $ActorClassificationCodeSystem#primary

* actor[Secondary].extension contains ActorClassificationExtension named ActorClassification 1..1
* actor[Secondary].extension[ActorClassification].valueCodeableConcept 1..1
* actor[Secondary].extension[ActorClassification].valueCodeableConcept = $ActorClassificationCodeSystem#secondary

* statement 1..*
* extension contains RequirementsTypeExtension named RequirementsType 1..*