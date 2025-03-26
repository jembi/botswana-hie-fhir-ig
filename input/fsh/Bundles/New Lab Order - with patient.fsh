Instance: lab-order-with-patient-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Create New Lab Order (incl. Patient Resource)"
Description: "Submit new lab orders (incl. Patient Resource)"
* type = #transaction

* insert ExampleTransactionalEntry(BwPatientExample, Patient, patient)
* insert ExampleTransactionalEntry(LabOrderTaskExample, Task, task)
* insert ExampleTransactionalEntry(AvailableSpecimenForActiveRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntry(LabOrderActiveServiceRequestExample, ServiceRequest, serviceRequest)