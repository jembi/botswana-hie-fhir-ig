Instance: openmrs-rejected-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Title: "OpenMRS Bundle - Rejected Lab Order"
Description: "Lab order has been rejected"
* type = #transaction

* insert ExampleTransactionalEntry(OpenMrsLabOrderRejectionTaskExample, Task)
//* insert ExampleTransactionalEntry(OpenMrsAvailableSpecimenForCompletedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(OpenMrsCompletedServiceRequestExample, ServiceRequest)