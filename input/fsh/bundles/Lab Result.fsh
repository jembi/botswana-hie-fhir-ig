Instance: lab-result-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Document Lab Result"
Description: "Lab order has been completed"
* type = #transaction

* insert ExampleTransactionalEntryWithSlice(LabOrderResultTaskExample, Task, task)
* insert ExampleTransactionalEntryWithSlice(AvailableSpecimenForCompletedRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntryWithSlice(LabOrderCompletedServiceRequestExample, ServiceRequest, serviceRequest)
* insert ExampleTransactionalEntryWithSlice(LabResultsDiagnosticReportExample, DiagnosticReport, diagnosticReport)
* insert ExampleTransactionalEntryWithSlice(LabResultObservationExample, Observation, observations)