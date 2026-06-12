
Profile: KpsObservation
Parent: Observation
Id: ke-kps-observation
Title: "Observation Profile - KPS"
Description: """
This profile defines constraints on the Observation resource for use in the Kenya Patient Summary (KPS). 
It captures structured social history, pregnancy, lifestyle, and travel-related observations to support 
clinical decision-making, public health surveillance, and care continuity.
"""

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^fixedCanonical = $KpsObservationProfileV

* status 1..1 MS
  * ^short = "The status of the observation (e.g., final, amended)"

* code 1..1 MS
  * ^short = "Type of observation (e.g., pregnancy status, smoking)"
  * ^binding.strength = #example
  * ^binding.valueSet = "http://hl7.org/fhir/ValueSet/observation-codes" // Replace if you define a local VS

* subject 1..1 MS
  * ^short = "Patient whose observation is being recorded"

* effective[x] 0..1 MS
  * ^short = "Clinically relevant time/time period for the observation"

* value[x] 1..1 MS
  * ^short = "The actual result or value of the observation (e.g. code, date, quantity, string)"

* category 0..* MS
* category from ObservationCategoryVS (required)
  * ^short = "Classification of the observation (e.g., social-history)"
  * ^binding.strength = #required 

* note 0..* 
  * ^short = "Additional narrative or contextual information"
* performer 0..1 MS
* performer only Reference (KpsPractitioner)


