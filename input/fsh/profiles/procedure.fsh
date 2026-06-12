Profile: KpsProcedure
Parent: Procedure
Id: ke-kps-procedure
Title: "Procedure Profile - KPS"
Description: "This profile defines constraints on the Procedure resource for use within the Kenya Patient Summary. It identifies healthcare facilities or organizations involved in the provision or management of patient care, supporting national HIE and continuity of care."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsProcedureProfileV

* status 1..1 MS
* code 1..1 MS
* code from ProcedureCodeVS (required)
* subject 1..1 MS
* performed[x] 1..1 MS
* performed[x] only dateTime or Period
* reasonCode MS
* reasonCode from ConditionCodeVS (required)
* bodySite MS
* outcome MS
* performer 0..* MS
* performer.actor 1..1 MS 
* location MS 

// Optional Kenyan-specific extension for Procedure Type (e.g., Elective, Emergency)
* extension contains
    ProcedureTypeCategory named procedureType 0..1 MS

Extension: ProcedureTypeCategory
Id: procedure-type-category
Title: "Procedure Type Category"
Description: "Classifies the type of procedure (e.g., elective, emergency, referral-based) used in KPS."
* value[x] only CodeableConcept
* valueCodeableConcept from ProcedureCodeVS (required)
