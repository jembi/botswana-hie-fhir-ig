Profile: ServiceProvider
Parent: Organization
Id: service-organization
Title: "Service Provider"
Description: "Organization providing health related services."
* identifier 1..*

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

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
* address 1..1

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Encounter - Initiated By The Facility Providing the Service" 
Description: "Represents the current facility at which the patient is receiving health services."
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|3.0.0
* classHistory.class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|3.0.0
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority|3.0.0
* hospitalization.reAdmission from http://terminology.hl7.org/ValueSet/v2-0092|2.9
* subject 1..1 
* subject only Reference(BwPatient or RestrictedPatient)
* period 1..1
* serviceProvider 0..1 MS
* serviceProvider only Reference(ServiceProvider)

Profile: BwPatient
Parent: Patient
Id: bw-patient
Title: "Botswana Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* obeys PatientIdentifier-1

* identifier 1..*

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

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

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing identifier based on the system value, false)

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
* for only Reference(BwPatient or RestrictedPatient)

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

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing identifier based on the system value, false)

* identifier contains
    PLAC 1..1

* identifier[PLAC].value 1..1
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"

* intent = #order

* code 1..1
* code from VSLabOrderCodes (extensible)

* subject 1..1
* subject only Reference(BwPatient or RestrictedPatient)

* encounter 0..1 MS
//* encounter only Reference(TargetFacilityEncounter)

* occurrenceDateTime 1..1

* requester 1..1
* requester only Reference(BwPractitioner or ServiceProvider)

* performer 1..*
* performer only Reference(BwPractitioner or ServiceProvider)

* specimen 1..*
* specimen only Reference(LabOrderSpecimen)

* locationCode from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType|2014-03-26

Profile: BwPractitioner
Parent: Practitioner
Id: practitioner
Title: "Practitioner"
Description: "Represents the practitioner who participated in the health related service."
* identifier 1..*

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

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

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing identifier based on the system value, false)

* identifier contains
    USID 1..1
  
* identifier[USID].value 1..1
* identifier[USID].system = "http://moh.bw.org/identifier/specimen-id"

* collection.fastingStatusCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0916|2.9
* container.additiveCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0371|2.9
* condition from http://terminology.hl7.org/ValueSet/v2-0493|2.9

* type 0..1 MS

* subject 1..1
* subject only Reference(BwPatient or RestrictedPatient)

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
* subject only Reference(BwPatient or RestrictedPatient)

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
* subject only Reference(BwPatient or RestrictedPatient)

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
Title: "Lab Orders Bundle"
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
Title: "Patient Identity Cross Reference"
Description: 
    "Is used by the Client Register (CR) to re-identify the patient with his/her corresponding longitudinal clinical record"
* identifier 1..1
* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    MasterPatientIndex 1..1

* identifier[MasterPatientIndex].value 1..1
* identifier[MasterPatientIndex].system = "http://moh.bw.org/identifier/mpi"

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
* managingOrganization 0..0
* contained 0..0
* link 0..0