Profile: ServiceProvider
Parent: Organization
Id: service-organization
Title: "Organization"
Description: "Organization providing health related services."
* identifier 1..*
* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    MOHID 0..1 MS and // Ministry of Health Identifier
    HFUID 0..1 MS and // Health Facility Identifier
    MFL 0..1 MS

* identifier[MOHID].value 1..1
* identifier[MOHID].system = "http://moh.bw.org/identifier/mohid"

* identifier[HFUID].value 1..1
* identifier[HFUID].system = "http://moh.bw.org/identifier/hfuid"

* identifier[MFL].value 1..1
* identifier[MFL].value from VSMasterFacilityListCodes (extensible)
* identifier[MFL].system = "http://moh.bw.org//identifier/mfl-code"

* active 1..1
* name 1..1

/** type 1..*
* type from VSServiceProviderType (extensible)
* type.text 1..1*/

* address 1..1
//* address.state 1..1
* address.line 0..* MS
* address.line ^definition = "Indicates a reason to support the address line. For example, to capture the physical address of the organization."
* address.city 1..1
* address.district 0..1 MS
* address.district ^definition = "Indicates a reason to support the address district. For example, to capture the district where the organization is located."

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
* subject only Reference(BwPatient)
* period 1..1
* period.start 1..1
* period.end 0..1 MS
* period.end ^definition = "Indicates a reason to support the period end. For example, to capture the end date for the encounter."
* serviceProvider 1..1
* serviceProvider only Reference(ServiceProvider)

Profile: BwPatient
Parent: Patient
Id: bw-patient
Title: "Botswana Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
/* meta 0..1 MS
* meta ^definition = "reason(s) why this should be supported."
* meta.tag 0..* MS
* meta.tag ^definition = "reason(s) why this should be supported."


* insert Slice(meta.tag, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* meta.tag contains
    OpenMRS 0..1 MS and
    Facility 0..1 MS

* meta.tag[OpenMRS] ^definition = "reason(s) why this should be supported."
* meta.tag[OpenMRS].code 1..1
* meta.tag[OpenMRS].system = "http://openclientregistry.org/fhir/source"

* meta.tag[Facility] ^definition = "reason(s) why this should be supported."
* meta.tag[Facility].code 1..1
* meta.tag[Facility].system = "http://openclientregistry.org/fhir/facility"*/
* obeys PatientIdentifier-OpenMRS-PIMS
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

* identifier[MRN] ^definition = "Indicates a reason to support the identifier slice for MRN. For example, to allow EMR systems to capture the identifier for the patient"
* identifier[MRN].value 1..1
* identifier[MRN].system = "http://moh.bw.org/identifier/mrn"

* identifier[OMANG] ^definition = "Indicates a reason to support the identifier slice for OMANG. For example, to allow participating systems to capture the identifier for the patient"
* identifier[OMANG].value 1..1
* identifier[OMANG].system = "http://moh.bw.org//identifier/omang"

* identifier[Birth] ^definition = "Indicates a reason to support the slice for Birth identifier. For example, to allow participating systems to capture the identifier for the patient"
* identifier[Birth].value 1..1
* identifier[Birth].system = "http://moh.bw.org//identifier/birth"

* identifier[Passport] ^definition = "Indicates a reason to support the slice for Passport identifier. For example, to allow participating systems to capture the identifier for the patient"
* identifier[Passport].value 1..1
* identifier[Passport].system = "http://moh.bw.org//identifier/passport"

* identifier[Internal] ^definition = "Indicates a reason to support the slice for Internal identifier. For example, to allow participating systems to capture the identifier for the patient"
* identifier[Internal].value 1..1
* identifier[Internal].system = "http://moh.bw.org//identifier/internalid"

* identifier[PIMS] ^definition = "Indicates a reason to support the slice for PIMS identifier. For example, to allow participating systems to capture the identifier for the patient"
* identifier[PIMS].value 1..1
* identifier[PIMS].system = "http://moh.bw.org//identifier/pims"

* identifier[OpenMRS] ^definition = "Indicates a reason to support the slice for OpenMRS identifier. For example, to allow participating systems to capture the identifier for the patient"
  //* obeys PatientIdentifier-OpenMRS-PIMS
* identifier[OpenMRS].value 1..1
* identifier[OpenMRS].system = "http://moh.bw.org//identifier/openmrs"

* name 1..*
* name.given 1..*
* name.family 1..1

