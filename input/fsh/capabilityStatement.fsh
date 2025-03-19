Instance: bw-hie-server
InstanceOf: CapabilityStatement
Title: "Botswana HIE Capability Statement"
Description: "This section describes the expected capabilities of the Botswana HIE server actor which is responsible for providing responses to the queries submitted for lab orders. The list of FHIR profiles and operations supported by the Botswana HIE server are defined."
Usage: #definition
* name = "BwHieServerCapabilityStatement"
* title = "Botswana HIE Server Capability Statement"
* status = #active
* experimental = false
* date = "2025-03-18T13:15:56.964-00:00"
* publisher = "Jembi Health Systems"
* contact[+].telecom[+].system = #url
* contact[=].telecom[=].value = "https://www.jembi.org/contact"
* description = "This section describes the expected capabilities of the Botswana HIE server actor which is responsible for providing responses to the queries submitted for lab orders. The list of FHIR profiles and operations supported by the Botswana HIE server are defined."

* kind = #requirements

* fhirVersion = #4.0.1

* format[0] = #application/fhir+json
* format[+] = #json

* rest.mode = #server

* rest.resource[+].type = #Bundle
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/lab-orders-bundle"
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[+].code = #read

* rest.resource[+].type = #Patient
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/bw-patient"
* rest.resource[=].conditionalCreate = true
* rest.resource[=].conditionalUpdate = true

* rest.resource[+].type = #Encounter
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #MAY
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/target-facility-encounter"

* rest.resource[+].type = #ServiceRequest
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/lab-order-service-request"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread

* rest.resource[+].type = #Specimen
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/lab-order-specimen"

* rest.resource[+].type = #Task
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/lab-order-task"
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #vread

* rest.resource[+].type = #Practitioner
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/practitioner"

* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/lab-order-diagnostic-report"

* rest.resource[+].type = #Observation
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/lab-result-observation"

* rest.resource[+].type = #Organization
* rest.resource[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].profile = "http://moh.bw.org/StructureDefinition/service-organization"