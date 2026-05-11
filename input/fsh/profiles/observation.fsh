Alias: KPSBClientCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-clinical-consultation-codes

Profile: KpsObservation
Parent: Observation
Id: ke-kps-observation
Title: "Observation Profile - KPS"
Description: """
This profile defines constraints on the Observation resource for use in the Kenya Patient Summary (KPS). 
It captures structured social history, pregnancy, lifestyle, and travel-related observations to support 
clinical decision-making, public health surveillance, and care continuity.
"""

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
  * ^short = "Classification of the observation (e.g., social-history)"
  * ^binding.strength = #required
  * ^binding.valueSet = "http://terminology.hl7.org/ValueSet/observation-category"

* note 0..* 
  * ^short = "Additional narrative or contextual information"



Instance: ObservationSmokingStatus
InstanceOf: KpsObservation
Title: "Smoking Status"
Description: "Social history observation indicating smoking"
Usage: #example

* status = #final
* category[0].coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/observation-category"
  * code = #social-history
  * display = "Social History"
* code.text = "Tobacco use"
* subject = Reference(ExamplePatientKPS)
* effectiveDateTime = "2023-05-10"
* valueString = "Occasional cigarette smoker"


Instance: ObservationReferenceDateRange
InstanceOf: KpsObservation
Title: "Substance Use Reference Period"
Description: "Reference date range for substance use"
Usage: #example

* status = #final
* category[0].coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/observation-category"
  * code = #social-history
  * display = "Social History"
* code.text = "Alcohol consumption period"
* subject = Reference(ExamplePatientKPS)
* effectivePeriod.start = "1974-01-01"
* effectivePeriod.end = "2004-12-31"
* valueString = "Heavy alcohol consumption during this period"

Instance: ObservationPregnancyStatus
InstanceOf: KpsObservation
Title: "Pregnancy Status"
Description: "Current pregnancy status"
Usage: #example

* status = #final
* category[0].coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/observation-category"
  * code = #social-history
  * display = "Social History"
* code.text = "Pregnancy Status"
* subject = Reference(ExamplePatientKPS)
* effectiveDateTime = "2024-11-01"
* valueCodeableConcept.coding[0]
  * system = KPSBClientCodes
  * code = #KPS.B.DE.23
  * display = "Pregnant"

Instance: ObservationEDD
InstanceOf: KpsObservation
Title: "Expected Date of Delivery"
Description: "Estimated date of delivery"
Usage: #example

* status = #final
* category[0].coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/observation-category"
  * code = #social-history
  * display = "Social History"
* code.text = "Expected date of delivery"
* subject = Reference(ExamplePatientKPS)
* effectiveDateTime = "2024-11-01"
* valueDateTime = "2025-07-10"


Instance: ObservationPreviousPregnancies
InstanceOf: KpsObservation
Title: "Previous Pregnancies Status"
Description: "Whether the woman had previous pregnancies"
Usage: #example

* status = #final
* code.text = "Previous pregnancies"
* subject = Reference(ExamplePatientKPS)
* valueCodeableConcept.coding[0]
  * system = KPSBClientCodes
  * code = #KPS.B.DE.29
  * display = "Yes"

Instance: ObservationPreviousPregnancyOutcome
InstanceOf: KpsObservation
Title: "Previous Pregnancy Outcome"
Description: "Outcome of previous pregnancy"
Usage: #example

* status = #final
* code.text = "Pregnancy Outcome"
* subject = Reference(ExamplePatientKPS)
* valueCodeableConcept.coding[0]
  * system = KPSBClientCodes
  * code = #preterm
  * display = "Pre-term"

Instance: ObservationOutcomeDate
InstanceOf: KpsObservation
Title: "Pregnancy Outcome Date"
Description: "Date of pregnancy outcome"
Usage: #example

* status = #final
* code.text = "Outcome date"
* subject = Reference(ExamplePatientKPS)
* valueDateTime = "2022-06-15"


Instance: ObservationNumberOfChildren
InstanceOf: KpsObservation
Title: "Number of Children"
Description: "Number of fetuses in the current pregnancy"
Usage: #example

* status = #final
* code.text = "Number of fetuses"
* subject = Reference(ExamplePatientKPS)
* valueQuantity.value = 2
* valueQuantity.unit = "children"


Instance: ObservationTravelDestination
InstanceOf: KpsObservation
Title: "Travel Destination"
Description: "Where the patient traveled"
Usage: #example

* status = #final
* code.text = "Recent travel destination"
* subject = Reference(ExamplePatientKPS)
* valueString = "South Sudan"


Instance: ObservationTravelPeriod
InstanceOf: KpsObservation
Title: "Travel Period"
Description: "Date of entry and departure"
Usage: #example

* status = #final
* code.text = "Travel period"
* subject = Reference(ExamplePatientKPS)
* valuePeriod.start = "2024-02-01"
* valuePeriod.end = "2024-03-15"
