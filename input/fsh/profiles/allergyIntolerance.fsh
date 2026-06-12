Profile: KpsAllergyIntolerance
Parent: AllergyIntolerance
Id: ke-kps-allergy-intolerance
Title: "AllergyIntolerance Profile - KPS"
Description: "This profile defines constraints on the AllergyIntolerance resource for use within the Kenya Patient Summary. It captures information about a patient's known allergies and intolerances to substances such as medications, foods, or environmental agents, supporting safer clinical decision-making, continuity of care, and data exchange within the national Health Information Exchange (HIE)."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsAllergyProfileV

* code 0..1 MS
* code from AllergyIntoleranceCodeVS (required)
  * ^short = "Causative agent (allergen)"
  * ^definition = "The substance (drug, food, or environmental agent) that causes the allergy or intolerance. Uses WHO ATC for drug allergens and ICD-10 for other classified allergens."

* type 1..1 MS
* type from KPSAllergyTypeVS (required)
  * ^short = "Allergy, Intolerance, or Unknown"
  * ^definition = "Type of reaction: allergy, intolerance, or unknown."

* criticality 0..1 MS
  * ^short = "Likelihood of life-threatening reaction on exposure"
  * ^definition = "Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance."

* clinicalStatus 0..1 MS
* clinicalStatus from KPSAllergyStatusVS (required)
  * ^short = "Status of the allergy: active, resolved, etc."
  * ^definition = "The clinical status of the allergy"

* verificationStatus 1..1 MS
* verificationStatus from AllergyIntoleranceVerificationStatusVS (required)
  * ^short = "Certainty about the allergy (confirmed, unconfirmed, etc.)"
  * ^definition = "The verification status to support the clinical status of the allergy"

* onset[x] 0..1 MS
* onset[x] only dateTime or Age

* lastOccurrence 0..1 
  * ^short = "Date of last occurrence of the allergy"
  * ^definition = "The date and time when the allergy last occurred or was resolved."

* reaction 1..* MS
  * substance 0..1 MS
  * substance from AllergyIntoleranceCodeVS (required)
    * ^short = "Substance causing the reaction"
    * ^definition = "Specific allergen substance that triggered this reaction event, coded using WHO ATC or ICD-10."
  * description 0..1
    * ^short = "Free-text description of the allergy reaction"
  * manifestation 1..* MS
  * manifestation from AllergyIntoleranceReactionManifestationVS (required)
    * ^short = "Clinical manifestation(s), e.g. rash, anaphylaxis"
    * ^definition = "Reaction manifestation coded using ICD-10 or LOINC clinical finding codes."
  * severity 0..1 MS
  * severity from KPSAllergySeverityVS (required)
    * ^short = "Severity of reaction"

* note 0..* 
  * ^short = "Medical alert notes (clinical importance)"
