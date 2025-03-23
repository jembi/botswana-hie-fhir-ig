Instance: lab-order-conditional-patient-create-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Create New Lab Order (Incl. Conditional Patient Create)"
Description: 
    "Submit new lab orders.

    Note: This bundle includes the Patient Resource as a conditional create!"
    
* type = #transaction

* insert ExampleTransactionalEntryWithConditionalCreateAndSlice(BwPatientExample, Patient, identifier=http://moh.bw.org/identifier/omang|123, patient)
* insert ExampleTransactionalEntryWithSlice(LabOrderTaskExample, Task, task)
* insert ExampleTransactionalEntryWithSlice(AvailableSpecimenForActiveRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntryWithSlice(LabOrderActiveServiceRequestExample, ServiceRequest, serviceRequest)