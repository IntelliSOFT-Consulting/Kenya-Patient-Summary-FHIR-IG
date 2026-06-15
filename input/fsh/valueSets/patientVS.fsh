// All SNOMED CT-based ValueSets previously defined here have been removed.
// FHIR R4 standard ValueSets (allergyintolerance-*, condition-*, immunization-*,
// medication-*, specimen-*, procedure-*) defined in globalVS.fsh are used instead.

ValueSet: UCUMUnitsVS
Id: ucum-units-vs
Title: "UCUM Units for Medication Strength"
Description: "A preferred set of UCUM units for representing medication strengths and dosages."
* ^experimental = false
* $UCUM#mg "milligram"
* $UCUM#g "gram"
* $UCUM#ug "microgram"
* $UCUM#mL "milliliter"
* $UCUM#L "liter"
* $UCUM#mmol "millimole"
* $UCUM#mol "mole"
* $UCUM#U "Unit"
* $UCUM#[iU] "international unit"


ValueSet: PatientTitleVS
Id: patient-title-vs
Title: "Patient Title"
Description: "Patient salutation/title codes from the Kenya national terminology."
* ^experimental = false
* ^name = "PT_TITLE"
* KnhtsPatTitleCS#mr
