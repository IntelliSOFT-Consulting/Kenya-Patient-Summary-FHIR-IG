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
* $UCUM#mcg "microgram"
* $UCUM#mL "millilitre"
* $UCUM#L "litre"
* $UCUM#mmol "millimole"
* $UCUM#mol "mole"
* $UCUM#U "unit"
* $UCUM#IU "international unit"


ValueSet: PatientTitleVS
Id: patient-title-vs
Title: "Patient Title"
Description: "Patient salutation/title codes from the Kenya national terminology."
* ^experimental = false
* ^name = "PT_TITLE"
* KnhtsPatTitleCS#mr
