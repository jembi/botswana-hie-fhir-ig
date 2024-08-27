Instance: pims-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Title: "PIMS Bundle - Lab Order"
Description: "Submit new lab orders"
* type = #transaction

* insert ExampleTransactionalEntry(PimsGeneralPatientExample, Patient)
* insert ExampleTransactionalEntry(PimsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(PimsActiveServiceRequestExample, ServiceRequest)