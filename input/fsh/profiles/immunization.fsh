Profile: KpsImmunization
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Id: kps-immunization
Title: "Immunization Profile - KPS"
Description : "This profile defines constraints on the Immunization resource for use within the Kenya Patient Summary. It captures details of vaccines administered to a patient, supporting immunization history tracking, clinical decision-making, and data exchange within the national Health Information Exchange (HIE)."

* status 1..1 MS
* status from VaccineStatusVS
* status ^short = "Status of Vaccine"

* vaccineCode 1..1 MS
* vaccineCode ^short = "Vaccine Code"
* vaccineCode ^definition = "Vaccine that was administered or was to be administered."

* lotNumber 0..1 MS
* lotNumber ^short = "Lot Number of Vaccine"

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime

* protocolApplied 0..*
  * targetDisease 1..1 MS
    * ^short = "Target Disease of Immunization"
  * series 1..1 MS
    * ^short = "Name of Vaccine Series"
  * doseNumber[x] 1..1 MS
  * doseNumber[x] only positiveInt
    * ^short = "Dose Number in Series"

* location 0..1 MS
* location ^short = "Location of Immunization"

* performer.actor 1..1 MS
* performer.actor ^short = "Performer of Immunization"
