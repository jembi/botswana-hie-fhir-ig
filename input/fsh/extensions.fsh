/*Extension: TruePatientReferenceExtension
Id: true-patient-id
Title: "True Patient Reference"
Description: "An extension to capture the literal ID that was used when creating the Patient Resource."
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "Patient.link.other"*/

Extension: RequirementsTypeExtension
Id: requirements-type
Title: "Requirements Type"
Description: "An extension to capture the type of requirements contained in the Resource."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from VSRequirementsTypeCodes (required)

* ^context[+].type = #element
* ^context[=].expression = "Requirements"

Extension: ActorReferenceExtension
Id: actor-reference
Title: "Actor Reference"
Description: "An extension to reference the Actor Resource describing additional details regarding the actor."
* value[x] only Reference(ActorDefinition)
* valueReference 1..1

* ^context[+].type = #element
* ^context[=].expression = "ExampleScenario.actor"

Extension: ActorClassificationExtension
Id: actor-classification
Title: "Actor Classification"
Description: "An extension to capture whether teh actor is primary or secondary in the context of the requirements defintion."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from VSActorClassificationCodes (required)

* ^context[+].type = #element
* ^context[=].expression = "Requirements.actor"