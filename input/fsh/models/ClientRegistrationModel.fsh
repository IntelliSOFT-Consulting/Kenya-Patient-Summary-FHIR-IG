Logical: ClientRegistrationModel 
Title: "KPS.A Client Registration"
Description: "Logical model for registering a client under the Kenya Patient Summary (KPS.A) standard."

// Unique Identifier
* identifier 1..1 Identifier "Government-issued identifier used to distinguish individuals, e.g., National ID (adults) or Birth Certificate number (under 18)"
  * ^code = $KPSDataElements#KPS.A.DE.1

// Name
* name 1..1 BackboneElement "Client's name"
  * given 1..1 string "Client's first name"
    * ^code = $KPSDataElements#KPS.A.DE.2
  * family 1..1 string "Client's family name or last name"
    * ^code = $KPSDataElements#KPS.A.DE.3

// Demographics
* dateOfBirth 1..1 date "Client's date of birth, if known"
  * ^code = $KPSDataElements#KPS.A.DE.4
* sex 1..1 code "Sex of the client assigned at birth"
* sex from KpsGenderVS (required)
  * ^code = $KPSDataElements#KPS.A.DE.5 

// Address
* address 0..1 BackboneElement "Client's residential address"
  * country 0..1 string "Name of country of affiliation"
    * ^code = $KPSDataElements#KPS.A.DE.8
  * county 0..1 string "County where the client resides"
    * ^code = $KPSDataElements#KPS.A.DE.9
  * subcounty 0..1 string "Subcounty of residence"
    * ^code = $KPSDataElements#KPS.A.DE.10
  * ward 0..1 string "Ward where the client lives"
    * ^code = $KPSDataElements#KPS.A.DE.11
  * village 0..1 string "Village or estate of residence"
    * ^code = $KPSDataElements#KPS.A.DE.12
  * postalAddress 0..1 string "Mailing address including P.O. Box, street or building details"
    * ^code = $KPSDataElements#KPS.A.DE.13

// Contact Information
* telecom 0..1 BackboneElement "Client's contact information"
  * phone 0..1 string "Phone number (mobile or landline)"
    * ^code = $KPSDataElements#KPS.A.DE.14
  * email 0..1 string "Email address"
    * ^code = $KPSDataElements#KPS.A.DE.15

// Contact Person / Legal Guardian
* contactPerson 0..1 BackboneElement "Contact person or legal guardian"
  * role 1..1 code "Role: legal guardian, next of kin, or other"
  * role from KPSPatientContactRelationshipVS (required)
    * ^code = $KPSDataElements#KPS.A.DE.16 
  * relationship 0..1 string "Relationship to the client (e.g., father, spouse, daughter)" 
    * ^code = $KPSDataElements#KPS.A.DE.20
  * name 0..1 BackboneElement "Name of contact person"
    * given 1..1 string "First name of contact person"
      * ^code = $KPSDataElements#KPS.A.DE.21
    * family 1..1 string "Surname of contact person"
      * ^code = $KPSDataElements#KPS.A.DE.22
  * phone 0..1 string "Phone number of contact person"
    * ^code = $KPSDataElements#KPS.A.DE.23
  * email 0..1 string "Email of contact person"
    * ^code = $KPSDataElements#KPS.A.DE.24

// Insurance
* insurance 0..1 BackboneElement "Insurance information"
  * insuranceNumber 0..1 string "Health insurance ID assigned to the client"
    * ^code = $KPSDataElements#KPS.A.DE.26
