Instance: RegisterNewPatient
InstanceOf: ExampleScenario
Usage: #definition
* name = "RegisterNewPatient"
* title = "Register New Patient"
* version = "1"
* status = #active
* experimental = false
* purpose = "This serves to demonstrate the creation of a patient record, when using a Client Registry (CR) and a FHIR datastore."

* insert ScenarioActor(PoS, system, Point of Service, The entity that registers the patient.)
* insert ScenarioActor(IL, system, Interoperability Layer, The entity that receives the registration request submitted by PoS entity.)
* insert ScenarioActor(CR, system, Client Registry, The entity that stores PII and demographic information for the patient included in the lab order bundle submitted by PoS entity.)
* insert ScenarioActor(FHIR, system, FHIR Server, The entity that stores clinical information for the patient included in the request submitted by PoS entity.)

* insert ScenarioInstance(pos.01, Patient, Data Supplying Patient Resource, The Patient involved in the scenario., BwPatient, BwPatientExample)
* insert ScenarioInstance(pos.09, Patient, Restricted Patient Resource, The restricted Patient Resource excl. all PII., RestrictedPatient, RestrictedPatientExample1)
* insert ScenarioInstance(pos.08, Bundle, Lab Order Bundle, The FHIR bundle provided by the PoS entity to create the patient record., LabOrdersBundle, lab-order-with-patient-bundle)
* insert ScenarioContainedInstance(pos.01)
* insert ScenarioInstance(pos.10, Bundle, Lab Order Bundle excl. PII, The FHIR bundle after being updated by the IL by replacing the \"Data Supplying Patient Resource\" with the \"Restricted Patient Resource\"., ProcessPatientInFHIRBundle, lab-order-with-restricted-patient-bundle)
* insert ScenarioContainedInstance(pos.09)

* insert ScenarioProcess(1, Register Patient in CR, 
    PoS entity has submitted the Lab Order Bundle which contains the Data Supplying Patient Resource.,
CR entity has stored the patient's personal information and sent a response back to the IL which inlcudes a MPI identifier.)

* process[=].step[=].process[+]
  * title = "Register Patient in CR"
  * description = "This scenario demonstrates the process of storing the patient's personal information in the CR, acquired from the Patient Resource and returning a Master Patient Index (MPI) identifier for the patient."

  * insert ScenarioProcessStep(1.1, New patient data, PoS, IL, Patient data contains PII and clinical information)
  * step[=]
    * operation
      * type = http://hl7.org/fhir/restful-interaction#update
      * request
        * instanceReference = "pos.08"

  * insert ScenarioProcessStep(1.2, Get patient data, IL, IL, Mediator extracts the patient data from the Patient Resource which includes all personal identifiers.)
  * step[=]
    * operation
      * initiatorActive = true

  * insert ScenarioProcessStep(1.3, Validate patient data, IL, FHIR, FHIR's $validate operation ensures that the supplied data is compliant with the Data Supplying Patient Resource Profile.)
  * step[=]
    * operation
      * type = http://hl7.org/fhir/restful-interaction#operation

  * insert ScenarioProcessStep(1.4, Validation response, FHIR, IL, FHIR issues a response to the validation request.)
  * step[=]
    * operation
      * receiverActive = true
    
  * insert ScenarioProcessStep(1.5, Validation success: Send patient data, IL, CR, Patient Resource is sent to the CR for processing.)
  * step[=]
    * operation
      * type = http://hl7.org/fhir/restful-interaction#update
      * receiverActive = true
      * request
        * instanceReference = "pos.01"

  * insert ScenarioProcessStep(1.6, Generate MPI and store patient data, CR, CR, CR associates a MPI with the patient record and stores it.)

  * insert ScenarioProcessStep(1.7, Assigned MPI, CR, IL, CR responds with an MPI for the patient.)
  * step[=]
    * operation
      * receiverActive = true

* insert ScenarioProcess(2, Register Patient in FHIR, 
    CR has provided a MPI identifier in its response sent back to the IL.,
    FHIR entity has processed the lab order bundle which incl. the Restricted Patient Resource that documents the MPI for re-identification purposes.)

* process[=].step[=].process[+]
  * title = "Register Patient in FHIR"
  * description = "This scenario demonstrates the process of storing a restricted version of the Patient Resource which excludes all PII to ensure patient privacy. This Patient Resource includes the MPI identifier issued by the CR so that the IL can reassociate the clinical information (FHIR) with the PII (CR) during GET requests."

  * insert ScenarioProcessStep(2.1, Remove Data Supplying Patient Resource, IL, IL, Remove the Data Supplying Patient Resource from the lab order bundle and replace it with the Restricted Patient Resource)
  * step[=]
    * operation
      * initiatorActive = false

  * insert ScenarioProcessStep(2.2, Add Restricted Patient Resource, IL, IL, Add the Restricted Patient Resource to the lab order bundle)
  * step[=]
    * operation
      * initiatorActive = false

  * insert ScenarioProcessStep(2.3, Add the MPI identifier, IL, IL, Add the MPI assigned by the CR as a business identifier in the Restricted Patient Resource)
  * step[=]
    * operation
      * initiatorActive = false

  * insert ScenarioProcessStep(2.4, Set the Restricted Patient Resource literal ID, IL, IL, Set the literal ID in the Restricted Patient Resource to the same value as the ID used as a patient reference in the other resources in the bundle. Note: There can only be one!.)
  * step[=]
    * operation
      * initiatorActive = false

  * insert ScenarioProcessStep(2.5, Send data for further validation, IL, FHIR, Lab order bundle is sent to the FHIR server for further processing.)
  * step[=]
    * operation
      * type = http://hl7.org/fhir/restful-interaction#update
      * initiatorActive = true
      * request
        * instanceReference = "pos.09"

  * insert ScenarioProcessStep(2.6, Request status, FHIR, IL, FHIR generates HTTP status code indicating the request outcome.)
  * step[=]
    * operation
      * receiverActive = true