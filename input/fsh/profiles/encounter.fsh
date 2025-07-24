Profile: KpsEncounter
Parent: Encounter
Id: kps-encounter
Title: "Encounter Profile - KPS"
Description: """
Defines constraints on the Encounter resource for use within the Kenya Patient Summary (KPS).
Captures details about interactions between a patient and healthcare provider.
"""

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


Instance: ExampleEncounterKPS
InstanceOf: kps-encounter
Title: "Example Encounter - KPS"
Description: "A sample encounter record for a KPS patient"
Usage: #example

* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"
* type[0].coding[0].system = "http://snomed.info/sct"
* type[0].coding[0].code = #185349003
* type[0].coding[0].display = "Encounter for check up (procedure)"
* subject = Reference(Patient/example-patientKPS)
* period.start = "2024-12-01T10:00:00+03:00"
* period.end = "2024-12-01T11:00:00+03:00"
* reasonCode[0].coding[0].system = "http://snomed.info/sct"
* reasonCode[0].coding[0].code = #162673000
* reasonCode[0].coding[0].display = "General examination of patient (procedure)"
* location[0].location = Reference(Location/NairobiClinic)
