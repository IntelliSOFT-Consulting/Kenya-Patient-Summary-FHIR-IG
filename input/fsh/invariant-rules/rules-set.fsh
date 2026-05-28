Invariant : PatientIdentification-1
Description :  "The Patient profile SHALL have at least one identifier \"NationaID\" or \"BirthCertificate\"."
Expression : "identifier.where(system = 'http://moh.kenya/identifier/nationalID-no').exists() or identifier.where(system = 'http://moh.kenya/identifier/birthCertificate-No').exists()"
Severity : #error
