Profile: KpsEncounter
Parent: Encounter
Id: ke-kps-encounter
Title: "Encounter Profile - KPS"
Description: """
Defines constraints on the Encounter resource for use within the Kenya Patient Summary (KPS).
Captures details about interactions between a patient and healthcare provider.
"""

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^fixedCanonical = $KpsEncounterProfileV

* status 1..1 MS
  * ^short = "The status of the encounter (e.g., finished, in-progress)"

* class 1..1 MS
  * ^short = "Classification of encounter (e.g., inpatient, outpatient, emergency)"

* type 0..* MS
  * ^short = "Specific type of encounter (e.g., consultation, check-up)"
  * ^binding.strength = #example
  * ^binding.valueSet = "http://hl7.org/fhir/ValueSet/encounter-type"

* subject 1..1 MS
  * ^short = "The patient involved in the encounter"

* period 0..1 MS
  * ^short = "The time period during which the encounter occurred"

* reasonCode 0..* MS
  * ^short = "The reason why the encounter occurred"
  * ^binding.strength = #example
  * ^binding.valueSet = "http://hl7.org/fhir/ValueSet/encounter-reason"

* location 0..* MS
  * ^short = "Location where the encounter took place"

 
