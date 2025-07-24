
Profile: KpsCondition
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Id: kps-condition
Title: "Condition Profile - KPS"
Description: "This profile defines constraints on the Condition resource for use within the Kenya Patient Summary. It captures information about a patient's current or past medical conditions, diagnoses, or problems, supporting clinical assessment, continuity of care, and data exchange within the national Health Information Exchange (HIE)."


* code 1..1 MS
  * ^short = "Diagnosis or problem affecting the patient (SNOMED/ICD preferred)"
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required) 
* verificationStatus 1..1 MS
* verificationStatus from VerificationStatusVS

* category 0..* 
  * ^short = "Problem list item or encounter diagnosis"

* severity 0..1 MS
* severity from ConditionSeverityVS
  * ^short = "Subjective assessment of the seriousness of the condition" 
* bodySite 0..* 
  * ^short = "Location in/on the body affected by the condition"

* onsetDateTime 0..1 
  * ^short = "Date of onset of the condition"

* onsetAge 0..1 
  * ^short = "Age at onset of the condition"

* abatementDateTime 0..1 
  * ^short = "Date the condition last occurred or resolved"

* note 0..* 
  * ^short = "Free text for medical history, resolution circumstances, or problem description"

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
* note[0].text = "Condition identified during routine screening at county facility."

