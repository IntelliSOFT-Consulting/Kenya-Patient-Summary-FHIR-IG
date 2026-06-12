Profile: KpsMedicationStatement
Parent: MedicationStatement
Id: ke-kps-medication-statement
Title: "MedicationStatement Profile - KPS"
Description: "This profile defines constraints on the MedicationStatement resource for use within the Kenya Patient Summary. It captures information about medications a patient is taking or has taken, whether self-reported or recorded by a healthcare provider, supporting accurate medication history, patient safety, and data exchange within the national Health Information Exchange (HIE)."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsMedicationStatementProfileV

* status 1..1 MS
  * ^short = "Medication statement status"

* medication[x] 1..1 MS
* medication[x] from KPSMedicationVS (required)
  * ^short = "Medication name or code (WHO ATC)"
  * ^definition = "The medication being taken, coded using the WHO ATC national formulary. Replaces the IPS SNOMED CT-based medication ValueSet."

* subject 1..1 MS
* subject only Reference(KpsPatient)
  * ^short = "Patient the medication statement is about"

* effective[x] 1..1 MS
* effective[x] only dateTime or Period
  * ^short = "Date or period the medication was taken"

* dosage 0..* MS
* dosage.text 0..1
  * ^short = "Free-text dosage instructions"
* dosage.route 0..1
  * ^short = "Route of administration"
