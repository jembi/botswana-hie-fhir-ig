Instance: CreateNewPatientRecord
InstanceOf: ExampleScenario
Usage: #definition
* name = "CreateNewPatientRecord"
* version = "1"
* status = #active
* experimental = false
* purpose = "Purpose: this serves to demonstrate the creation of Personally Identifiable Information (PII), when using A Client Registry (CR) and a FHIR datastore during Health Information Exchange (HIE)."

* insert ScenarioActor(PoS, entity, Point of Service, The entity that captures PII)
* insert ScenarioActor(IL, entity, Interoperability Layer, The entity that receives the requests submitted by PoS entities for HIE)
* insert ScenarioActor(CR, entity, Client Registry, The entity that stores PII and demoprahic information for the patient included in the PoS request)
* insert ScenarioActor(FHIR, entity, FHIR Server, The entity that stores clinical information for the patient included in the PoS request)

* insert ScenarioInstance(pos.01, Patient, Data Supplying Patient Resource, The Patient involved in the scenario.)
* insert ScenarioInstance(pos.09, Patient, Restricted Patient Resource, The restricted Patient Resource excl. all PII.)
//* insert ScenarioInstance(pos.02, Task, Task Resource, The task associated with the patient.)
//* insert ScenarioInstance(pos.03, ServiceRequest, ServiceRequest Resource, The lab order service request associated with the task.)
//* insert ScenarioInstance(pos.04, Specimen, Specimen Resource, The specimens associated with the lab order service request.)
//* insert ScenarioInstance(pos.05, DiagnosticReport, DiagnosticReport Resource, The diagnostic report associated for the lab order service request.)
//* insert ScenarioInstance(pos.06, Observation, Observation Resource, The lab results associated with the diagnostic report.)
//* insert ScenarioInstance(pos.07, Practitioner, Practitioner Resource, The practitioners associated with the lab order service request.)

* insert ScenarioInstance(pos.08, Bundle, Lab Order Bundle, The FHIR bundle provided by the PoS entity to create the patient record.)
* insert ScenarioContainedInstance(pos.01)
//* insert ScenarioContainedInstance(pos.02)
//* insert ScenarioContainedInstance(pos.03)
//* insert ScenarioContainedInstance(pos.04)
//* insert ScenarioContainedInstance(pos.05)
//* insert ScenarioContainedInstance(pos.06)
//* insert ScenarioContainedInstance(pos.07)

* insert ScenarioInstance(pos.10, Bundle, Lab Order Bundle excl. PII, The FHIR bundle after being updated by the IL by replacing the \"Data Supplying Patient Resource\" with the \"Restricted Patient Resource\".)
* insert ScenarioContainedInstance(pos.09)
//* insert ScenarioContainedInstance(pos.02)
//* insert ScenarioContainedInstance(pos.03)
//* insert ScenarioContainedInstance(pos.04)
//* insert ScenarioContainedInstance(pos.05)
//* insert ScenarioContainedInstance(pos.06)
//* insert ScenarioContainedInstance(pos.07)

* insert ScenarioProcess(Register Patient, 
    PoS entity has submitted the FHIR Bundle Resource for HIE,
    CR entity has stored the patient's personal information and sent a response back to the IL which inlcudes a MPI identifier)

* process[=].step[+].process[+]
  * title = "Register Patient in CR"
  * description = "This scenario demonstrates the process of storing the patient's personal information acquired from the Patient Resource in the CR and returning a Master Patient Index (MPI) identifier for the patient."

  * insert ScenarioProcessStep(1, New patient data, PoS, IL, Patient data contains PII and clinical information)
  * step[=]
    * operation
      * request
        * resourceId = "pos.08"

  * insert ScenarioProcessStep(2, Get patient data, IL, IL, Mediator extracts the patient data from the Patient Resource which includes all personal identifiers.)
  * step[=]
    * operation
      * initiatorActive = true

  * insert ScenarioProcessStep(3, Send patient data, IL, CR, Patient Resource is sent to the CR for processing.)
  * step[=]
    * operation
      * request
        * resourceId = "pos.01"

  * insert ScenarioProcessStep(4, Generate MPI and store patient data, CR, CR, CR associates a MPI with the patient record and stores it.)

  * insert ScenarioProcessStep(5, Assigned MPI, CR, IL, CR responds with an MPI for the patient.)
  * step[=]
    * operation
      * receiverActive = true

* process[=].step[+].process[+]
  * title = "Register Patient in FHIR"
  * description = "This scenario demonstrates the process of storing a restricted version of the Patient Resource which excludes all PII to ensure patient privacy. This Patient Resource includes the MPI identifier issued by the CR so that the IL can reassociate the clinical information (FHIR) with the PII (CR) during GET requests."

  * insert ScenarioProcessStep(1, Remove Data Supplying Patient Resource, IL, IL, Remove the Data Supplying Patient Resource from the lab order bundle and replace it with the Restricted Patient Resource)

  * insert ScenarioProcessStep(2, Add the MPI identifier, IL, IL, Add the MPI assigned by the CR as a business identifier in the Restricted Patient Resource)
  * step[=]
    * operation
      * request
        * resourceId = "pos.10"
