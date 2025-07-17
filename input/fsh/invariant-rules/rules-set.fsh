Invariant : PatientIdentification-1
Description :  "The Patient profile SHALL have at least one identifier \"NationaID\" or \"BirthCertificate\"."
Expression : "identifier.slice('http://example.org/StructureDefinition/ksm-patient','NationalIDNo').count() + identifier.slice('http://example.org/StructureDefinition/ksm-patient','BirthCertificateNo').count() > 0"
Severity : #error