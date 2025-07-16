Profile: KPSPatient
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: kps-patient
Title: "Patient Profile - KPS"
Description: "This profile defines the constraints and extensions on the IPS Patient resource for use in the Kenya Patient Summary, supporting national HIE and continuity of care." 

* identifier 1..1 MS
  * ^code = #KPS.A.DE.1

* name 1..1 MS
* name.given 1..1 
  * ^code = #KPS.A.DE.2
* name.family 1..1 
  * ^code = #KPS.A.DE.3

* birthDate 1..1 
  * ^code = #KPS.A.DE.4
* gender 1..1 MS  
* address 0..1 MS
* address.country 0..1
  * ^code = #KPS.A.DE.8
* address.state 0..1  // Assuming "county"
  * ^code = #KPS.A.DE.9
* address.district 0..1  // Assuming "subcounty"
  * ^code = #KPS.A.DE.10
* address.city 0..1  // Assuming "ward"
  * ^code = #KPS.A.DE.11
* address.line 0..1  // Assuming "village/estate" or "postalAddress"
  * ^code = #KPS.A.DE.12 
* address.postalCode 0..1  // Assuming "postalAddress"
  * ^code = #KPS.A.DE.13


* contact 0..1 MS // Contact person or legal guardian
* contact.relationship 1..1 MS
  * ^code = #KPS.A.DE.16
  * ^binding.strength = #required
  * ^binding.valueSet = KPSAContactRoleVS
* contact.name 0..1
* contact.name.given 1..1
  * ^code = #KPS.A.DE.21
* contact.name.family 1..1
  * ^code = #KPS.A.DE.22 
* extension contains insurance-information named insurance 0..1 MS

// Constraining The Profile

// Remove unused elements
* link 0..0
* deceased[x] 0..0



Instance: ExamplePatientKPS
InstanceOf: KPSPatient
Title: "Example Patient for Kenya Patient Summary"
Description: "A sample patient used in conjunction with AllergyIntolerance and other clinical profiles."
Usage: #example

* id = "patient-kps-001"
* name[0].family = "Kiprono"
* name[0].given[0] = "Josphat"
* gender = #male
* birthDate = "1987-08-14"

* telecom[0].system = #phone
* telecom[0].value = "+254712345678"
* telecom[0].use = #mobile

* address[0]
  * use = #home
  * line[0] = "123 Karura Road"
  * city = "Nairobi"
  * district = "Westlands"
  * state = "Nairobi County"
  * postalCode = "00100"
  * country = "KEN"

* identifier[0]
  * system = "https://shr.tiberbuapps.com/fhir/National-ID"
  * value = "28794162"
  * type.coding[0]
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #NI
    * display = "National unique individual identifier"



