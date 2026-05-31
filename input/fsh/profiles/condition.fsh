Profile: KpsCondition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id: ke-kps-condition
Title: "Condition Profile - KPS"
Description: "This profile defines constraints on the Condition resource for use within the Kenya Patient Summary. It captures information about a patient's current or past medical conditions, diagnoses, or problems, supporting clinical assessment, continuity of care, and data exchange within the national Health Information Exchange (HIE)."


* code 1..1 MS
* code from ConditionCodeVS (required)
  * ^short = "Diagnosis or problem affecting the patient"
  * ^definition = "The disease, disorder, or problem coded using ICD-10 or ICD-11, the standard classification systems adopted by Kenya's health system."

* clinicalStatus 1..1 MS
* clinicalStatus from ConditionClinicalStatusVS (required)
  * ^short = "Clinical status"
  * ^definition = "The clinical state of the condition"

* verificationStatus 1..1 MS
* verificationStatus from ConditionVerificationStatusVS (required)
  * ^short = "Verification status"
  * ^definition = "The verification status to support the clinical status of the condition"

* category 1..1 MS
  * ^short = "Category of the condition"
  * ^definition = "The category assigned to the condition"

* severity 0..1 MS
* severity from ConditionSeverityVS (required)
  * ^short = "Severity of the condition"
  * ^definition = "The severity of the condition as assessed by the clinician"

* bodySite 0..* MS
  * ^short = "Body site affected by the condition"
  * ^definition = "The anatomical location where the condition is or was present"

* onset[x] 0..1 MS
* onset[x] only dateTime or Age

* abatement[x] 0..1 MS
* abatement[x] only dateTime
  * ^short = "Date the condition last occurred or resolved"
  * ^definition = "The date and time when the condition last occurred or was resolved"

* note 0..* 
  * ^short = "Additional information about the condition"
  * ^definition = "Additional information about the Condition. This is a general notes/comments entry for description of the Condition, its diagnosis and prognosis."

* encounter 0..1 MS
  * ^short = "Associated encounter when diagnosis was made"



