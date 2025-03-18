Instance: lab-result-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Document Lab Result"
Description: "Lab order has been completed"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderResultTaskExample, Task)
* insert ExampleTransactionalEntry(AvailableSpecimenForCompletedRequestsExample, Specimen)
* insert ExampleTransactionalEntry(LabOrderCompletedServiceRequestExample, ServiceRequest)
* insert ExampleTransactionalEntry(LabResultsDiagnosticReportExample, DiagnosticReport)
* insert ExampleTransactionalEntry(LabResultObservationExample, Observation)