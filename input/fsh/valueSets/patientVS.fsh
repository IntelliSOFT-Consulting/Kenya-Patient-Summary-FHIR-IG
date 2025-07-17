Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct

ValueSet: GenderVS
Id: gender-vs
Title: "Gender ValueSet"
Description: "ValueSet for gender using SNOMED CT codes"
* $SCT#248153007 "Male (gender)"
* $SCT#248152002 "Female (gender)"

ValueSet: MedicationVS
Id: medication-vs
Title: "Medication Value Set"
Description:  "Value Sets for Medications)"
* $SCT#372687004 "Amoxicillin (substance)"
* $SCT#387517004 "Metformin (substance)"
* $SCT#387458008 "Paracetamol (substance)"
* $SCT#387544009 "Lisinopril (substance)"
* $SCT#387406002 "Atorvastatin (substance)"


ValueSet: PatientTitleVS
Title:        "Patient title"
Description:  "Patient title"
* ^experimental = false
* ^name = "PT-TITLE"

* KNHTS.PAT.TITLE#mr
* KNHTS.PAT.TITLE#mrs
* KNHTS.PAT.TITLE#miss
* KNHTS.PAT.TITLE#ms

ValueSet: PatientContactRlshipVS
Title:        "Patient Contact Relationship ValueSet"
Description:  "Patient Contact Relationship ValueSet"
* ^experimental = false
* ^name = "PT-CONTACTRELATIONSHIP"

* KNHTS.CONTACTRELATIONSHIP#guardian
* KNHTS.CONTACTRELATIONSHIP#caregiver
* KNHTS.CONTACTRELATIONSHIP#parent
* KNHTS.CONTACTRELATIONSHIP#sibling
* KNHTS.CONTACTRELATIONSHIP#child

ValueSet: PatientIdentifierTypesVS
Title:        "Patient Identifier Types ValueSet"
Description:  "Patient Identifier Types ValueSet"
* ^experimental = false
* ^name = "PT-IDENTIFIERTYPES"

* KNHTS.IDENTIFIERTYPES#upi
* KNHTS.IDENTIFIERTYPES#nationalId
* KNHTS.IDENTIFIERTYPES#passport
* KNHTS.IDENTIFIERTYPES#birthCertficate


ValueSet: CodeSystemsVS
Title:        "Code Systems ValueSet"
Description:  "Code Systems ValueSet"
* ^experimental = false
* ^name = "PT-CODESYSTEMS"

* KNHTS.CODESYSTEMS#knhts
* KNHTS.CODESYSTEMS#loinc
* KNHTS.CODESYSTEMS#icd11
* KNHTS.CODESYSTEMS#clientRegistry
