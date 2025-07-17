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
