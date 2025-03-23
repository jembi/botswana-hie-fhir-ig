Instance: lab-order-conditional-patient-update-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Create New Lab Order (Incl. Conditional Patient Update)"
Description: 
    "Submit new lab orders.

    Note: This bundle includes the Patient Resource as a conditional update!"

* type = #transaction

* insert ExampleTransactionalEntryWithConditionalUpdateAndSlice(BwPatientExample, Patient, Patient?identifier=http://moh.bw.org/identifier/omang|123, patient)
* insert ExampleTransactionalEntryWithSlice(LabOrderTaskExample, Task, task)
* insert ExampleTransactionalEntryWithSlice(AvailableSpecimenForActiveRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntryWithSlice(LabOrderActiveServiceRequestExample, ServiceRequest, serviceRequest)