* gender 1..1
* birthDate 1..1
* maritalStatus 0..1 MS
* maritalStatus ^definition = "Indicates a reason to support the marital status. For example, to capture the marital status for the patient."
* address 0..* MS
* address ^definition = "Indicates a reason to support the address. For example, to capture the full address of the patient."
* address.line 0..* MS
* address.line ^definition = "Indicates a reason to support the address line. For example, to capture the physical address of the patient."
* address.city 0..1 MS
* address.city ^definition = "Indicates a reason to support the address city. For example, to capture the city where the patient is resides."
* address.district 0..1 MS
* address.district ^definition = "Indicates a reason to support the address district. For example, to capture the district where the patient is resides."
//* address.state 0..1 MS
//* address.state ^definition =
//    "reason(s) why this should be supported."

* telecom 0..* MS
* telecom ^definition = "Indicates a reason to support the telecom. For example, to capture phone number or email details for the patient."

* managingOrganization 1..1
* managingOrganization only Reference(ServiceProvider)

Profile: LabOrderTask
Parent: Task
Id: lab-order-task
Title: "Lab Order Task"
Description: "Assists with tracking the state of the lab order and its completion status."
* identifier 1..*

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing identifier based on the system value, false)

* identifier contains
    FILL 1..1 // FILL = Filler Identifier
  
* identifier[FILL].value 1..1
* identifier[FILL].system = "http://moh.bw.org/identifier/task-id"

* basedOn 1..*
* basedOn only Reference(LabOrderServiceRequest)

* statusReason 0..1 MS
* statusReason ^definition = "Indicates a reason to support the status. For example, why the lab order was cancelled or rejected"
* statusReason ^short = "Indicates a reason for the lab order being cancelled or rejected."
* statusReason from VSReasonForSampleCancellationOrRejection (extensible)
* intent = #order
* executionPeriod 1..1
* requester 1..1
* requester only Reference(GeneralPractitioner or ServiceProvider)
* for 1..1
* for only Reference(BwPatient)
* owner 1..1
* owner only Reference(GeneralPractitioner or ServiceProvider)
* output 0..* MS
* output ^definition = "Indicates artifacts that are directly associated with the task. For example, the specimen used or the diagnostic report for successfully completed lab orders"
* output ^short = "Indicates artifacts directly associated with the task."
* output.type 1..1
* output.type.text 1..1
* output.valueReference 1..1
* output.valueReference only Reference(LabOrderDiagnosticReport)

Profile: LabOrderServiceRequest
Parent: ServiceRequest
Id: lab-order-service-request
Title: "Lab Order Service Request"
Description: "Represents the service request for OpenMRS lab orders."
* identifier 1..*

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing identifier based on the system value, false)

* identifier contains
    PLAC 1..1 //PLAC = Placer Identifier

* identifier[PLAC].value 1..1
* identifier[PLAC].system = "http://moh.bw.org/identifier/service-request-id"

* intent = #order
* code 1..1
* code from VSLabOrderCodes (extensible)
* subject 1..1
* subject only Reference(BwPatient)
* encounter 0..1 MS
* encounter ^definition = "Indicates a reason to support the encounter. For example, to capture the encounter details that triggered the service request."
* encounter only Reference(TargetFacilityEncounter)
* occurrenceDateTime 1..1
* requester 1..1
* requester only Reference(GeneralPractitioner or ServiceProvider)
* performer 1..*
* performer only Reference(GeneralPractitioner or ServiceProvider)
* specimen 1..1
* specimen only Reference(LabOrderSpecimen)
* locationCode from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType|2014-03-26

Profile: GeneralPractitioner
Parent: Practitioner
Id: practitioner
Title: "Practitioner - General Practitioner"
Description: 
    "Represents the practitioner who participated in the health related service."
* identifier 1..*

* insert Slice(identifier, reasons why this should be supported, value, system, open, Slicing the identifier based on the system value, false)

* identifier contains
    OMANG 0..1 MS

* identifier[OMANG] ^definition = "Indicates a reason to support the identifier slice for OMANG. For example, to allow participating systems to capture the identifier for the practitioner."
* identifier[OMANG].value 1..1
* identifier[OMANG].system = "http://moh.bw.org//identifier/omang"

* name 1..*
* name.given 1..*
* name.family 1..1
* name.prefix 0..* MS
* name.prefix ^definition = "Indicates a reason to support the prefix for the name. For example, to allow participating systems to capture the prefix as part of the patient name."
* telecom 1..*

Profile: LabOrderSpecimen
Parent: Specimen
Id: lab-order-specimen
Title: "Lab Order Specimen"
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

