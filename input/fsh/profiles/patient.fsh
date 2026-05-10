Alias: $SCT = http://snomed.info/sct

Profile: KpsPatient
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Id: kps-patient
Title: "Patient Profile - KPS"
Description: "This profile defines the constraints and extensions on the IPS Patient resource for use in the Kenya Patient Summary, supporting national HIE and continuity of care."
* obeys PatientIdentification-1
* identifier 1..* MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false 

// STEP 2: Declare the slice
* identifier contains 
    NationalIDNo 0..1 MS and 
    UPI 0..1 MS and  
    PassportNo 0..1 MS and 
    BirthCertificateNo 0..1 MS 


// STEP 3: Add constraints to the slice
* identifier[NationalIDNo].value 1..1
* identifier[NationalIDNo].system = "http://moh.kenya/identifier/nationalID-no"

* identifier[UPI].value 1..1
* identifier[UPI].system = "http://moh.kenya/identifier/UPI"

* identifier[PassportNo].value 1..1
* identifier[PassportNo].system = "http://moh.kenya/identifier/passport-No"

* identifier[BirthCertificateNo].value 1..1
* identifier[BirthCertificateNo].system = "http://moh.kenya/identifier/birthCertificate-No"

* gender 1..1 MS
* gender from KPSPatientGender (required)

* telecom 1..* MS
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains phone 1..1 and email 0..1

* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..1 MS
* telecom[phone].use MS

* telecom[email].system = #email (exactly)
* telecom[email].value 1..1 MS
* telecom[email].use MS

* contact.relationship 1..1 MS
* contact.name.given 0..1 MS
* contact.name.family 0..1 MS
* contact.telecom 1..1 MS


* address.country 0..1 MS
* address.state 0..1 MS
* address.state ^short = "Patient's County of Resisence"
* address.district 0..1 MS
* address.district ^short = "Patient's Sub-County of Resisence"
* address.city 0..1 MS
* address.city ^short = "Patient's Ward of Resisence"
* address.line 0..1 MS
* address.line ^short = "Patient's Village of Resisence"
* address.postalCode 0..1 MS
* address.postalCode ^short = "Patient's Postal Address of Resisence"




Instance: ExamplePatientKPS
InstanceOf: kps-patient
Title: "Example Patient"
Description: "An example of a Patient resource conforming to the KPS Patient profile."
Usage: #example

* meta.profile = "http://example.org/fhir/StructureDefinition/kps-patient"

// --- Identifiers ---
* identifier[NationalIDNo].system = "http://moh.kenya/identifier/nationalID-no"
* identifier[NationalIDNo].value = "28765432"

* identifier[UPI].system = "http://moh.kenya/identifier/UPI"
* identifier[UPI].value = "UPI-MND-001"

* identifier[PassportNo].system = "http://moh.kenya/identifier/passport-No"
* identifier[PassportNo].value = "KEP1234567"

* identifier[BirthCertificateNo].system = "http://moh.kenya/identifier/birthCertificate-No"
* identifier[BirthCertificateNo].value = "BC-MND-2020-0001"

// --- Name, Gender, Birth Date ---
* name.family = "Mohamed"
* name.given = "Hawa"
* gender = #female
* birthDate = "1992-03-25"

// --- Telecom (sliced) ---
* telecom[phone].system = #phone
* telecom[phone].value = "+254701234567"
* telecom[phone].use = #mobile

* telecom[email].system = #email
* telecom[email].value = "hawa.mohamed@example.com"
* telecom[email].use = #home

// --- Address ---
* address.country = "KE"
* address.state = "Mandera"
* address.district = "Mandera West"
* address.city = "Takaba"
* address.line = "Banisa Village"
* address.postalCode = "70300"

// --- Contact (Next of Kin) ---
* contact.relationship.coding[0].system = $SCT
* contact.relationship.coding[0].code = #184142008
* contact.relationship.coding[0].display = "Next of kin"

* contact.name.family = "Abdullahi"
* contact.name.given = "Hussein"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "+254711223344"
* contact.telecom[0].use = #mobile
