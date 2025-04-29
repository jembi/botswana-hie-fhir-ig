Instance: cancelled-lab-order-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Cancelled Lab Order"
Description: "Lab order has been cancelled"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderCancellationTaskExample, Task, task)
* insert ExampleTransactionalEntry(AvailableSpecimenForCancelledRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntry(LabOrderRevokedServiceRequestOrderCancelledExample, ServiceRequest, serviceRequest)