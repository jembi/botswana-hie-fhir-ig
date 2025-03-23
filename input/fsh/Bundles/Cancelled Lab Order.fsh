Instance: cancelled-lab-order-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Cancelled Lab Order"
Description: "Lab order has been cancelled"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderCancellationTaskExample, Task, task)
* insert ExampleTransactionalEntry(AvailableSpecimenForRevokedRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntry(LabOrderRevokedServiceRequestExample, ServiceRequest, serviceRequest)