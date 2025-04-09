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