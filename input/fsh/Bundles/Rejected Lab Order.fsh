Instance: rejected-lab-order-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Rejected Lab Order"
Description: "Lab order has been rejected"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderRejectionTaskExample, Task)
* insert ExampleTransactionalEntry(AvailableSpecimenForCompletedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(LabOrderCompletedServiceRequestExample, ServiceRequest)