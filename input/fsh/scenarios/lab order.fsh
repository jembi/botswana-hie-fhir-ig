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

* insert ScenarioInstance(laborder.07, Endpoint, FHIR request, FHIR processes each request in the bundle using the HTTP request method defined for each Resource included in the Bundle., Endpoint, ProcessFHIRBundle)
* insert ScenarioContainedInstance(laborder.06)

/** process[+]
  * title = "Register Patient"
  * step[+]
    * number = "1.1"
    * workflow = Canonical(RegisterNewPatientInBundle)*/

* insert ScenarioProcess(1, Lab Order, 
  PoS entity has submitted a lab order request.,
  FHIR entity has stored the lab order details for the patient and sent an outcome response for the request to the IL entity.)

* process[=].step[=].process[+]
  * title = "Lab Order"
  * description = "This scenario demonstrates the process of storing the patient's lab order information in the FHIR datastore."

  * insert ScenarioProcessStep(1.1, Submit lab order, PoS, IL, Lab order information)
  * step[=]
    * operation
      * type = $RestfulInteractionCodeSystem#update
      * request
        * instanceReference = "laborder.06"
    
  * insert ScenarioProcessStep(1.2, Invoke FHIR mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint for creating the lab order information in FHIR.)
  * step[=]
    * operation
      * initiatorActive = true

  * insert ScenarioProcessStep(1.3, Send data for consumption, IL, FHIR, Request for FHIR to process the information in the lab order bundle.)
  * step[=]
    * operation
      * type = $RestfulInteractionCodeSystem#update
      * request
        * instanceReference = "laborder.07"
      * response
        * instanceReference = "laborder.05"

  * insert ScenarioProcessStep(1.4, Success: Invoke IL mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint that must send a response back the PoS system who initiated the lab order request.)

* insert ScenarioProcess(2, Respond to Lab Order Request, 
    FHIR entity has processed the request to create the lab order information and has issued an outcome response.,
    IL entity has received the outcome response from FHIR and forwarded the response to the PoS system.)

* process[=].step[=].process[+]
  * title = "Respond to Lab Order Request"
  * description = "This scenario demonstrates the process for responding to the PoS sytem who submitted the lab order request."

  * insert ScenarioProcessStep(2.1, Response, IL, PoS, Mediator responds to the create patient request.)
  * step[=]
    * operation
      * request
        * instanceReference = "laborder.05"
  
  * insert ScenarioProcessStep(2.2, Log the outcome, PoS, PoS, PoS entity logs the outcome issued by the FHIR entity.)
  * step[=]
    * operation
      * receiverActive = true