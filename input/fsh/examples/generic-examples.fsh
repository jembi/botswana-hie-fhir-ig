Instance: CurrentServiceProviderExample
InstanceOf: UATServiceProvider
Usage: #example
Title: "Organization - Current Facility"
Description: "Current organization providing health related services."
* active = true
* name = "Meshwalkiya Health Center"
* address[+].line[+] = "Meshulekia"
* address[=].city = "Kirkos"
* address[=].state = "Addis Ababa"
* address[=].district = "Kirkos woreda 9"

* identifier[MOHID][+].value = "MOH001"
* identifier[MOHID][=].system = "http://moh.bw.org/identifier/mohid"

* identifier[HFUID][+].value = "HFUID001"
* identifier[HFUID][=].system = "http://moh.bw.org/identifier/hfuid"

* identifier[MFL][+].value = "MFL"
* identifier[MFL][=].value.extension[MFLCode].valueCodeableConcept = http://moh.bw.org/CodeSystem/cs-master-facility-list#703564-5
* identifier[MFL][=].system = "http://moh.bw.org/ext/identifier/mfl-code"

* type[+] = $SCT#257622000
* type[=].text = "Current Healthcare Provider"

Instance: LaboratoryProviderExample
InstanceOf: UATServiceProvider
Usage: #example
Title: "Organization - Current Laboratory"
Description: "Current organization providing laboratory related services."
* active = true
* name = "Meshwalkiya Health Center"
* address[+].line[+] = "Meshulekia"
* address[=].city = "Kirkos"
* address[=].state = "Addis Ababa"
* address[=].district = "Kirkos woreda 9"

* identifier[MOHID][+].value = "MOH001"
* identifier[MOHID][=].system = "http://moh.bw.org/identifier/mohid"

* identifier[HFUID][+].value = "HFUID001"
* identifier[HFUID][=].system = "http://moh.bw.org/identifier/hfuid"

* identifier[MFL][+].value = "MFL"
* identifier[MFL][=].value.extension[MFLCode].valueCodeableConcept = http://moh.bw.org/CodeSystem/cs-master-facility-list#537111-7
* identifier[MFL][=].system = "http://moh.bw.org/ext/identifier/mfl-code"

* type[+] = $SCT#45899008
* type[=].text = "Laboratory"

/*Instance: GeneralPatientExample
InstanceOf: GenericUATBwPatient
Usage: #example
Title: "Patient - General"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[MRN].value = "MRN12345671"
* identifier[MRN].system = "http://moh.bw.org/identifier/mrn"

* name[+].given[+] = "Mark"
* name[=].family = "Adams"

* gender = #male
* birthDate = "2000-11-11"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M
* address[+].city = "Addis Ababa"
* address[=].line[+] = "123"
* address[=].line[+] = "Tesfaye Street"
* address[=].line[+] = "Bole"
* address[=].district = "Addis Ababa Central District"
* address[=].state = "Addis Ababa"

* managingOrganization = Reference(CurrentServiceProviderExample)

* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home*/

Instance: GeneralPractitionerExample
InstanceOf: UATPractitioner
Usage: #example
Title: "Practitioner - General Practitioner"
Description: 
"Represents the practitioners who participated in the health-related event."
* identifier[OMANG].value = "omang1234"
* identifier[OMANG].system = "http://moh.bw.org/ext/identifier/omang"
* name[+].prefix[+] = "Dr"
* name[=].given[+] = "Tom"
* name[=].given[+] = "Junes"
* name[=].family = "Smith"
* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

