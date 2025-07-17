CodeSystem: AdministrativeGenderCS
Id: administrative-gender-cs
Title: "Administrative Gender"
Description: "The gender of a person used for administrative purposes, as defined in the FHIR core specification."
* ^url = "http://hl7.org/fhir/administrative-gender"
* ^status = #active
* ^content = #complete

* #male "Male" "Male gender"
* #female "Female" "Female gender"



ValueSet: AdministrativeGenderVS
Id: administrative-gender-vs
Title: "Administrative Gender"
Description: "Administrative gender codes excluding 'unknown'."
* ^status = #active
* include codes from system AdministrativeGenderCS