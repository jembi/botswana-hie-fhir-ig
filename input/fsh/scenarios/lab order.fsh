Instance: SubmitNewLabOrders
InstanceOf: ExampleScenario
Usage: #definition
* name = "SubmitNewLabOrders"
* title = "Submit New Lab Orders"
* version = "1"
* status = #active
* experimental = false
* purpose = "This serves to demonstrate the submission of a new lab orders, from the Point-of-Service (PoS) application to the FHIR datastore."

* insert ScenarioActor(PoS, system, Point of Service, The entity that creates the lab order.)
* actor[=]
  * extension[+].valueReference = Reference(PIMSActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"
  * extension[+].valueReference = Reference(OpenMRSActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioActor(IL, system, Interoperability Layer, The entity that receives the lab order request submitted by the PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(InteroperabilityLayerActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioActor(FHIR, system, FHIR Server, The entity that stores the details for the lab order submitted by the PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(SHRActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioActor(IPMS, system, Integrated Patient Management System, The entity that captures the lab results.)
* actor[=]
  * extension[+].valueReference = Reference(IPMSActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioInstance(laborder.01, Patient, Patient Resource, The patient associated with the lab order., BwPatient, BwPatientExample)
* insert ScenarioInstanceWithVersion(laborder.02, ServiceRequest, Service Request Resource, The service request for the lab order to be carried out., LabOrderServiceRequest, LabOrderActiveServiceRequestExample, laborder.service-request.ver.01, Lab Order Service Request, The active service request attatched to Task Resource that is in progress.)
* insert ScenarioInstanceWithVersion(laborder.03, Task, Task Resource, Tracks the state of completion of the lab order., LabOrderTask, LabOrderTaskExample, laborder.task.ver.01, Lab Order Task, The lab order request has started.)
* insert ScenarioContainedInstance(laborder.01)
* insert ScenarioContainedInstanceWithVersion(laborder.02, laborder.service-request.ver.01)
