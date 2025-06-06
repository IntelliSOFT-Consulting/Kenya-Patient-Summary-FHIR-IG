Alias: $patients-county = https://shr.tiberbuapps.com/fhir/StructureDefinition/patients-county
Alias: $patients-sub-county = https://shr.tiberbuapps.com/fhir/StructureDefinition/patients-sub-county
Alias: $patients-ward = https://shr.tiberbuapps.com/fhir/StructureDefinition/patients-ward
Alias: $village-estate = https://shr.tiberbuapps.com/fhir/StructureDefinition/village-estate 
Alias: $building-house-no = https://shr.tiberbuapps.com/fhir/StructureDefinition/building-house-no
Alias: $latitude = https://shr.tiberbuapps.com/fhir/StructureDefinition/latitude
Alias: $longitude = https://shr.tiberbuapps.com/fhir/StructureDefinition/longitude
Alias: $province-state-country = https://shr.tiberbuapps.com/fhir/StructureDefinition/province-state-country
Alias: $identification-residence = https://shr.tiberbuapps.com/fhir/StructureDefinition/identification-residence

Profile: KenyaCorePatient
Parent: Patient
Id: KenyaCorePatient
Title: "KenyaCore Patient"
Description: "This profile represents the constraints applied to the Kenya Core Patient."
* identifier 0..* MS 
* identifier.use 1..1 MS
* identifier.type.coding.system 1..1 MS
* identifier.type.coding.display 1..1 MS
* identifier.type.coding.code 1..1 MS 
* identifier.type.coding.code from PatientIdentifierTypesVS
* identifier.value 1..1 MS
* name 1..1 MS
* name.prefix from PatientTitleVS
* name obeys Kenyan-Registry-Patient
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.family 1..1 MS
* name.given 1..1 MS
* name.given ^min = 1
* telecom 1..* MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* gender 1..1 MS
* birthDate 1..1 MS
* address 1..1 MS
* address.extension contains $building-house-no named buildingHouseNo 0..1 MS
* address.extension contains $village-estate  named villageEstate 0..1 MS
* address.extension contains $patients-ward  named ward 1..1 MS
* address.extension contains $patients-sub-county named subCounty 1..1 MS
* address.extension contains $patients-county named county 1..1 MS
* address.extension contains $identification-residence named identificationResidence 0..1 MS
* address.postalCode MS
* contact 0..* MS
* contact.relationship.coding.system 1..1 MS
* contact.relationship.coding.system from CodeSystemsVS
* contact.relationship.coding.code 1..1 MS
* contact.relationship.coding.code from PatientContactRlshipVS
* contact.relationship.coding.display 1..1 MS
* contact.name 1..1 MS
* contact.telecom 1..1 MS
* generalPractitioner MS

Invariant: Kenyan-Registry-Patient
Description: "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
* severity = #error
* expression = "family.exists() or given.exists() or text.exists()"
* xpath = "f:given or f:family or f:text"

Instance: KenyaCorePatientExample1
InstanceOf: KenyaCorePatient
Title: "Example KenyaCore Patient"
Description: "An example of a KenyaCore Patient resource"
* identifier[0].use = #official
* identifier[0].type.coding[0].system = #clientRegistry
* identifier[0].type.coding[0].code = #upi
* identifier[0].type.coding[0].display = "Unique Patient Identifier"
* identifier[0].value = "CR-123456789"
* name[0].use = #official
* name[0].family = "Doe"
* name[0].given[0] = "John Kane"
* name[0].prefix[0] = "Mr."
* telecom[0].system = #phone
* telecom[0].value = "+254712345678"
* telecom[0].use = #mobile
* gender = #male
* birthDate = "1980-01-01"
* address[0].extension[0].url = $building-house-no
* address[0].extension[0].valueString = "10A"
* address[0].extension[1].url = $village-estate
* address[0].extension[1].valueString = "Nairobi Estate"
* address[0].extension[2].url = $patients-ward
* address[0].extension[2].valueString = "Ward 5"
* address[0].extension[3].url = $patients-sub-county
* address[0].extension[3].valueString = "Sub-County A"
* address[0].extension[4].url = $patients-county
* address[0].extension[4].valueString = "Nairobi County"
* address[0].extension[5].url = $identification-residence
* address[0].extension[5].valueString = "Residential ID 987654321"
* address[0].postalCode = "00100"
* contact[0].relationship[0].coding[0].system = #knhts
* contact[0].relationship[0].coding[0].code = #guardian
* contact[0].relationship[0].coding[0].display = "Guardian"
* contact[0].name.family = "Smith"
* contact[0].name.given[0] = "Jane Doe"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+254798765432"
* contact[0].telecom[0].use = #mobile
* generalPractitioner[0].reference = "Practitioner/example"


Instance: KenyaCorePatientExample2
InstanceOf: KenyaCorePatient
Title: "Example KenyaCore Patient"
Description: "An example patient instance based on the KenyaCorePatient profile."
* identifier[0].use = #official
* identifier[0].type.coding[0].system = #clientRegistry
* identifier[0].type.coding[0].code = #upi
* identifier[0].type.coding[0].display = "Unique Patient Identifier"
* identifier[0].value = "123456"
* name[0].family = "Kipchoge"
* name[0].given[0] = "Eliud"
* name[0].prefix[0] = "Mr."
* name[0].extension[0].url = "https://shr.tiberbuapps.com/fhir/StructureDefinition/Kenyan-Registry-Patient"
* name[0].extension[0].valueString = "Registry"
* telecom[0].system = #phone
* telecom[0].value = "+254700123456"
* gender = #male
* birthDate = "1984-11-05"
* address[0].line[0] = "123 Nairobi St"
* address[0].city = "Nairobi"
* address[0].postalCode = "00100"
* address[0].country = "Kenya"
* address[0].extension[0].url = "https://shr.tiberbuapps.com/fhir/StructureDefinition/buildingHouseNo"
* address[0].extension[0].valueString = "12B"
* address[0].extension[1].url = "https://shr.tiberbuapps.com/fhir/StructureDefinition/villageEstate"
* address[0].extension[1].valueString = "Kasarani"
* address[0].extension[2].url = "https://shr.tiberbuapps.com/fhir/StructureDefinition/patients-ward"
* address[0].extension[2].valueString = "Central"
* address[0].extension[3].url = "https://shr.tiberbuapps.com/fhir/StructureDefinition/patients-sub-county"
* address[0].extension[3].valueString = "Westlands"
* address[0].extension[4].url = "https://shr.tiberbuapps.com/fhir/StructureDefinition/patients-county"
* address[0].extension[4].valueString = "Nairobi"
* address[0].extension[5].url = "https://shr.tiberbuapps.com/fhir/StructureDefinition/identificationResidence"
* address[0].extension[5].valueString = "ID-12345"
* contact[0].relationship[0].coding[0].system = #knhts
* contact[0].relationship[0].coding[0].code = #sibling
* contact[0].relationship[0].coding[0].display = "Sibling"
* contact[0].name.family = "Kipchoge"
* contact[0].name.given[0] = "Grace"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+254700654321"
* generalPractitioner[0].reference = "Practitioner/example"


