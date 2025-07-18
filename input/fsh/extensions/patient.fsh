Extension: PatientTitle
Id: patient-title
Title:  "Extension for Patient's title"
Description: "Patient's title"
Context: Patient
// url, status, purpose, and other metadata could be defined here using caret syntax (omitted)
* value[x] only string
* value[x] from PatientTitleVS (required)


Extension: InsuranceInformation
Id: insurance-information
Title: "Insurance Information"
Description: "Extension to capture health insurance number."
* value[x] only string
* ^context.type = #element
* ^context.expression = "Patient"
