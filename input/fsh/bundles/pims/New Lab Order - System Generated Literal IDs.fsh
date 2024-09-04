Instance: pims-lab-order-auto-generate-ids-bundle
InstanceOf: Bundle
Usage: #example
Title: "PIMS Bundle - Lab Order"
Description: 
    "Submit new lab orders.

    Note: This bundle includes Resources without explicitly provided Resource ID's! 
    The system will auto-generate the Resource.id values (Literal ID) during the POST request."
* type = #transaction

* insert ExampleTransactionalEntryWithAutoIDGenerate(PimsGeneralPatientExample, Patient)
* insert ExampleTransactionalEntryWithAutoIDGenerate(PimsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntryWithAutoIDGenerate(PimsActiveServiceRequestExample, ServiceRequest)