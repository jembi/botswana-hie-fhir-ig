Instance: lab-result-bundle
InstanceOf: Bundle
Usage: #example
Title: "Bundle - Lab Result"
Description: "Lab order has been completed"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderResultTaskExample, Task)
* insert ExampleTransactionalEntry(AvailableSpecimenForCompletedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(LabOrderCompletedServiceRequestExample, ServiceRequest)
* insert ExampleTransactionalEntry(LabResultsDiagnosticReportExample, DiagnosticReport)
* insert ExampleTransactionalEntry(LabResultObservationExample, Observation)