/*Instance: LabReportCompositionExample
InstanceOf: LabReportComposition
Usage: #example
Title: "Composition - Lab report"
Description: "Clinical document used to represent the outcome for a lab order and when applicable, with lab results."
* identifier.value = "PAT0001-v1"
* identifier.system = "http://moh.bw.org/identifier/lab-report-document"
* status = #final
* subject = Reference(GeneralPatientExample)
* encounter = Reference(GeneralEncounterExample)
* type = $LNC#11502-2
* date = "2024-02-20"
* author[+] = Reference(GeneralPractitionerExample)
* author[+] = Reference(CurrentServiceProviderExample)
* title = "Lab Report Summary Document"

* section[sectionPractitioners][+].title = "List of practitioners section"
* section[sectionPractitioners][=].code = $LNC#LA9327-3
* section[sectionPractitioners][=].entry[practitioner][+] = Reference(GeneralPractitionerExample)
* section[sectionPractitioners][=].text.status = #generated
* section[sectionPractitioners][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: Practitioner GeneralPractitionerExample</b></p><a name=\"GeneralPractitionerExample\"> </a><a name=\"hcGeneralPractitionerExample\"> </a><a name=\"GeneralPractitionerExample-en-US\"> </a><p><b>name</b>: Tom Junes Smith </p><p><b>telecom</b>: ph: 27537652509(Work), <a href=\"mailto:someone@something.org\">someone@something.org</a></p></div>"

* section[sectionServiceRequest][+].title = "Lab order summary section"
* section[sectionServiceRequest][=].code = $SCT#165332000
* section[sectionServiceRequest][=].entry[serviceRequest][+] = Reference(CompletedServiceRequestExample)
* section[sectionServiceRequest][=].text.status = #generated
* section[sectionServiceRequest][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest CompletedServiceRequestExample</b></p><a name=\"CompletedServiceRequestExample\"> </a><a name=\"hcCompletedServiceRequestExample\"> </a><a name=\"CompletedServiceRequestExample-en-US\"> </a><p><b>identifier</b>: Placer Identifier/ORDER12345</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>code</b>: <span title=\"Codes:\">Some Test Type</span></p><p><b>subject</b>: <a href=\"Patient-GeneralPatientExample.html\">Mark Adams  Male, DoB: 2000-11-11 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-GeneralEncounterExample.html\">Encounter: status = finished; class = observation encounter (ActCode#OBSENC); period = 2012-12-09 --&gt; 2012-12-09</a></p><p><b>occurrence</b>: 2012-01-05</p><p><b>requester</b>: <a href=\"Practitioner-GeneralPractitionerExample.html\">Practitioner Tom Junes Smith </a></p><p><b>performer</b>: <a href=\"Organization-LaboratoryProviderExample.html\">Organization Meshwalkiya Health Center</a></p><p><b>specimen</b>: <a href=\"Specimen-AvailableSpecimenForCompletedRequestsExample.html\">Specimen: identifier = Unique Specimen ID; status = available; type = Plasma specimen; receivedTime = 2022-07-28</a></p></div>"

* section[sectionTask][+].title = "Task summary section"
* section[sectionTask][=].code = $LNC#92235-1
* section[sectionTask][=].entry[task][+] = Reference(LabResultTaskExample)
* section[sectionTask][=].text.status = #generated
* section[sectionTask][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: Task LabResultTaskExample</b></p><a name=\"LabResultTaskExample\"> </a><a name=\"hcLabResultTaskExample\"> </a><a name=\"LabResultTaskExample-en-US\"> </a><p><b>identifier</b>: Filler Identifier/ORDER12345</p><p><b>basedOn</b>: <a href=\"ServiceRequest-CompletedServiceRequestExample.html\">ServiceRequest </a></p><p><b>status</b>: Completed</p><p><b>intent</b>: order</p><p><b>executionPeriod</b>: 2022-07-28 --&gt; 2022-07-30</p><p><b>requester</b>: <a href=\"Organization-CurrentServiceProviderExample.html\">Organization Meshwalkiya Health Center</a></p><p><b>owner</b>: <a href=\"Organization-CurrentServiceProviderExample.html\">Organization Meshwalkiya Health Center</a></p><h3>Outputs</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">Some Lab Result</span></td><td><a href=\"DiagnosticReport-LabResultsDiagnosticReportExample.html\">Diagnostic Report for '' for '-&gt;Mark Adams  Male, DoB: 2000-11-11 ( Medical record number)'</a></td></tr></table></div>"

* section[sectionSpecimen][+].title = "Specimen summary section"
* section[sectionSpecimen][=].code = $LNC#LP404274-5
* section[sectionSpecimen][=].entry[specimen][+] = Reference(AvailableSpecimenForCompletedRequestsExample)
* section[sectionSpecimen][=].text.status = #generated
* section[sectionSpecimen][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: Specimen AvailableSpecimenForCompletedRequestsExample</b></p><a name=\"AvailableSpecimenForCompletedRequestsExample\"> </a><a name=\"hcAvailableSpecimenForCompletedRequestsExample\"> </a><a name=\"AvailableSpecimenForCompletedRequestsExample-en-US\"> </a><p><b>identifier</b>: Unique Specimen ID/abc123</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 119361006}\">Specimen Type</span></p><p><b>subject</b>: <a href=\"Patient-GeneralPatientExample.html\">Mark Adams  Male, DoB: 2000-11-11 ( Medical record number)</a></p><p><b>receivedTime</b>: 2022-07-28</p><p><b>request</b>: <a href=\"ServiceRequest-CompletedServiceRequestExample.html\">ServiceRequest </a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2022-07-28</td></tr></table></div>"

* section[sectionObservations][+].title = "Lab results summary section"
* section[sectionObservations][=].code = $LNC#LP281480-6
* section[sectionObservations][=].entry[result][+] = Reference(TestResultExample)
* section[sectionObservations][=].text.status = #generated
* section[sectionObservations][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: Observation TestResultExample</b></p><a name=\"TestResultExample\"> </a><a name=\"hcTestResultExample\"> </a><a name=\"TestResultExample-en-US\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:\">Some code</span></p><p><b>subject</b>: <a href=\"Patient-GeneralPatientExample.html\">Mark Adams  Male, DoB: 2000-11-11 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-GeneralEncounterExample.html\">Encounter: status = finished; class = observation encounter (ActCode#OBSENC); period = 2012-12-09 --&gt; 2012-12-09</a></p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: <a href=\"Organization-LaboratoryProviderExample.html\">Organization Meshwalkiya Health Center</a></p><p><b>value</b>: Positive</p><p><b>specimen</b>: <a href=\"Specimen-AvailableSpecimenForCompletedRequestsExample.html\">Specimen: identifier = Unique Specimen ID; status = available; type = Plasma specimen; receivedTime = 2022-07-28</a></p></div>"

* section[sectionDiagnosticReport][+].title = "Diagnostic report summary section"
* section[sectionDiagnosticReport][=].code = $LNC#LP420386-7
* section[sectionDiagnosticReport][=].entry[report][+] = Reference(LabResultsDiagnosticReportExample)
* section[sectionDiagnosticReport][=].text.status = #generated
* section[sectionDiagnosticReport][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport LabResultsDiagnosticReportExample</b></p><a name=\"LabResultsDiagnosticReportExample\"> </a><a name=\"hcLabResultsDiagnosticReportExample\"> </a><a name=\"LabResultsDiagnosticReportExample-en-US\"> </a><h2><span title=\"Codes:\">Some Test Type</span> (<span title=\"Codes:{http://loinc.org 11502-2}\">Laboratory report</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>No display for Patient </td></tr><tr><td>Reported</td><td>2022-07-28 13:28:17-0500</td></tr><tr><td>Performer</td><td> <a href=\"Practitioner-GeneralPractitionerExample.html\">Practitioner Tom Junes Smith </a></td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Flags</b></td><td><b>When For</b></td></tr><tr><td><a href=\"Observation-TestResultExample.html\"><span title=\"Codes:\">Some code</span></a></td><td>Positive</td><td>Final</td><td>2022-11-30</td></tr></table></div>"
*/
