Alias: KPSBClientCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-clinical-consultation-codes
Alias: KPSBClinicalStatusVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-clinical-status
Alias: KPSBVerificationStatusVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-verification-status
Alias: KPSBSeverityVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-severity

Profile: KpsCondition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id: kps-condition
Title: "Condition Profile - KPS"
Description: "This profile defines constraints on the Condition resource for use within the Kenya Patient Summary. It captures information about a patient's current or past medical conditions, diagnoses, or problems, supporting clinical assessment, continuity of care, and data exchange within the national Health Information Exchange (HIE)."


* code 1..1 MS
  * ^short = "Diagnosis or problem affecting the patient (SNOMED/ICD preferred)"

* clinicalStatus 1..1 MS
  * ^short = "Clinical state of the condition (active, inactive, resolved, etc.)"
  * ^binding.strength = #required
  * ^binding.valueSet = KPSBClinicalStatusVS

* verificationStatus 1..1 MS
  * ^short = "Certainty of the diagnosis"
  * ^binding.strength = #required
  * ^binding.valueSet = KPSBVerificationStatusVS

* category 0..* MS
  * ^short = "Problem list item or encounter diagnosis"

* severity 0..1 MS
  * ^short = "Subjective assessment of the seriousness of the condition"
  * ^binding.strength = #preferred
  * ^binding.valueSet = KPSBSeverityVS

* bodySite 0..* MS
  * ^short = "Location in/on the body affected by the condition"

* onsetDateTime 0..1 MS
  * ^short = "Date of onset of the condition"

* onsetAge 0..1 MS
  * ^short = "Age at onset of the condition"

* abatementDateTime 0..1 MS
  * ^short = "Date the condition last occurred or resolved"

* note 0..* MS
  * ^short = "Free text for medical history, resolution circumstances, or problem description"

* encounter 0..1 MS
  * ^short = "Associated encounter when diagnosis was made"
