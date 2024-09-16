Extension: MasterFacilityListCodeExtension
Id: master-facility-list-code
Title: "Master Facility List (MFL) Code"
Description: "An extension to capture a code that identifies the organization in the MFL."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from VSMasterFacilityListCodes (required)
* ^context[+].type = #element
* ^context[=].expression = "Organization.identifier.value"