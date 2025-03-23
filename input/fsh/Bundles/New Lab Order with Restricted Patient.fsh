Instance: lab-order-with-restricted-patient-bundle
InstanceOf: ProcessPatientInFHIRBundle
Usage: #example
Title: "Bundle - Create New Lab Order (incl. Restricted Patient Create)"
Description: "Submit new lab orders and replace the patient profile resource that supplied the data with the \"RestrictedPatient\" profile resource."
* type = #transaction

* insert ExampleTransactionalEntry(RestrictedPatientExample1, Patient, restrictedPatient)
* insert ExampleTransactionalEntry(LabOrderTaskExample, Task, task)
* insert ExampleTransactionalEntry(AvailableSpecimenForActiveRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntry(LabOrderActiveServiceRequestExample, ServiceRequest, serviceRequest)