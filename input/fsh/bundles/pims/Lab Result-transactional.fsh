Instance: pims-lab-result-transactional-bundle
InstanceOf: Bundle
Usage: #example
Title: "PIMS Bundle - Lab Result (Transactional)"
Description: "Lab order has been completed"
* type = #transaction

* insert ExampleTransactionalEntry(PimsLabResultTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForCompletedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(PimsCompletedServiceRequestExample, ServiceRequest)
//* insert ExampleTransactionalEntry(PimsLabResultsDiagnosticReportExample, DiagnosticReport)
* insert ExampleTransactionalEntry(PimsTestResultExample, Observation)