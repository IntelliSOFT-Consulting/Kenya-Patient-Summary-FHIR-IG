Profile: KpsSubstance
Parent: Substance
Id: kps-substance-profile
Title: "Substance Profile - KPS"
Description: "A Substance profile that exactly matches the specified data elements in FHIR R4."

* identifier 1..* MS
* status 0..1 MS
* category 0..* MS
* code 1..1 MS
* description 0..1 MS
 
* instance 1..* MS
* instance.identifier 0..1 MS
* instance.expiry 0..1 MS
* instance.quantity 0..1 MS
 
* ingredient 0..* MS
* ingredient.quantity 0..1
* ingredient.substanceCodeableConcept 0..1
* ingredient.substanceReference 0..1


Instance: ExampleKpsSubstance
InstanceOf: KpsSubstance
Title: "Example KPS Substance"
Description: "An example Substance resource conforming to the KPS profile."
Usage: #example

* identifier.system = "http://example.org/substances"
* identifier.value = "SUB-001"
* status = #active
* category.coding.system = "http://terminology.hl7.org/CodeSystem/substance-category"
* category.coding.code = #chemical
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #387517004
* code.coding.display = "Paracetamol"
* description = "Paracetamol 500mg tablet"

* instance[0].identifier.system = "http://example.org/packages"
* instance[0].identifier.value = "PKG-001"
* instance[0].expiry = "2026-12-31"
* instance[0].quantity.value = 500
* instance[0].quantity.unit = "mg"
* instance[0].quantity.system = "http://unitsofmeasure.org"
* instance[0].quantity.code = #mg

* ingredient[0].quantity.numerator.value = 500
* ingredient[0].quantity.numerator.unit = "mg"
* ingredient[0].quantity.denominator.value = 1
* ingredient[0].quantity.denominator.unit = "tablet"
* ingredient[0].substanceCodeableConcept.coding[0].system = "http://snomed.info/sct"
* ingredient[0].substanceCodeableConcept.coding[0].code = #387517004
* ingredient[0].substanceCodeableConcept.coding[0].display = "Paracetamol"
