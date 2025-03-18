Instance: cancelled-lab-order-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Cancelled Lab Order"
Description: "Lab order has been cancelled"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderCancellationTaskExample, Task)
* insert ExampleTransactionalEntry(AvailableSpecimenForRevokedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(LabOrderRevokedServiceRequestExample, ServiceRequest)