Instance: openmrs-lab-order-auto-generate-ids-bundle
InstanceOf: Bundle
Usage: #example
Title: "OpenMRS Bundle - Lab Order"
Description: 
    "Submit new lab orders.

    Note: This bundle includes Resources without explicitly provided Resource ID's! 
    The system will auto-generate the Resource.id values (Literal ID) during the POST request."
* type = #transaction

* insert ExampleTransactionalEntryWithAutoIDGenerate(OpenMrsGeneralPatientExample, Patient)
* insert ExampleTransactionalEntryWithAutoIDGenerate(OpenMrsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntryWithAutoIDGenerate(OpenMrsActiveServiceRequestExample, ServiceRequest)