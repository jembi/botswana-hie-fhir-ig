Instance: openmrs-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Title: "OpenMRS Bundle - Lab Order"
Description: "Submit new lab orders"
* type = #transaction

* insert ExampleTransactionalEntry(OpenMrsGeneralPatientExample, Patient)
* insert ExampleTransactionalEntry(OpenMrsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(OpenMrsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(OpenMrsActiveServiceRequestExample, ServiceRequest)