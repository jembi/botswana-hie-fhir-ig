Instance: openmrs-lab-result-transactional-bundle
InstanceOf: Bundle
Usage: #example
Title: "OpenMRS Bundle - Lab Result (Transactional)"
Description: "Lab order has been completed"
* type = #transaction

* insert ExampleTransactionalEntry(OpenMrsLabResultTaskExample, Task)
//* insert ExampleTransactionalEntry(OpenMrsAvailableSpecimenForCompletedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(OpenMrsCompletedServiceRequestExample, ServiceRequest)
* insert ExampleTransactionalEntry(OpenMrsLabResultsDiagnosticReportExample, DiagnosticReport)
* insert ExampleTransactionalEntry(OpenMrsTestResultExample, Observation)