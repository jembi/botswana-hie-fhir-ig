Instance: pims-rejected-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Title: "PIMS Bundle - Rejected Lab Order"
Description: "Lab order has been rejected"
* type = #transaction

* insert ExampleTransactionalEntry(PimsLabOrderRejectionTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForCompletedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(PimsCompletedServiceRequestExample, ServiceRequest)