Profile: KPSPatient
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
* gender from GenderVS

