<style>
  {% include liquid-templates.css %}
</style>

### Use Case Narrative

#### Capture Lab Results

<strong>Primary Actor:</strong> 
- <a href="ActorDefinition-ClinicianActorDefinitionExample.html">Clinician</a>

<strong>Secondary Actors:</strong> 
- <a href="ActorDefinition-SHRActorDefinitionExample.html">Shared Health Record (SHR)</a>
- <a href="ActorDefinition-PIMSActorDefinitionExample.html">Patient Information Management System (PIMS)</a>
- <a href="ActorDefinition-InteroperabilityLayerActorDefinitionExample.html">Interoperability Layer (IL)</a>

<strong>Dependencies:</strong>
- Availability of PIMS.

<strong>Description:</strong>
- Clinician login the system and access the lab module. Clinician then enters Lab specimen details using a lab form available in the lab module.

<strong>Preconditions:</strong>
- User successfully logs in to the system.

<strong>Ordinary Sequence:</strong>
1. Log into the system.
1. Access the Laboratory module.
1. Enter specimen details in lab order form available in the lab module.
1. Save the order details.
1. Send the lab order details to SHR.

<strong>Postconditions:</strong>
- Data successfully pushed to the interoperability layer.

<strong>Assumptions:</strong>
- PIMS is hosted in the facility with access to the operability layer.
- The lab order form is sent to the laboratory with the specimen.
- The specimen ID is attached to the container with the specimen.

<strong>Exceptions:</strong>
1. Where the patient does not exist, the clinician creates the patient before paturing the order.
1. System caches the lab order details when there is network failure and resend late

<br />

#### Lab Results

<strong>Primary Actor:</strong> 
- <a href="ActorDefinition-LaboratoryTechnicianActorDefinitionExample.html">Laboratory technicians<a> 

<strong>Secondary Actors:</strong>
- <a href="ActorDefinition-SHRActorDefinitionExample.html">SHR</a>
- <a href="ActorDefinition-IPMSActorDefinitionExample.html">Integrated Patient Management System (IPMS)</a>
<br />

<strong>Dependencies:</strong>
- Received specimen with order form.

<strong>Description:</strong>
- The use case enables laboratory technicians to enter lab order details into IPMS at the laboratory facility.

<strong>Preconditions:</strong>
- User successfully logs in to the system.

<strong>Ordinary Sequence:</strong>
1. Access the Lab Order component/module.
1. Access lab order details in to IPMS.
1 Update order details with lab test results.
1. Save the updated lab test results.

<strong>Postconditions:</strong>
- Lab order results synchronized to SHR.

<strong>Assumptions:</strong>
- Some orders will be entered directly in to IPMS at the facility.

<strong>Exceptions:</strong>
1. Enter/Capture the lab order.

<br />

#### Retrieve Lab Results

<strong>Primary Actor:</strong>  
- <a href="ActorDefinition-ClinicianActorDefinitionExample.html">Clinician</a>

<strong>Secondary Actors:</strong> 
- <a href="ActorDefinition-SHRActorDefinitionExample.html">SHR</a>

<strong>Dependencies:</strong>
- Up to date synchronization of the SHR.

<strong>Description:</strong>
- This use case enables clinicians to retrieve lab order results at the facility and have the option to print out the results.

<strong>Preconditions:</strong>
- Log into the system.

<strong>Ordinary Sequence:</strong>
1. Access the Lab Order module.
1. Search lab test results using lab order ID or Patient ID.
1. Open the selected results and consult with the patient.
1. Print results out (optional).

<strong>Postconditions:</strong>
 - Lab results received by the clinician.

<strong>Assumptions:</strong>
- Lab test results can also be queried from the pool using a combination of patient identifiers.

<strong>Exceptions:</strong>
1. Access the results using the client module.

<br />

#### Transmission of Lab Results

<strong>Primary Actors:</strong>  
- <a href="ActorDefinition-InteroperabilityLayerActorDefinitionExample.html">IL</a>

<strong>Secondary Actors:</strong>
- <a href="ActorDefinition-PIMSActorDefinitionExample.html">PIMS</a>
- <a href="ActorDefinition-IPMSActorDefinitionExample.html">IPMS</a>
- <a href="ActorDefinition-MFLActorDefinitionExample.html">Master Facility List (MFL)</a>
- <a href="ActorDefinition-OmangActorDefinitionExample.html">Omang</a>
- <a href="ActorDefinition-BDRSActorDefinitionExample.html">Birth and Death Registration System (BDRS)</a>
- <a href="ActorDefinition-SHRActorDefinitionExample.html">SHR</a>
- <a href="ActorDefinition-ClientRegistryActorDefinitionExample.html">Open Client Registry (CR)</a>

<strong>Dependencies:</strong>
- Active connection to IL.

<strong>Description:</strong>
- An interoperability layer facilitates information exchange of clinical laboratory orders between the electronic medical record and the laboratory information system, via the longitudinal record system (SHR). 

<strong>Preconditions:</strong>
- Queries are sent between interfacing systems and the interoperability layer to update and store new data.

<strong>Ordinary Sequence:</strong>
1. PIMS/IPMS send captured orders to the interoperability layer and store them in the SHR
1. MFL update the facility information in the SHR
1. Patient demographic data is queried from the omang system as well as the deaths and births register.
1. Updated lab order details with results are received by the interoperability layer and stored in the SHR
1. PIMS pings the interoperability layer for lab test results
1. Available results in the SHR are pulled to PIMS.

<strong>Postconditions:</strong>
- Lab orders, lab test results, facility information and patient information updated and stored in the SHR.

<strong>Assumptions:</strong>
- Each and every order that is created is assigned an identifier by IPMS.
- Lab orders are assigned identifiers by the system.
- No data is pushed to IPMS from SHR, only a pull is allowed.

<strong>Exceptions:</strong>
1. Unidentifiable orders and order results sent to the interoperability layer are rejected.

<br />

### Use Case Diagrams

#### Capture Lab Results
<figure>
  {% include CaptureLabOrders.svg %}
</figure>

<br />
<br />
<br />

#### Retrieve Lab Orders
<figure>
  {% include RetrievalOfLabOrders.svg %}
</figure>

<br />
<br />
<br />

#### Data Transmission Layer
<figure>
  {% include DataTransmissionLayer.svg %}
</figure>

<br />
<br />
<br />

#### Lab Order Resulting
<figure>
  {% include LabOrderResulting.svg %}
</figure>

<br />
<br />
<br />

#### Retrieve Lab Results
<figure>
  {% include RetrieveLabResults.svg %}
</figure>>
