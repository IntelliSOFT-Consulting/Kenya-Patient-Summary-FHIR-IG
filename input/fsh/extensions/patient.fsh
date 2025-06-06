Extension: County
Id: patients-county
Title:  "Extension for Patient's County"
Description: "Patient's County"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only code
* value[x] from kenyaCountiesVS (required)

Extension: SubCounty
Id: patients-sub-county
Title:  "Extension for Patient's Sub-County"
Description: "Patient's Patient's Sub-County"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only code
* value[x] from kenyaCountiesVS (required)


Extension: Ward
Id: patients-ward
Title:  "Extension for Patient's Ward"
Description: "Patient's Patient's Ward"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only code
* value[x] from kenyaCountiesVS (required)

Extension: villageEstate
Id: village-estate
Title:  "Extension for Patient's Village Estate"
Description: "Patient's Village Estate"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only string

Extension: BuildingHouseNo
Id: building-house-no
Title:  "Extension for Patient's building_house_no"
Description: "Patient's building_house_no"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only string

Extension: latitude
Id: latitude
Title:  "Extension for Patient's latitude"
Description: "Patient's latitude"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only string

Extension: longitude
Id: longitude
Title:  "Extension for Patient's longitude"
Description: "Patient's longitude"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only string

Extension: ProvinceStateCountry
Id: province-state-country
Title:  "Extension for Patient's Province State Country"
Description: "Patient's Province State Country"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only string

Extension: IdentificationResidence
Id: identification-residence
Title:  "Extension for Patient's identification residence"
Description: "Patient's Identification Residence"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only string

Extension: patientTitle
Id: patient-title
Title:  "Extension for Patient's title"
Description: "Patient's title"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only string
* value[x] from PatientTitleVS (required)