Instance: pims-lab-order-bundle
InstanceOf: Bundle
Usage: #example
Description: "PIMS Bundle - Lab Order"
Title: "Submit new lab orders"
* type = #transaction

* insert ExampleTransactionalEntry(PimsGeneralPatientExample, Patient)
* insert ExampleTransactionalEntry(PimsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(PimsActiveServiceRequestExample, ServiceRequest)