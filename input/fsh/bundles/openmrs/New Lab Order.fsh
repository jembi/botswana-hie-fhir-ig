Instance: openmrs-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Description: "OpenMRS Bundle - Lab Order"
Title: "Submit new lab orders"
* type = #transaction

* insert ExampleTransactionalEntry(OpenMrsGeneralPatientExample, Patient)
* insert ExampleTransactionalEntry(OpenMrsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(OpenMrsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(OpenMrsActiveServiceRequestExample, ServiceRequest)