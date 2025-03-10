Instance: lab-order-conditional-patient-create-bundle
InstanceOf: Bundle
Usage: #example
Title: "Bundle - Lab Order - Conditional Patient Create"
Description: 
    "Submit new lab orders.

    Note: This bundle includes the Patient Resource as a conditional create!"
    
* type = #transaction

* insert ExampleTransactionalEntryWithConditionalCreate(BwPatientExample, Patient, identifier=http://moh.bw.org/identifier/omang|123)
* insert ExampleTransactionalEntry(LabOrderTaskExample, Task)
* insert ExampleTransactionalEntry(AvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(LabOrderActiveServiceRequestExample, ServiceRequest)