* type 1..1
* type from http://hl7.org/fhir/uv/ips/ValueSet/results-specimen-type-uv-ips (extensible) //VSSpecimenType

  * ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.extension[=].extension[+].url = "purpose"
  * ^binding.extension[=].extension[=].valueCode = #extensible
  * ^binding.extension[=].extension[+].url = "valueSet"
  * ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-specimen-type-uv-ips"
  * ^binding.extension[=].extension[+].url = "documentation"
  * ^binding.extension[=].extension[=].valueMarkdown = "Results Specimen Type - SNOMED CT IPS Free Set"

  //* ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  //* ^binding.extension[=].extension[+].url = "purpose"
  //* ^binding.extension[=].extension[=].valueCode = #extensible
  //* ^binding.extension[=].extension[+].url = "valueSet"
  //* ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/results-specimen-type-uv-ips"
  //* ^binding.extension[=].extension[+].url = "documentation"
  //* ^binding.extension[=].extension[=].valueMarkdown = "Results Specimen Type - IPS"

* subject 1..1
* subject only Reference(BwPatient)

* request 1..*
* request only Reference(LabOrderServiceRequest)

* collection 1..1
* collection.collected[x] only dateTime
* collection.collectedDateTime 1..1
* receivedTime 0..1 MS
* receivedTime ^definition = "Indicates a reason to support the received time for the specimen. For example, to allow participating systems to capture the time to indicate when the specimen was received."

Profile: DiagnosticTestResultObservation
Parent: Observation
Id: diagnostic-test-result-observation
Title: "Lab Result Observation"
Description: "Documents the patient's diagnostic test result."
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text 1..1
* value[x] 1..1
* subject 1..1
* subject only Reference(BwPatient)
* encounter 0..1 MS
* encounter ^definition = "Indicates a reason to support the encounter. For example, to capture the encounter details that triggered the observation."
* encounter only Reference(TargetFacilityEncounter)
* effectiveDateTime 1..1
* performer 1..*
* performer only Reference(ServiceProvider or GeneralPractitioner)
* specimen 1..1
* specimen only Reference(LabOrderSpecimen)

Profile: LabOrderDiagnosticReport
Parent: DiagnosticReport
Id: lab-order-diagnostic-report
Title: "Lab Order Diagnostic Report"
Description: "Represents the results for the lab order."
* category 1..1
* category = $LNC#11502-2
* code.text 1..1
* subject 1..1
* subject only Reference(BwPatient)
* encounter 0..1 MS
* encounter ^definition = "Indicates a reason to support the encounter. For example, to capture the encounter details that triggered the diagnostic report."
* encounter only Reference(TargetFacilityEncounter)
* result 1..1
* result only Reference(DiagnosticTestResultObservation)
* issued 1..1

* basedOn 1..1
* basedOn only Reference(LabOrderServiceRequest)

* performer 1..*
* performer only Reference(GeneralPractitioner or ServiceProvider)

/*Profile: LabReportComposition
Parent: Composition
Id: lab-report-composition
Title: "Composition - Lab report"
Description: "Clinical document used to represent the outcome for a lab order and when applicable, with lab results."
* identifier.value 1..1
* identifier.system 1..1
* identifier.system = "http://moh.bw.org/identifier/lab-report-document"
* status 1..1
* subject 1..1
* subject only Reference(PimsUATBwPatient or OpenMrsUATBwPatient)
* encounter 1..1
* encounter only Reference(UATTargetFacilityEncounter)
* type 1..1
* type = $LNC#11502-2
* date 1..1
* author 1..*
* author only Reference(UATPractitioner or UATServiceProvider)
* title 1..1
* section 1..*

* insert Slice(section, reasons why this should be supported, value, code, open, Slicing sections based on the code value, false)

* section contains
    sectionPractitioners 1..1 and
    sectionServiceRequest 1..1 and
    sectionTask 1..1 and
    sectionSpecimen 1..1 and
    sectionObservations 0..1 MS and
    sectionDiagnosticReport 0..1 MS

* section[sectionObservations] ^definition =
    "reason(s) why this should be supported."

* section[sectionDiagnosticReport] ^definition =
    "reason(s) why this should be supported."

* insert CompositionEntry(Practitioner, UATPractitioner, sectionPractitioners, $LNC#LA9327-3, List of practitioners section, practitioner, 
    Practitioners relevant for the scope of the lab report, This lists the practitioners relevant for the scope of the lab report., 1..*)

* insert CompositionEntry(ServiceRequest, PimsServiceRequest or OpenMrsServiceRequest, sectionServiceRequest, $SCT#165332000, Lab order summary section, serviceRequest, 
    Lab order relevant for the scope of the lab report, This lists the lab order relevant for the scope of the lab report., 1..1)

* insert CompositionEntry(Task, UATLabTask, sectionTask, $LNC#92235-1, Task summary section, task, 
    Task relevant for the scope of the lab report, This lists the task that is relevant for the scope of the lab report., 1..1)

* insert CompositionEntry(Specimen, UATSpecimen, sectionSpecimen, $LNC#LP404274-5, Specimen summary section, specimen, 
    Specimen relevant for the scope of the lab report, This lists the specimen relevant for the scope of the lab report., 1..1)

* insert CompositionEntry(Observation, UATDiagnosticTestResultObservation, sectionObservations, $LNC#LP281480-6, Lab results summary section, result, 
    Lab results relevant for the scope of the lab report, This lists the lab results relevant for the scope of the lab report., 1..*)

* insert CompositionEntry(DiagnosticReport, UATDiagnosticReport, sectionDiagnosticReport, $LNC#LP420386-7, Diagnostic report summary section, report, 
    Diagnostic report relevant for the scope of the lab report, This lists the diagnostic report relevant for the scope of the lab report., 1..1)*/

