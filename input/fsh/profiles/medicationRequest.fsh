Profile: KpsMedicationRequest
Parent: MedicationRequest
Id: ke-kps-medication-request
Title: "MediacationRequest Profile - KPS"
Description: "This profile defines constraints on the MedicationRequest resource for use within the Kenya Patient Summary. It captures information about medications prescribed to a patient by a healthcare provider, supporting prescription management, continuity of care, and interoperability within the national Health Information Exchange (HIE)."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsMedicationRequestProfileV

* reasonReference 0..* MS
  * ^short = "Medication reason"
  * ^definition = "The reason why the medication is or was prescribed or used. Links to current or past conditions."

* category 0..* 
* category from MedicationRequestCategoryVS (required)
  * ^short = "Intended use"
  * ^definition = "Indication of intended use as: prevention, treatment, diagnostic, anaesthesia, care of equipment."
  
* medication[x] 1..1 MS
  * ^short = "Medication name/code"
  * ^definition = "Medication that was administered or was to be administered."

* status 1..1
* status from http://hl7.org/fhir/ValueSet/medicationrequest-status (required)
  * ^short = "Medication Status"
  * ^definition = "To indicate if the medication is in active use or not."  

* dosageInstruction 0..* MS
* dosageInstruction.text 0..1 
  * ^short = "Dosage Regimen"
  * ^definition = "Number of units per intake and frequency of intake over a specified duration. Example: 1 tablet every 24h for 10 days."

* dosageInstruction.route 0..1 
  * ^short = "Route of administration"
  * ^definition = "Path by which the pharmaceutical product is taken into or makes contact with the body."

* dosageInstruction.timing 0..1 MS
  * ^short = "Date of onset of treatment"
  * ^definition = "Date when patient needs to start taking the medicine prescribed."

* basedOn 0..* MS
  * ^short = "Plan of care / Related with"
  * ^definition = "Links to CarePlan or another entry for context. Therapeutic plans, including non-pharmacologic treatments."

* supportingInformation 0..* MS
  * ^short = "External reference"
  * ^definition = "Reference to Clinical Practice Guidelines or other relevant guidelines."

 
 
