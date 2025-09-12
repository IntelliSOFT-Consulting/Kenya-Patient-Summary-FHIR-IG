Profile: KpsCondition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id: kps-condition
Title: "Condition Profile - KPS"
Description: "This profile defines constraints on the Condition resource for use within the Kenya Patient Summary. It captures information about a patient's current or past medical conditions, diagnoses, or problems, supporting clinical assessment, continuity of care, and data exchange within the national Health Information Exchange (HIE)."


* code 1..1 MS
  * ^short = "Diagnosis or problem affecting the patient"

* clinicalStatus 1..1 MS
* clinicalStatus from ClinicalStatusVS
  * ^short = "Clinical status"
  * ^definition = "The clinical state of the condition"

* verificationStatus 1..1 MS
* verificationStatus from VerificationStatusVS
  * ^short = "Verification status"
  * ^definition = "The verification status to support the clinical status of the condition"

* category 1..1 MS
  * ^short = "Category of the condition"
  * ^definition = "The category assigned to the condition"

* severity 0..1 MS
* severity from ConditionSeverityVS
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



Instance: ExampleKpsCondition
InstanceOf: kps-condition
Title: "Example Condition - Hypertension (KPS)"
Description: "Example instance of a patient with hypertension for the Kenya Patient Summary"
Usage: #example

* id = "example-hypertension-condition"
* subject = Reference(Patient/example-patientKPS)
* encounter = Reference(ExampleEncounterKPS)
* code.coding[0]
  * system = "http://snomed.info/sct"
  * code = #38341003
  * display = "Hypertensive disorder, systemic arterial (disorder)"
* clinicalStatus.coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
  * code = #active
  * display = "Active"
* verificationStatus.coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
  * code = #confirmed
  * display = "Confirmed"
* severity.coding[0]
  * system = KPSBClientCodes
  * code = #moderate
  * display = "Moderate"
* onsetDateTime = "2019-06-10"
* category.coding[0]
  * system = "http://hl7.org/fhir/condition-category"
  * code = #problem-list-item
  * display = "Problem List Item"
* note[0].text = "Condition identified during routine screening at county facility."

