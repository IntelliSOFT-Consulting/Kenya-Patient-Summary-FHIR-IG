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

* criticality 0..1 MS
  * ^short = "Likelihood of life-threatening reaction on exposure"

* clinicalStatus 1..1 MS
  * ^short = "Status of the allergy: active, resolved, etc." 

* verificationStatus 1..1 MS
  * ^short = "Certainty about the allergy (confirmed, unconfirmed, etc.)" 

* onsetDateTime 0..1 
* onsetAge 0..1 
* lastOccurrence 0..1 

* reaction 1..* MS
  * substance 1..1 
    * ^short = "Allergen or substance causing reaction"
  * description 0..1 
    * ^short = "Free-text description of the allergy reaction"
  * manifestation 1..* 
    * ^short = "Clinical manifestation(s), e.g. rash, shock"
  * severity 0..1 MS
  * severity from AllergySeverityVS
    * ^short = "Severity of reaction: mild, moderate, or severe" 
  * note 0..* 
    * ^short = "Medical alert notes (clinical importance)"





Instance: ExampleAllergyIntoleranceKPS
InstanceOf: kps-allergyIntolerance
Title: "Example AllergyIntolerance for Kenya Patient Summary"
Description: "An example AllergyIntolerance instance for a patient allergic to penicillin."
Usage: #example

* id = "example-allergy-patient-001"
* patient = Reference(Patient/example-patientKPS)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* type = KPSBClientCodes#allergy "Allergy"
* criticality = #high
* onsetDateTime = "2021-05-01"

* reaction[0]
  * substance.coding[0]
    * system = "http://snomed.info/sct"
    * code = #91936005
    * display = "Allergy to penicillin"
  * description = "Develops severe rash and difficulty breathing after penicillin"
  * manifestation[0].coding[0]
    * system = "http://snomed.info/sct"
    * code = #271807003
    * display = "Rash"
  * manifestation[1].coding[0]
    * system = "http://snomed.info/sct"
    * code = #230145002
    * display = "Difficulty breathing"
  * severity = KPSBClientCodes#severe "Severe"
  * note[0].text = "Carry epinephrine auto-injector at all times."
 