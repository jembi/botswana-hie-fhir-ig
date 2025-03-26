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
* insert ScenarioActor(CR, system, Client Registry, The entity that stores PII and demographic information for the patient included in the registration request submitted by PoS entity.)
* insert ScenarioActor(FHIR, system, FHIR Server, The entity that stores clinical information for the patient included in the request submitted by PoS entity.)

* insert ScenarioInstance(pos.01, Patient, Data Supplying Patient Resource, The Patient involved in the scenario.)
* insert ScenarioInstance(pos.09, Patient, Restricted Patient Resource, The restricted Patient Resource excl. all PII.)
* insert ScenarioInstance(pos.08, Bundle, Lab Order Bundle, The FHIR bundle provided by the PoS entity to create the patient record.)
* insert ScenarioContainedInstance(pos.01)
* insert ScenarioInstance(pos.10, Bundle, Lab Order Bundle excl. PII, The FHIR bundle after being updated by the IL by replacing the \"Data Supplying Patient Resource\" with the \"Restricted Patient Resource\".)
* insert ScenarioContainedInstance(pos.09)

* insert ScenarioProcess(1, Register Patient in CR, 
    PoS entity has submitted the FHIR Bundle Resource for HIE.,
    CR entity has stored the patient's personal information and sent a response back to the IL which inlcudes a MPI identifier.)

* process[=].step[=].process[+]
  * title = "Register Patient in CR"
  * description = "This scenario demonstrates the process of storing the patient's personal information acquired from the Patient Resource in the CR and returning a Master Patient Index (MPI) identifier for the patient."

  * insert ScenarioProcessStep(1.1, New patient data, PoS, IL, Patient data contains PII and clinical information)
  * step[=]
    * operation
      * request
        * instanceReference = "pos.08"

  * insert ScenarioProcessStep(1.2, Get patient data, IL, IL, Mediator extracts the patient data from the Patient Resource which includes all personal identifiers.)
  * step[=]
    * operation
      * initiatorActive = true

  * insert ScenarioProcessStep(1.3, Validate patient data, IL, FHIR, FHIR's $validate operation ensures that the supplied data is compliant with the Data Supplying Patient Resource Profile.)

  * insert ScenarioProcessStep(1.4, Validation response, FHIR, IL, FHIR issues a response to the validation request.)
  * step[=]
    * operation
      * receiverActive = true
    
  * insert ScenarioProcessStep(1.5, Validation success: Send patient data, IL, CR, Patient Resource is sent to the CR for processing.)
  * step[=]
    * operation
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
    FHIR entity has stored the MPI in the Restricted Patient Resource.)

* process[=].step[=].process[+]
  * title = "Register Patient in FHIR"
  * description = "This scenario demonstrates the process of storing a restricted version of the Patient Resource which excludes all PII to ensure patient privacy. This Patient Resource includes the MPI identifier issued by the CR so that the IL can reassociate the clinical information (FHIR) with the PII (CR) during GET requests."

  * insert ScenarioProcessStep(2.1, Remove Data Supplying Patient Resource, IL, IL, Remove the Data Supplying Patient Resource from the lab order bundle and replace it with the Restricted Patient Resource)
  * step[=]
    * operation
      * initiatorActive = true

  * insert ScenarioProcessStep(2.2, Add the MPI identifier, IL, IL, Add the MPI assigned by the CR as a business identifier in the Restricted Patient Resource)