Instance: cancelled-lab-order-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Cancelled Lab Order"
Description: "Lab order has been cancelled"
* type = #transaction

* insert ExampleTransactionalEntryWithSlice(LabOrderCancellationTaskExample, Task, task)
* insert ExampleTransactionalEntryWithSlice(AvailableSpecimenForRevokedRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntryWithSlice(LabOrderRevokedServiceRequestExample, ServiceRequest, serviceRequest)