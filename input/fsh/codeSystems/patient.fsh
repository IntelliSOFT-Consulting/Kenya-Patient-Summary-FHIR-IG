CodeSystem:   KNHTS.PAT.TITLE
Title:        "CodeSystem for patient's title"
Description:  "CodeSystem for patient's title"

* ^experimental = false
* ^caseSensitive = false
* ^name = "PT_TITLE"
* #mr "Mr" "Mr"
* #mrs "Mrs" "Mrs"
* #miss "Miss" "Miss"
* #ms "Ms" "Ms"

CodeSystem:   KNHTS.CONTACTRELATIONSHIP
Title:        "CodeSystem for Contact Relationship"
Description:  "CodeSystem for Contact Relationship"

* ^experimental = false
* ^caseSensitive = false
* ^name = "PT_CONTACTRELATIONSHIP"
* #guardian "guardian" "guardian"
* #caregiver "caregiver" "caregiver"
* #parent "parent" "parent"
* #sibling "sibling" "sibling"
* #child "child" "child"


CodeSystem:    KNHTS.IDENTIFIERTYPES
Title:        "CodeSystem for patient's identifier Types"
Description:  "CodeSystem for patient's identifier Types"

* ^experimental = false
* ^caseSensitive = false
* ^name = "PAT_IDENTIFIERTYPES"
* #upi "UPI" "UPI"
* #nationalId "National ID" "National ID"
* #passport "Passport No." "Passport No."
* #birthCertficate "Birth Certificate No." "Birth Certificate No."

CodeSystem:    KNHTS.CODESYSTEMS
Title:        "CodeSystem for Code systems"
Description:  "CodeSystem for Code systems"

* ^experimental = false
* ^caseSensitive = false
* ^name = "PAT_CODESYSTEMS"
* #knhts "http://knhts.health.go.ke" "http://knhts.health.go.ke"
* #loinc "http://loinc.org" "http://loinc.org"
* #icd11 "https://icd.who.int/" "https://icd.who.int"
* #clientRegistry "https:example.cr/" "https:example.cr/"
