ValueSet: PatientTitleVS
Title:        "Patient title"
Description:  "Patient title"
* ^experimental = false
* ^name = "PT_TITLE"

* KNHTS.PAT.TITLE#mr
* KNHTS.PAT.TITLE#mrs
* KNHTS.PAT.TITLE#miss
* KNHTS.PAT.TITLE#ms

ValueSet: PatientContactRlshipVS
Title:        "Patient Contact Relationship ValueSet"
Description:  "Patient Contact Relationship ValueSet"
* ^experimental = false
* ^name = "PT_CONTACTRELATIONSHIP"

* KNHTS.CONTACTRELATIONSHIP#guardian
* KNHTS.CONTACTRELATIONSHIP#caregiver
* KNHTS.CONTACTRELATIONSHIP#parent
* KNHTS.CONTACTRELATIONSHIP#sibling
* KNHTS.CONTACTRELATIONSHIP#child

ValueSet: PatientIdentifierTypesVS
Title:        "Patient Identifier Types ValueSet"
Description:  "Patient Identifier Types ValueSet"
* ^experimental = false
* ^name = "PT_IDENTIFIERTYPES"

* KNHTS.IDENTIFIERTYPES#upi
* KNHTS.IDENTIFIERTYPES#nationalId
* KNHTS.IDENTIFIERTYPES#passport
* KNHTS.IDENTIFIERTYPES#birthCertficate


ValueSet: CodeSystemsVS
Title:        "Code Systems ValueSet"
Description:  "Code Systems ValueSet"
* ^experimental = false
* ^name = "PT_CODESYSTEMS"

* KNHTS.CODESYSTEMS#knhts
* KNHTS.CODESYSTEMS#loinc
* KNHTS.CODESYSTEMS#icd11
* KNHTS.CODESYSTEMS#clientRegistry
