Profile: KPSMedicationRequest
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips
Id: kps-medication-request
Title: "MediacationRequest Profile - KPS"
Description: "This profile defines constraints on the MedicationRequest resource for use within the Kenya Patient Summary. It captures information about medications prescribed to a patient by a healthcare provider, supporting prescription management, continuity of care, and interoperability within the national Health Information Exchange (HIE)."


* reasonReference 0..* MS
  * ^short = "Medication reason"
  * ^definition = "The reason why the medication is or was prescribed, or used. This is the reason why the medication is being prescribed or used. It provides a link to the Past or current health conditions or problems that the patient has had or has."

* category 0..* MS
* category from MedicationCategoryVS
  * ^short = "Intended use"
  * ^definition = "Indication intended use as: prevention or treatment Example: prophylaxis, treatment, diagnostic, anaesthesia, care of equipment"
  
* medication[x] only Reference(KPSMedication)
* medication[x] 1..1 MS
* medication[x] ^short = "Medication name/code"
* medication[x] ^definition = "Medication that was administered or was to be administered."

* status 1..1 MS
* status from MedicationStatusVS
  * ^short = "Medication Status"
  * ^definition = "To indicate if the medication is in active use or not."  

* dosageInstruction 0..* MS
* dosageInstruction.text 1..1  MS
  * ^short = "Dosage Regimen"
  * ^definition = "Number of units per intake and frequency of intake over a specified duration. Example: 1 tablet every 24h for 10 days."

* dosageInstruction.route 1..1 
  * ^short = "Route of administration"
  * ^definition = "Path by which the pharmaceutical product is taken into or makes contact with the body."

* dosageInstruction.timing 0..1 MS
  * ^short = "Date of onset of treatment"
  * ^definition = "Date when patient needs to start taking the medicine prescribed."

* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "resolve()"
* basedOn ^slicing.rules = #open

* basedOn contains
    carePlan 0..1 MS and 
    relatedCondition 0..* MS

* basedOn[carePlan] only Reference(CarePlan)
* basedOn[carePlan] ^short = "Plan of care"
* basedOn[carePlan] ^definition = ""Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries. Narrative containing the plan including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient. In the future it is expected that this section could be provided in a structured and coded format"

* basedOn[relatedCondition] only Reference(Condition)
* basedOn[relatedCondition] ^short = "Related condition"
* basedOn[relatedCondition] ^definition = "Identifies the entry in the Patient Summary describing the diagnosis or problem (e.g., rare disease) related to this medication."

* supportingInformation 0..* 
  * ^short = "External reference"
  * ^definition = "Reference to Clinical Practice Guidelines or other relevant guidelines."

 
 