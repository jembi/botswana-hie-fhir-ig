Invariant: PatientIdentifier-1
Description: "The Patient profile SHALL have at least one identifier \"PIMS\" or \"OpenMRS\"."
Expression: "identifier.slice('http://moh.bw.org/StructureDefinition/bw-patient', 'PIMS').count() + identifier.slice('http://moh.bw.org/StructureDefinition/bw-patient', 'OpenMRS').count() > 0"
Severity: #error


/*Invariant: PatientContained-1
Description: "The Patient profile SHALL reference the contained element when using link.other."
Expression: "link.other.slice('http://moh.bw.org/StructureDefinition/patient-identity-cross-reference', 'PatientData').exists() implies contained.count() > 0"
Severity: #error*/