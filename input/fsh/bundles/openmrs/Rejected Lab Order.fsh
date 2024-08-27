Instance: openmrs-rejected-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Description: "OpenMRS Bundle - Rejected Lab Order"
Title: "Lab order has been rejected"
* type = #transaction

* insert ExampleTransactionalEntry(OpenMrsLabOrderRejectionTaskExample, Task)
//* insert ExampleTransactionalEntry(OpenMrsAvailableSpecimenForCompletedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(OpenMrsCompletedServiceRequestExample, ServiceRequest)