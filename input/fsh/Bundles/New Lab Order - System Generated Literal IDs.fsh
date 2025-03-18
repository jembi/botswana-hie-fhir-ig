Instance: lab-order-auto-generate-ids-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Create New Lab Order (Uses System Generated IDs)"
Description: 
    "Submit new lab orders.

    Note: This bundle includes Resources without explicitly provided Resource ID's! 
    The system will auto-generate the Resource.id values (Literal ID) during the POST request."
* type = #transaction

* insert ExampleTransactionalEntryWithAutoIDGenerate(LabOrderTaskExample, Task)
* insert ExampleTransactionalEntryWithAutoIDGenerate(AvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntryWithAutoIDGenerate(LabOrderActiveServiceRequestExample, ServiceRequest)