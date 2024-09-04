Instance: pims-lab-order-conditional-patient-update-bundle
InstanceOf: Bundle
Usage: #example
Title: "PIMS Bundle - Lab Order"
Description: 
    "Submit new lab orders.

    Note: This bundle includes the Patient Resource as a conditional update!"
* type = #transaction

* insert ExampleTransactionalEntryWithConditionalUpdate(PimsGeneralPatientExample, Patient, Patient?identifier=http://moh.bw.org/ext/identifier/omang|123)
* insert ExampleTransactionalEntry(PimsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(PimsActiveServiceRequestExample, ServiceRequest)