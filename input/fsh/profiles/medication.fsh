Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $sct = http://snomed.info/sct
Alias: $medication-form-codes = http://terminology.hl7.org/CodeSystem/medication-form-codes


Profile: KpsMedication
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Id: kps-medication
Title: "Medication Profile - KPS"
Description: "This profile defines constraints on the Medication resource for use within the Kenya Patient Summary. It captures information about medicinal products prescribed, dispensed, or administered to a patient, supporting medication reconciliation, continuity of care, and data exchange within the national Health Information Exchange (HIE)."

* identifier 0..* MS
* status 1..1 MS
* code 1..1 MS
* code from MedicationVS (required) // Bound to a local or standard terminology
* form 0..1 MS
* form from MedicationFormVS 
* manufacturer 0..1 MS
* manufacturer only Reference(Organization)
* amount 0..1 MS

* ingredient 0..* MS
* ingredient.item[x] 1..1 MS
* ingredient.item[x] only Reference(KPSSubstance)
* ingredient.itemReference 1..1 

* ingredient.strength MS
* ingredient.strength.numerator.unit from UCUMUnitsVS (preferred)
* ingredient.strength.denominator.unit from UCUMUnitsVS (preferred)
* ingredient.isActive 0..1

 
* batch 0..1 MS
* batch.lotNumber 1..1 MS
* batch.expirationDate 0..1 MS

* extension contains
    MedicationBrandName named brandName 0..1 MS





Instance: AmoxicillinMedicationExample
InstanceOf: KpsMedication
Title: "Amoxicillin 500mg Capsule"
Description: "Example Medication resource representing a packaged Amoxicillin capsule."
Usage: #example

* identifier.system = "http://example.org/drugs"
* identifier.value = "AMOX500"

* code = $rxnorm#723 "Amoxicillin 500 MG Oral Capsule"
* status = #active
* manufacturer = Reference(KpsOrganization/example-manufacturer)

* form = $medication-form-codes#385055001 "Capsule"
* amount.numerator = 20 'capsule'
* amount.denominator = 1 '{package}'
 

* ingredient[0].itemReference = Reference(KPSSubstance/example-substance)
* ingredient[0].isActive = false
* ingredient[0].strength.numerator = 10 'mg'
* ingredient[0].strength.denominator = 1 'capsule'

* batch.lotNumber = "AMX-LOT-202507"
* batch.expirationDate = "2026-07-01"



// Kenyan-specific brand name
Extension: MedicationBrandName
Id: medication-brand-name
Title: "Medication Brand Name"
Description: "Captures the brand name under which the medication is marketed in Kenya."
* value[x] only string 

 

Profile: KPSSubstance
Parent: Substance
Id: kps-substance
Title: "Substance - KPS"
Description: "This profile defines the constraints on the Substance resource for use in the Kenya Patient Summary (KPS), representing active pharmaceutical substances."

* code 1..1 MS
* code from KPSSubstanceCodeVS (preferred)  
* status MS
* instance MS
* instance.quantity MS
