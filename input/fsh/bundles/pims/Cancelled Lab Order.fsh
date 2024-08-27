Instance: pims-cancelled-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Description: "PIMS Bundle - Cancelled Lab Order"
Title: "Lab order has been cancelled"
* type = #transaction

* insert ExampleTransactionalEntry(PimsLabOrderCancellationTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForRevokedRequestExample, Specimen)
* insert ExampleTransactionalEntry(PimsRevokedServiceRequestExample, ServiceRequest)