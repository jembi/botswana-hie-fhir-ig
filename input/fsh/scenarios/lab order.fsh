Instance: SubmitNewLabOrders
InstanceOf: ExampleScenario
Usage: #definition
* name = "SubmitNewLabOrders"
* title = "Submit New Lab Orders (Using a Bundle)"
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

* insert ScenarioInstanceWithVersion(laborder.02, ServiceRequest, Service Request Resource, The service request for the lab order to be carried out., LabOrderServiceRequest, LabOrderActiveServiceRequestExample, laborder.service-request.ver.01, Lab Order Service Request ver 1, The active service request attatched to Task Resource that is in progress.)
* insert ScenarioContainedInstance(laborder.01)
* insert ScenarioContainedInstanceWithVersion(laborder.04, laborder.specimen.ver.01)

* insert ScenarioInstanceWithVersion(laborder.03, Task, Task Resource, Tracks the state of completion of the lab order., LabOrderTask, LabOrderTaskExample, laborder.task.ver.01, Lab Order Task ver 1, The lab order request has started.)
* insert ScenarioContainedInstance(laborder.01)
* insert ScenarioContainedInstanceWithVersion(laborder.02, laborder.service-request.ver.01)

* insert ScenarioInstanceWithVersion(laborder.04, Specimen, Specimen Resource, The specimen associated with the lab order., LabOrderSpecimen, AvailableSpecimenForActiveRequestsExample, laborder.specimen.ver.01, Lab Order Specimen ver 1, The specimen attatched to the active Service Request Resource.)
* insert ScenarioContainedInstance(laborder.01)
* insert ScenarioContainedInstanceWithVersion(laborder.02, laborder.service-request.ver.01)

* insert ScenarioInstance(laborder.05, Endpoint, Outcome response, FHIR issues an outcome response to each CRUD request., Endpoint, FHIRResourceProcessResponse)

* insert ScenarioInstance(laborder.06, Bundle, Lab Order Bundle, The FHIR bundle provided by the PoS entity when submitting the lab order service request., LabOrdersBundle, lab-order-with-patient-bundle)
* insert ScenarioContainedInstance(laborder.01)
* insert ScenarioContainedInstanceWithVersion(laborder.03, laborder.task.ver.01)
* insert ScenarioContainedInstanceWithVersion(laborder.04, laborder.specimen.ver.01)
* insert ScenarioContainedInstanceWithVersion(laborder.02, laborder.service-request.ver.01)

* insert ScenarioProcess(1, Create Lab Order, 
  PoS entity has submitted a lab order request.,
  FHIR entity has stored the lab order details for the patient.)

* process[=].step[=].process[+]
  * title = "Create Lab Order"
  * description = "This scenario demonstrates the process of storing the patient's lab order information in the FHIR datastore."

  * insert ScenarioProcessStep(1.1, Submit lab order, PoS, IL, Lab order information)
  * step[=]
    * operation
      * type = $RestfulInteractionCodeSystem#update
      * request
        * instanceReference = "laborder.06"
    
  * insert ScenarioProcessStep(1.2, Invoke FHIR mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint for creating the lab order information in FHIR.)