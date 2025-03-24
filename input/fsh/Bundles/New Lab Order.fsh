Instance: lab-order-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Create New Lab Order"
Description: "Submit new lab orders"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderTaskExample, Task, task)
* insert ExampleTransactionalEntry(AvailableSpecimenForActiveRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntry(LabOrderActiveServiceRequestExample, ServiceRequest, serviceRequest)