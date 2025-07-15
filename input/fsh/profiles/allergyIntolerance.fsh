Alias: KPSBClientCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-clinical-consultation-codes
Alias: KPSBAllergyTypeVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-allergy-type
Alias: KPSBSeverityVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-severity
Alias: KPSBClinicalStatusVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-clinical-status
Alias: KPSBVerificationStatusVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-verification-status



Profile: KpsAllergyIntolerance
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips
Id: kps-allergyIntolerance
Title: "AllergyIntolerance Profile - KPS"
Description: "This profile defines constraints on the AllergyIntolerance resource for use within the Kenya Patient Summary. It captures information about a patient's known allergies and intolerances to substances such as medications, foods, or environmental agents, supporting safer clinical decision-making, continuity of care, and data exchange within the national Health Information Exchange (HIE)."


* type 1..1 MS
  * ^short = "Allergy, Intolerance, or Unknown"
  * ^binding.strength = #required
  * ^binding.valueSet = KPSBAllergyTypeVS

* criticality 0..1 MS
  * ^short = "Likelihood of life-threatening reaction on exposure"

* clinicalStatus 1..1 MS
  * ^short = "Status of the allergy: active, resolved, etc."
  * ^binding.strength = #required
  * ^binding.valueSet = KPSBClinicalStatusVS

* verificationStatus 1..1 MS
  * ^short = "Certainty about the allergy (confirmed, unconfirmed, etc.)"
  * ^binding.strength = #required
  * ^binding.valueSet = KPSBVerificationStatusVS

* onsetDateTime 0..1 MS
* onsetAge 0..1 MS
* lastOccurrence 0..1 MS

* reaction 1..* MS
  * substance 1..1 MS
    * ^short = "Allergen or substance causing reaction"
  * description 0..1 MS
    * ^short = "Free-text description of the allergy reaction"
  * manifestation 1..* MS
    * ^short = "Clinical manifestation(s), e.g. rash, shock"
  * severity 0..1 MS
    * ^short = "Severity of reaction: mild, moderate, or severe"
    * ^binding.strength = #required
    * ^binding.valueSet = KPSBSeverityVS
  * note 0..* MS
    * ^short = "Medical alert notes (clinical importance)"
