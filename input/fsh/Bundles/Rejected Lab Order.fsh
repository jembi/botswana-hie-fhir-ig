Instance: rejected-lab-order-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Rejected Lab Order"
Description: "Lab order has been rejected"
* type = #transaction

* insert ExampleTransactionalEntryWithSlice(LabOrderRejectionTaskExample, Task, task)
* insert ExampleTransactionalEntryWithSlice(AvailableSpecimenForCompletedRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntryWithSlice(LabOrderCompletedServiceRequestExample, ServiceRequest, serviceRequest)