Instance: openmrs-cancelled-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Title: "OpenMRS Bundle - Cancelled Lab Order"
Description: "Lab order has been cancelled"
* type = #transaction

* insert ExampleTransactionalEntry(OpenMrsLabOrderCancellationTaskExample, Task)
//* insert ExampleTransactionalEntry(OpenMrsAvailableSpecimenForRevokedRequestExample, Specimen)
* insert ExampleTransactionalEntry(OpenMrsRevokedServiceRequestExample, ServiceRequest)