Profile: KpsLocation
Parent: Location
Id: ke-kps-location
Title: "Location Profile - KPS"
Description: "Defines constraints on the Location resource for use within the Kenya Patient Summary (KPS).
Captures physical sites where patient care is delivered."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^fixedCanonical = $KpsLocationProfileV

* name 1..1 MS
  * ^short = "Name of the location (e.g. facility or clinic name)"

* type 0..* MS
  * ^short = "Type of location (e.g., clinic, hospital, pharmacy)"
  * ^binding.strength = #example
  * ^binding.valueSet = "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"

* address 0..1 MS
  * ^short = "Physical address of the location"

* managingOrganization 0..1 MS
  * ^short = "Organization responsible for the location"


Instance: NairobiClinic
InstanceOf: ke-kps-location
Title: "Nairobi Clinic"
Description: "Example of a clinic in Nairobi used as a location in encounters"
Usage: #example
* meta.profile[0] = $KpsLocationProfileV

* name = "Nairobi West Clinic"
* type[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type[0].coding[0].code = #HOSP
* type[0].coding[0].display = "Hospital"
* address.text = "Ngong Road, Nairobi, Kenya"
* address.city = "Nairobi"
* address.country = "Kenya"