/*Profile: PimsServiceRequest
Parent: UATGenericServiceRequest
Id: uat-pims-lab-order-service-request
Title: "Service Request - PIMS Lab Orders"
Description: "Represents the service request for PIMS lab orders."
* code from VSPimsLabOrderCodes (extensible)

Profile: OpenMrsServiceRequest
Parent: UATGenericServiceRequest
Id: uat-openmrs-lab-order-service-request
Title: "Service Request - OpenMRS Lab Orders"
Description: "Represents the service request for OpenMRS lab orders."
* code from VSOpenMrsLabOrderCodes (extensible)*/

/*Profile: PimsUATLabTask
Parent: GenericUATLabTask
Id: uat-pims-lab-order-task
Title: "Task - PIMS Lab Orders"
Description: "Assists with tracking the state of the lab order and its completion status."
* basedOn only Reference(PimsServiceRequest)
* output.valueReference only Reference(PimsUATDiagnosticReport)
* for only Reference(PimsUATBwPatient)

Profile: OpenMrsUATLabTask
Parent: GenericUATLabTask
Id: uat-openmrs-lab-order-task
Title: "Task - OpenMRS Lab Orders"
Description: "Assists with tracking the state of the lab order and its completion status."
* basedOn only Reference(OpenMrsServiceRequest)
* output.valueReference only Reference(OpenMrsUATDiagnosticReport)
* for only Reference(OpenMrsUATBwPatient)*/

/*Profile: PimsUATSpecimen
Parent: GenericUATSpecimen
Id: uat-pims-specimen
Title: "Specimen - PIMS Lab Orders"
Description: "The specimen associated with the lab order."
//* request only Reference(PimsServiceRequest)
* subject only Reference(PimsUATBwPatient)

Profile: OpenMrsUATSpecimen
Parent: GenericUATSpecimen
Id: uat-openmrs-specimen
Title: "Specimen - OpenMRS Lab Orders"
Description: "The specimen associated with the lab order."
//* request only Reference(OpenMrsServiceRequest)
* subject only Reference(OpenMrsUATBwPatient)*/

/*Profile: PimsUATDiagnosticReport
Parent: GenericUATDiagnosticReport
Id: uat-pims-diagnostic-report
Title: "Diagnostic Report - PIMS Lab Result"
Description: "Represents the results for the lab order."
* basedOn only Reference(PimsServiceRequest)
* result only Reference(PimsUATDiagnosticTestResultObservation)

Profile: OpenMrsUATDiagnosticReport
Parent: GenericUATDiagnosticReport
Id: uat-openmrs-diagnostic-report
Title: "Diagnostic Report - OpenMRS Lab Result"
Description: "Represents the results for the lab order."
* basedOn only Reference(OpenMrsServiceRequest)
* result only Reference(OpenMrsUATDiagnosticTestResultObservation)*/

/*Profile: PimsUATDiagnosticTestResultObservation
Parent: GenericUATDiagnosticTestResultObservation
Id: uat-pims-diagnostic-test-result-observation
Title: "Observation - PIMS Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* specimen only Reference(PimsUATSpecimen)

Profile: OpenMrsUATDiagnosticTestResultObservation
Parent: GenericUATDiagnosticTestResultObservation
Id: uat-openmrs-diagnostic-test-result-observation
Title: "Observation - OpenMRS Diagnostic Test Result"
Description: "Documents the patient's diagnostic test result."
* specimen only Reference(OpenMrsUATSpecimen)*/

/*Profile: PimsUATBwPatient
Parent: GenericUATBwPatient
Id: uat-pims-patient
Title: "Patient - PIMS"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier contains
    PIMS 1..1

* identifier[PIMS].value 1..1
* identifier[PIMS].system = "http://moh.bw.org//identifier/pims"

Profile: OpenMrsUATBwPatient
Parent: GenericUATBwPatient
Id: uat-openmrs-patient
Title: "Patient - OpenMRS"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier contains
    OpenMRS 1..1

* identifier[OpenMRS].value 1..1
* identifier[OpenMRS].system = "http://moh.bw.org//identifier/openmrs"*/