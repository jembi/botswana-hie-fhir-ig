Instance: LabOrderResults
InstanceOf: ExampleScenario
Usage: #definition
* name = "LabOrderResults"
* title = "Lab Order Results (Using a Bundle)"
* version = "1"
* status = #active
* experimental = false
* purpose = "This serves to demonstrate the completion of lab orders which includes the results, from the Point-of-Service (PoS) application to the FHIR datastore."

* insert ScenarioActor(PoS, system, Point of Service, The entity that processes the lab results.)
* actor[=]
  * extension[+].valueReference = Reference(PIMSActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioActor(IL, system, Interoperability Layer, The entity that receives the lab order results request submitted by the PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(InteroperabilityLayerActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioActor(FHIR, system, FHIR Server, The entity that stores the details for the lab order results processed by the PoS entity.)
* actor[=]
  * extension[+].valueReference = Reference(SHRActorDefinitionExample)
  * extension[=].url = "http://moh.bw.org/StructureDefinition/actor-reference"

* insert ScenarioInstance(laborder.01, Endpoint, Outcome response, FHIR issues an outcome response to each CRUD request., Endpoint, FHIRResourceProcessResponse)
* insert ScenarioInstance(laborder.02, Bundle, Lab Order Bundle - Lab Results, To be override, LabOrdersBundle, lab-result-bundle)
* instance[=]
  * description = """
  The FHIR bundle provided by the PoS entity when submitting the lab order service request.
  
  This bundle includes the following resources:
  - [Ready Lab Order](Task-LabOrderTaskExample.html)
  - [Lab Order Specimen](Specimen-AvailableSpecimenForActiveRequestsExample.html)
  - [Active Lab Order Service Request](ServiceRequest-LabOrderActiveServiceRequestExample.html)
  - [Lab Result](DiagnosticReport-LabResultsDiagnosticReportExample.html)
  - [Diagnostic Test Result](Observation-LabResultObservationExample.html)

  """
* insert ScenarioInstance(laborder.03, Endpoint, FHIR request, FHIR processes each request in the bundle using the HTTP request method defined for each Resource included in the Bundle., Endpoint, ProcessFHIRBundle)

* insert ScenarioProcess(1, Lab Results, 
  PoS entity processing the lab results.,
  FHIR entity has updated the statuses for the Task and ServiceRequest resources by indicating its status as completed.)

* process[=].step[=].process[+]
  * title = "Lab Results"
  * description = "This scenario demonstrates the process of processing the lab results for a lab order."

  * insert ScenarioProcessStep(1.1, Process lab results, PoS, IL, Updated lab order information)
  * step[=]
    * operation
      * type = $RestfulInteractionCodeSystem#update
      * request
        * instanceReference = "laborder.02"

  * insert ScenarioProcessStep(1.2, Invoke FHIR mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint for process lab results information in FHIR.)

  * insert ScenarioProcessStep(1.3, Send data for consumption, IL, FHIR, Request for FHIR to process the information in the lab results bundle.)
  * step[=]
    * operation
      * receiverActive = true
      * type = $RestfulInteractionCodeSystem#update
      * request
        * instanceReference = "laborder.02"
      * response
        * instanceReference = "laborder.01"

  * insert ScenarioProcessStep(1.4, Success: Invoke IL mediator, IL, IL, Pass the data to the mediator responsible for calling the endpoint that must send a response back the PoS system who is responsible for processing lab results.)

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

