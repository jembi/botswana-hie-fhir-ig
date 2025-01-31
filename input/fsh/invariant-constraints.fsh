Invariant: PatientIdentifier-OpenMRS-PIMS
Description: "The Patient profile SHALL have at least one identifier \"PIMS\" or \"OpenMRS\"."
Expression: "identifier.slice('http://moh.bw.org/StructureDefinition/bw-patient', 'PIMS').count() + identifier.slice('http://moh.bw.org/StructureDefinition/bw-patient', 'OpenMRS').count() > 0"
Severity: #error