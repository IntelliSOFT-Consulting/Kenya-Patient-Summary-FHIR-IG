Profile: KPSMedication
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips
Id: kps-medication
Title: "Medication Profile - KPS"
Description: "This profile defines constraints on the Medication resource for use within the Kenya Patient Summary. It captures information about medicinal products prescribed, dispensed, or administered to a patient, supporting medication reconciliation, continuity of care, and data exchange within the national Health Information Exchange (HIE)."


* status 1..1 MS
* code 1..1 MS
* code from MedicationVS (required) // Bound to a local or standard terminology
* form 0..1 MS
* form from MedicationFormVS
* manufacturer 0..1 MS

* ingredient 0..* MS
* ingredient.item[x] only Reference(KPSSubstance)
* ingredient.strength MS
* ingredient.strength.numerator.unit from UCUMUnitsVS (preferred)
* ingredient.strength.denominator.unit from UCUMUnitsVS (preferred)


* batch 0..1 MS
* batch.lotNumber 1..1 MS
* batch.expirationDate MS

* extension contains
    MedicationBrandName named brandName 0..1 MS

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
