Instance: lab-order-conditional-patient-create-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Create New Lab Order (Incl. Conditional Patient Create)"
Description: 
    "Submit new lab orders.

    Note: This bundle includes the Patient Resource as a conditional create!"
    
* type = #transaction

* insert ExampleTransactionalEntryWithConditionalCreate(BwPatientExample, Patient, identifier=http://moh.bw.org/identifier/omang|123, patient)
* insert ExampleTransactionalEntry(LabOrderTaskExample, Task, task)
* insert ExampleTransactionalEntry(AvailableSpecimenForActiveRequestsExample, Specimen, specimens)
* insert ExampleTransactionalEntry(LabOrderActiveServiceRequestExample, ServiceRequest, serviceRequest)