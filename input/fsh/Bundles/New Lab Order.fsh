Instance: lab-order-bundle
InstanceOf: Bundle
Usage: #example
Title: "Bundle - Lab Order"
Description: "Submit new lab orders"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderTaskExample, Task)
* insert ExampleTransactionalEntry(AvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(LabOrderActiveServiceRequestExample, ServiceRequest)