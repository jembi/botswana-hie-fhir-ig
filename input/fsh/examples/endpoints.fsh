Instance: SearchForPatientInFHIR
InstanceOf: Endpoint
Usage: #example
Title: "Search Patient in FHIR - Using business identifiers."
Description: 
    "Point-of-Service systems can search for a patient in FHIR using one or more business identifiers."
* status = #active
* connectionType = $EndpointConnectionType#hl7-fhir-rest
* name = "Patient"
* description = "The Patient endpoint coming with the FHIR API."
* payload[+]
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/fhir/Patient?identifier=http://moh.bw.org/identifier/omang|omang123,identifier=http://moh.bw.org/identifier/birth|birth456,identifier=http://moh.bw.org/identifier/passport|passport789"

Instance: SearchForPatientInCR
InstanceOf: Endpoint
Usage: #example
Title: "Search Patient in Client Registry - Using XXX."
Description: 
    "Interoperability layer searches for a patient in the client registry using XXX."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#CR-rest
* name = "CR endpoint name"
* description = "The endpoint used for XXX."
* payload[+]
  * mimeType[+] = #application/json
* address = "http://server.url/CR/endopint?params"

Instance: SearchForPatientInCRResponse
InstanceOf: Endpoint
Usage: #example
Title: "Search Patient in Client Registry - Response."
Description: 
    "Interoperability layer receives a response from the CR for the search request."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#IL-rest
* name = "IL endpoint name"
* description = "The endpoint used for XXX."
* payload[+]
  * mimeType[+] = #application/json
* address = "http://server.url/IL/endpoint"

Instance: ValidatePatientResourceInFHIR
InstanceOf: Endpoint
Usage: #example
Title: "Validate Patient Resource in FHIR."
Description: 
    "FHIR uses its $validate operation to ensure that data provided in the Patient Resource is compliant with the specified FHIR Profile."
* status = #active
* connectionType = $EndpointConnectionType#hl7-fhir-rest
* name = "$validate"
* description = "The $validate operation checks whether the suppplied content will be accepted by the server, based on the constraints applied to one or more profiles referenced by the Resource containing the data."
* payload[+]
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/fhir/Patient/$validate"

Instance: MPIForPatientIssuedByCR
InstanceOf: Endpoint
Usage: #example
Title: "Master Patient Index identifier issued by the Client Registry."
Description: 
    "Interoperability layer receives a MPI as part of the response from the CR when creating new patients."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#IL-rest
* name = "IL endpoint name"
* description = "The endpoint used for XXX."
* payload[+]
  * mimeType[+] = #application/json
* address = "http://server.url/IL/endpoint"

Instance: FHIRResourceProcessResponse
InstanceOf: Endpoint
Usage: #example
Title: "Response issued by FHIR after CRUD requests."
Description: 
    "Interoperability layer receives an outcome response for each CRUD request."
* status = #active
* connectionType = $EndpointConnectionTypeCodeSystem#IL-rest
* name = "IL endpoint name"
* description = "The endpoint used for XXX. See https://www.hl7.org/fhir/http.html."
* payload[+]
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/IL/endpoint"

Instance: ProcessFHIRBundle
InstanceOf: Endpoint
Usage: #example
Title: "Process FHIR Bundle"
Description: 
    "Point-of-Service systems can submit \"PUT\" or \"POST\" requests using a FHIR Bundle Resource."
* status = #active
* connectionType = $EndpointConnectionType#hl7-fhir-rest
* name = "Bundle"
* description = "The Bundle endpoint coming with the FHIR API."
* payload[+]
  * mimeType[+] = #application/fhir+json
* address = "http://server.url/fhir"