Instance: openmrs-lab-order-conditional-patient-update-bundle
InstanceOf: Bundle
Usage: #example
Title: "OpenMRS Bundle - Lab Order"
Description: 
    "Submit new lab orders.

    Note: This bundle includes the Patient Resource as a conditional update!"
* type = #transaction

* insert ExampleTransactionalEntryWithConditionalUpdate(OpenMrsGeneralPatientExample, Patient, Patient?identifier=http://moh.bw.org/ext/identifier/omang|123)
* insert ExampleTransactionalEntry(OpenMrsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(OpenMrsActiveServiceRequestExample, ServiceRequest)