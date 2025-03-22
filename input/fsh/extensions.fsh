/*Extension: TruePatientReferenceExtension
Id: true-patient-id
Title: "True Patient Reference"
Description: "An extension to capture the literal ID that was used when creating the Patient Resource."
* value[x] only string
* ^context[+].type = #element
* ^context[=].expression = "Patient.link.other"*/