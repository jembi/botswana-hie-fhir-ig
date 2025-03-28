Instance: RetrievePatientRecord
InstanceOf: ExampleScenario
Usage: #definition
* name = "RetrievePatientRecord"
* title = "Retrieve Patient Record"
* version = "1"
* status = #active
* experimental = false
* purpose = "This serves to demonstrate the retrieval of a patient's record, from the Client Registry (CR) and a FHIR datastore."

* insert ScenarioActor(PoS, system, Point of Service, The entity that submits a request for a patient record.)
* insert ScenarioActor(IL, system, Interoperability Layer, The entity that retrieves the patient data from the CR and FHIR entities.)
* insert ScenarioActor(CR, system, Client Registry, The entity that will provide PII and demographic information for the patient.)
* insert ScenarioActor(FHIR, system, FHIR Server, The entity that will provide the clinical information for the patient.)

* insert ScenarioInstance(pos.01, Patient, Data Supplying Patient Resource, The Patient involved in the scenario., BwPatient, BwPatientExample)
* insert ScenarioInstance(pos.02, Endpoint, Search request, The search query., Endpoint, SearchForPatient)

* insert ScenarioProcess(1, Retrieve Patient in CR, 
    PoS entity has submitted a request for the patient's record,
    CR entity has responded with the patient's personal information which includes a MPI identifier.)

* process[=].step[=].process[+]
  * title = "Retrieve Patient in CR"
  * description = "This scenario demonstrates the process of retrieving the patient's personal information in the CR, which includes the Master Patient Index (MPI) identifier for the patient."

  * insert ScenarioProcessStep(1.1, Request for patient record, PoS, IL, Request contains one or more business identifiers.)
  * step[=]
    * operation
      * receiverActive = true
      * type = http://hl7.org/fhir/restful-interaction#search
      * request
        * instanceReference = "pos.02"

  * insert ScenarioProcessStep(1.2, Find patient, IL, CR, Request fo find the patient's personal information in the CR.)
  * step[=]
    * operation
      * receiverActive = true
      * type = http://hl7.org/fhir/restful-interaction#search

  * insert ScenarioProcessStep(1.3, Match patient, CR, CR, Find the patient's personal information in the CR matching the business identifiers supplied in the search request.)
  
  * insert ScenarioProcessStep(1.4, Successful match, CR, IL, CR issues a HTTP response to the request which may include the patient's personal information and assigned MPI identifier.)
  * step[=]
    * operation
      * receiverActive = false
  
* insert ScenarioProcess(2, Retrieve Patient Record in FHIR, 
    CR has matched the patient using provided business identifiers and responded to the IL with the patient's personal information which includes a MPI identifier.,
    FHIR entity has found the patient record using using the MPI.)

* process[=].step[=].process[+]
  * title = "Retrieve Patient Record in FHIR"
  * description = "This scenario demonstrates the process of retrieving the patient's record in FHIR, using the MPI."

  * insert ScenarioProcessStep(2.1, Get patient record, IL, FHIR, Mediator uses the patient's MPI and executes a search request for the patient's record.)
  * step[=]
    * operation
      * type = http://hl7.org/fhir/restful-interaction#search
      * request
        * instanceReference = "pos.02"

  * insert ScenarioProcessStep(2.2, Find patient, FHIR, FHIR, Find the patient's record using the MPI supplied in the search request.)
  * step[=]
    * operation
      * initiatorActive = true
      //* receiverActive = true

  * insert ScenarioProcessStep(2.3, Success: record found, FHIR, IL, FHIR responds with bundle containing the patient's clinical data as well as Restricted Patient Resource which contains non-personally identifiable information.)