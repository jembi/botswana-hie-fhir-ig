Instance: RetrievePatient
InstanceOf: ExampleScenario
Usage: #definition
* name = "RetrievePatient"
* title = "Retrieve Patient"
* version = "1"
* status = #active
* experimental = false
* purpose = "This serves to demonstrate the retrieval of a patient's record, from the Client Registry (CR) and a FHIR datastore."

* insert ScenarioActor(PoS, system, Point of Service, The entity that submits a request for a patient record.)
* insert ScenarioActor(IL, system, Interoperability Layer, The entity that retrieves the patient data from the CR and FHIR entities.)
* insert ScenarioActor(CR, system, Client Registry, The entity that will provide PII and demographic information for the patient.)
* insert ScenarioActor(FHIR, system, FHIR Server, The entity that will provide the clinical information for the patient.)