Instance: RejectLabOrder
InstanceOf: ExampleScenario
Usage: #definition
* name = "RejectLabOrder"
* title = "Reject Lab Order (Using a Bundle)"
* version = "1"
* status = #active
* experimental = false
* purpose = "This serves to demonstrate the submission of a request to reject an active lab order, from the Point-of-Service (PoS) application to the FHIR datastore."

* insert ScenarioActor(PoS, system, Point of Service, The entity that request the lab order rejection.)
* actor[=]
  * extension[+].valueReference = Reference(PIMSActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioActor(IL, system, Interoperability Layer, The entity that receives the lab order rejection request submitted by the PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(InteroperabilityLayerActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioActor(FHIR, system, FHIR Server, The entity that stores the rejection details for the lab order previously submitted by the PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(SHRActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioInstance(laborder.01, Endpoint, Outcome response, FHIR issues an outcome response to each CRUD request., Endpoint, FHIRResourceProcessResponse)

* insert ScenarioInstance(laborder.02, Bundle, Lab Order Bundle - Reject Lab Order, To be override., LabOrdersBundle, rejected-lab-order-bundle)
* instance[=]
  * description = """
  The FHIR bundle provided by the PoS entity when submitting a request to reject the lab order service request.
  
  This bundle includes the following resources:
  - [Rejected Lab Order Task](Task-LabOrderRejectionTaskExample.html)
  - [Lab Order Specimen](Specimen-AvailableSpecimenForCompletedRequestsExample.html)
  - [Rejected Lab Order Service Request](ServiceRequest-LabOrderCompletedServiceRequestExample.html)
  """
* insert ScenarioInstance(laborder.03, Endpoint, FHIR request, FHIR processes each request in the bundle using the HTTP request method defined for each Resource included in the Bundle., Endpoint, ProcessFHIRBundle)

* insert ScenarioProcess(1, Reject Lab Order, 
  PoS entity submitted a request for the lab order to be rejected.,
  FHIR entity has updated the statuses for the Task and ServiceRequest resources by indicating its status as rejected.)

* process[=].step[=].process[+]
  * title = "Reject Lab Order"
  * description = "This scenario demonstrates the process of rejecting the requested lab order."

  * insert ScenarioProcessStep(1.1, Reject lab order, PoS, IL, Updated lab order information)
  * step[=]
    * operation
      * type = $RestfulInteractionCodeSystem#update
      * request
        * instanceReference = "laborder.02"

  * insert ScenarioProcessStep(1.2, Invoke FHIR mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint for rejecting the lab order information in FHIR.)

  * insert ScenarioProcessStep(1.3, Send data for consumption, IL, FHIR, Request for FHIR to process the information in the lab order bundle.)
  * step[=]
    * operation
      * receiverActive = true
      * type = $RestfulInteractionCodeSystem#update
      * request
        * instanceReference = "laborder.02"
      * response
        * instanceReference = "laborder.01"

  * insert ScenarioProcessStep(1.4, Success: Invoke IL mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint that must send a response back the PoS system who initiated the rejection request.)

* insert ScenarioProcess(2, Respond to Request, 
    FHIR entity has processed the request and has issued an outcome response.,
    IL entity has received the outcome response from FHIR and forwarded the response to the PoS system.)

* process[=].step[=].process[+]
  * title = "Respond to Request"
  * description = "This scenario demonstrates the process for responding to the PoS sytem who submitted the request."

  * insert ScenarioProcessStep(2.1, Response, IL, PoS, Mediator responds to the request.)
  * step[=]
    * operation
      * request
        * instanceReference = "laborder.01"
  
  * insert ScenarioProcessStep(2.2, Log the outcome, PoS, PoS, PoS entity logs the outcome issued by the FHIR entity.)