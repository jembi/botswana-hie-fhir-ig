Instance: lab-order-conditional-patient-update-bundle
InstanceOf: LabOrdersBundle
Usage: #example
Title: "Bundle - Create New Lab Order (Incl. Conditional Patient Update)"
Description: 
    "Submit new lab orders.

    Note: This bundle includes the Patient Resource as a conditional update!"

* type = #transaction

* insert ExampleTransactionalEntryWithConditionalUpdate(BwPatientExample, Patient, Patient?identifier=http://moh.bw.org/identifier/omang|123)
* insert ExampleTransactionalEntry(LabOrderTaskExample, Task)
* insert ExampleTransactionalEntry(AvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(LabOrderActiveServiceRequestExample, ServiceRequest)