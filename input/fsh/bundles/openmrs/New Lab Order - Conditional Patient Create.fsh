Instance: openmrs-lab-order-conditional-patient-create-bundle
InstanceOf: Bundle
Usage: #example
Title: "OpenMRS Bundle - Lab Order"
Description: 
    "Submit new lab orders.

    Note: This bundle includes the Patient Resource as a conditional create!"
* type = #transaction

* insert ExampleTransactionalEntryWithConditionalCreate(OpenMrsGeneralPatientExample, Patient, identifier=http://moh.bw.org/ext/identifier/omang|123)
* insert ExampleTransactionalEntry(OpenMrsLabOrderTaskExample, Task)
//* insert ExampleTransactionalEntry(PimsAvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(OpenMrsActiveServiceRequestExample, ServiceRequest)