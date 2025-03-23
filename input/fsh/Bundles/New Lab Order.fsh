Instance: lab-order-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Create New Lab Order"
Description: "Submit new lab orders"
* type = #transaction

* insert ExampleTransactionalEntryWithSlice(LabOrderTaskExample, Task, task)
* insert ExampleTransactionalEntryWithSlice(AvailableSpecimenForActiveRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntryWithSlice(LabOrderActiveServiceRequestExample, ServiceRequest, serviceRequest)