Profile: KpsImmunization
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Id: kps-immunization
Title: "Immunization Profile - KPS"
Description : "This profile defines constraints on the Immunization resource for use within the Kenya Patient Summary. It captures details of vaccines administered to a patient, supporting immunization history tracking, clinical decision-making, and data exchange within the national Health Information Exchange (HIE)."

* protocolApplied.targetDisease 0..* MS
* protocolApplied.targetDisease ^short = "Target Disease of Immunization"

* status 1..1 MS
* status from VaccineStatusVS
* status ^short = "Status of Vaccine"

* protocolApplied.series 0..1 MS
* protocolApplied.series ^short = "Name of Vaccine Series"

* vaccineCode 1..1 MS
* vaccineCode ^short = "Vaccine Code"

* protocolApplied.doseNumberPositiveInt 1..1 MS
* protocolApplied.doseNumberPositiveInt ^short = "Dose Number"

* lotNumber 0..1 MS
* lotNumber ^short = "Lot Number of Vaccine"

* occurrenceDateTime 1..1 MS
* occurrenceDateTime ^short = "Date and Time of Immunization"

* location 0..1 MS
* location ^short = "Location of Immunization"

* performer.actor 1..1 MS
* performer.actor ^short = "Performer of Immunization"
