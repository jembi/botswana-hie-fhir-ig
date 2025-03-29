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
* insert ScenarioInstance(pos.02, Endpoint, FHIR Search request, The search query to find a patient in FHIR using business identifiers., Endpoint, SearchForPatientInFHIR)
* insert ScenarioInstance(pos.03, Patient, Restricted Patient Resource, The restricted Patient Resource excl. all PII., RestrictedPatient, RestrictedPatientExample1)
* insert ScenarioInstance(pos.04, Bundle, Lab Order Bundle, The FHIR bundle provided by the PoS entity to create the patient record., LabOrdersBundle, lab-order-with-patient-bundle)
* insert ScenarioContainedInstance(pos.01)
* insert ScenarioInstance(pos.05, Bundle, Lab Order Bundle excl. PII, The FHIR bundle after being updated by the IL by replacing the \"Data Supplying Patient Resource\" with the \"Restricted Patient Resource\"., ProcessPatientInFHIRBundle, lab-order-with-restricted-patient-bundle)
* insert ScenarioContainedInstance(pos.03)
* insert ScenarioInstance(pos.06, Endpoint, CR Search request, The search query to find a patient in CR using XXX., Endpoint, SearchForPatientInCR)
* insert ScenarioInstance(pos.07, Endpoint, CR Search response, The response to the search request issued by the CR., Endpoint, SearchForPatientInCRResponse)

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
      * type = http://hl7.org/fhir/restful-interaction#search
      * request
        * instanceReference = "pos.06"
      * response
        * instanceReference = "pos.07"

  //* insert ScenarioProcessStep(1.3, Match patient, CR, CR, Find the patient's personal information in the CR matching the business identifiers supplied in the search request.)
  
  
  * insert ScenarioProcessStep(1.4, Successful match, IL, IL, IL asserts that the response from CR contains the patient's personally identifiable information for the patient and a MPI.)
  
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
      * response
        * instanceReference = "pos.05"

  /** insert ScenarioProcessStep(2.2, Find patient, FHIR, FHIR, Find the patient's record using the MPI supplied in the search request.)
  * step[=]
    * operation
      * initiatorActive = true
      * response
        * instanceReference = "pos.05"*/

  * insert ScenarioProcessStep(2.3, Success: record found, IL, IL, IL asserts that the response Bundle from FHIR contains the patient's clinical data as well as incl. the Restricted Patient Resource which contains non-personally identifiable information for the patient.)

* insert ScenarioProcess(3, Update Patient Record, 
    FHIR has responded with the patient's record.,
    IL has removed the Restricted Patient Resource from the bundle and replaced it with the Data Supplying Patient Resource.)

* process[=].step[=].process[+]
  * title = "Update Patient Record"
  * description = "This scenario demonstrates the process of updating the patient's record retrieved from FHIR by replacing the Restricted Patient Resource with the Data Supplying Patient Resource so that the patient's personal information can be included in the response back to the PoS."

  * insert ScenarioProcessStep(3.1, Remove Restricted Patient Resource, IL, IL, Mediator removes the Restricted Patient Resource from the bundle.)
  /** step[=]
    * operation
      * initiatorActive = false*/

  * insert ScenarioProcessStep(3.2, Insert Data Supplying Patient Resource, IL, IL, Mediator inserts the Data Supplying Patient Resource into the bundle and appends to it the patient's personal information and business identifiers as supplied by the CR.)
  