<style>
  {% include liquid-templates.css %}
</style>

### Use Case Narrative

#### Capture Lab Results

##### Primary Actor
- <a href="ActorDefinition-ClinicianActorDefinitionExample.html">Clinician</a>

##### Secondary Actors
- <a href="ActorDefinition-SHRActorDefinitionExample.html">Shared Health Record (SHR)</a>
- <a href="ActorDefinition-PIMSActorDefinitionExample.html">Patient Information Management System (PIMS)</a>
- <a href="ActorDefinition-InteroperabilityLayerActorDefinitionExample.html">Interoperability Layer (IL)</a>

##### Dependencies
- Availability of PIMS.

##### Description
- Clinician login the system and access the lab module. Clinician then enters Lab specimen details using a lab form available in the lab module.

##### Preconditions
- User successfully logs in to the system.

##### Ordinary Sequence
1. Log into the system.
1. Access the Laboratory module.
1. Enter specimen details in lab order form available in the lab module.
1. Save the order details.
1. Send the lab order details to SHR.

##### Postconditions
- Data successfully pushed to the interoperability layer.

##### Assumptions
- PIMS is hosted in the facility with access to the operability layer.
- The lab order form is sent to the laboratory with the specimen.
- The specimen ID is attached to the container with the specimen.

##### Exceptions
1. Where the patient does not exist, the clinician creates the patient before paturing the order.
1. System caches the lab order details when there is network failure and resend late

<br />

#### Lab Results

##### Primary Actor
- <a href="ActorDefinition-LaboratoryTechnicianActorDefinitionExample.html">Laboratory technicians<a> 

##### Secondary Actors
- <a href="ActorDefinition-SHRActorDefinitionExample.html">SHR</a>
- <a href="ActorDefinition-IPMSActorDefinitionExample.html">Integrated Patient Management System (IPMS)</a>
<br />

##### Dependencies
- Received specimen with order form.

##### Description
- The use case enables laboratory technicians to enter lab order details into IPMS at the laboratory facility.

##### Preconditions
- User successfully logs in to the system.

##### Ordinary Sequence
1. Access the Lab Order component/module.
1. Access lab order details in to IPMS.
1 Update order details with lab test results.
1. Save the updated lab test results.

##### Postconditions
- Lab order results synchronized to SHR.

##### Assumptions
- Some orders will be entered directly in to IPMS at the facility.

##### Exceptions
1. Enter/Capture the lab order.

<br />

#### Retrieve Lab Results

##### Primary Actor 
- <a href="ActorDefinition-ClinicianActorDefinitionExample.html">Clinician</a>

##### Secondary Actors
- <a href="ActorDefinition-SHRActorDefinitionExample.html">SHR</a>

##### Dependencies
- Up to date synchronization of the SHR.

##### Description
- This use case enables clinicians to retrieve lab order results at the facility and have the option to print out the results.

##### Preconditions
- Log into the system.

##### Ordinary Sequence
1. Access the Lab Order module.
1. Search lab test results using lab order ID or Patient ID.
1. Open the selected results and consult with the patient.
1. Print results out (optional).

##### Postconditions
 - Lab results received by the clinician.

##### Assumptions
- Lab test results can also be queried from the pool using a combination of patient identifiers.

##### Exceptions
1. Access the results using the client module.

<br />

#### Transmission of Lab Results

##### Primary Actors 
- <a href="ActorDefinition-InteroperabilityLayerActorDefinitionExample.html">IL</a>

##### Secondary Actors
- <a href="ActorDefinition-PIMSActorDefinitionExample.html">PIMS</a>
- <a href="ActorDefinition-IPMSActorDefinitionExample.html">IPMS</a>
- <a href="ActorDefinition-MFLActorDefinitionExample.html">Master Facility List (MFL)</a>
- <a href="ActorDefinition-OmangActorDefinitionExample.html">Omang</a>
- <a href="ActorDefinition-BDRSActorDefinitionExample.html">Birth and Death Registration System (BDRS)</a>
- <a href="ActorDefinition-SHRActorDefinitionExample.html">SHR</a>
- <a href="ActorDefinition-ClientRegistryActorDefinitionExample.html">Open Client Registry (CR)</a>

##### Dependencies
- Active connection to IL.

##### Description
- An interoperability layer facilitates information exchange of clinical laboratory orders between the electronic medical record and the laboratory information system, via the longitudinal record system (SHR). 

##### Preconditions
- Queries are sent between interfacing systems and the interoperability layer to update and store new data.

##### Ordinary Sequence
1. PIMS/IPMS send captured orders to the interoperability layer and store them in the SHR
1. MFL update the facility information in the SHR
1. Patient demographic data is queried from the omang system as well as the deaths and births register.
1. Updated lab order details with results are received by the interoperability layer and stored in the SHR
1. PIMS pings the interoperability layer for lab test results
1. Available results in the SHR are pulled to PIMS.

##### Postconditions
- Lab orders, lab test results, facility information and patient information updated and stored in the SHR.

##### Assumptions
- Each and every order that is created is assigned an identifier by IPMS.
- Lab orders are assigned identifiers by the system.
- No data is pushed to IPMS from SHR, only a pull is allowed.

##### Exceptions
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
