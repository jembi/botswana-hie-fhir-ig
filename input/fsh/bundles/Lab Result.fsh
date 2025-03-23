Instance: lab-result-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Document Lab Result"
Description: "Lab order has been completed"
* type = #transaction

* insert ExampleTransactionalEntry(LabOrderResultTaskExample, Task, task)
* insert ExampleTransactionalEntry(AvailableSpecimenForCompletedRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntry(LabOrderCompletedServiceRequestExample, ServiceRequest, serviceRequest)
* insert ExampleTransactionalEntry(LabResultsDiagnosticReportExample, DiagnosticReport, diagnosticReport)
* insert ExampleTransactionalEntry(LabResultObservationExample, Observation, observations)