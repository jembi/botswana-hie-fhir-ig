Instance: lab-order-conditional-patient-update-bundle
InstanceOf: Bundle
Usage: #example
Title: "Bundle - Lab Order - Conditional Patient Update"
Description: 
    "Submit new lab orders."

* type = #transaction

* insert ExampleTransactionalEntry(LabOrderTaskExample, Task)
* insert ExampleTransactionalEntry(AvailableSpecimenForActiveRequestsExample, Specimen)
* insert ExampleTransactionalEntry(LabOrderActiveServiceRequestExample, ServiceRequest)