Logical: ImmunizationRecord 
Title: "KPS.E Immunization"
Description: "Logical model for capturing immunization information under the Kenya Patient Summary (KPS.E) domain."

// Disease or agent targeted
* targetDisease 1..1 string "Disease or agent that the vaccination provides protection against"
  * ^code = $KPSDataElements#KPS.E.DE.1

// Vaccine status
* status 1..1 code "Current status of immunization against the disease"
  * ^code = $KPSDataElements#KPS.E.DE.1.1
  // You may bind this later to a VaccineStatus ValueSet if defined locally

// Vaccine/prophylaxis
* vaccineProphylaxis 0..1 string "Generic description of the vaccine/prophylaxis or its component(s)"
  * ^code = $KPSDataElements#KPS.E.DE.2

// Medicinal product name
* vaccineBrand 0..1 string "Brand name of the vaccine medicinal product"
  * ^code = $KPSDataElements#KPS.E.DE.3

// Identifier for vaccine
* vaccineIdentifier 0..1 string "Identifier for the vaccine medicinal product (e.g. MPID, EMA PMS ID, or national ID)"
  * ^code = $KPSDataElements#KPS.E.DE.4

// Marketing Authorisation Holder
* marketingAuthorisationHolder 0..1 string "Organization or individual authorized to market the vaccine"
  * ^code = $KPSDataElements#KPS.E.DE.5

// Dose number
* doseNumber 0..1 integer "Order in the vaccination course"
  * ^code = $KPSDataElements#KPS.E.DE.6

// Batch/lot number
* lotNumber 0..1 string "Specific identifier of the vaccine batch"
  * ^code = $KPSDataElements#KPS.E.DE.7

// Date of vaccination
* vaccinationDate 0..1 date "Date when the vaccination was administered"
  * ^code = $KPSDataElements#KPS.E.DE.8

// Age at vaccination
* ageAtVaccination 0..1 string "Age at which the vaccination was administered"
  * ^code = $KPSDataElements#KPS.E.DE.8.1

// Administering centre
* administeringCentre 0..1 string "Name or code of the administering centre or health authority"
  * ^code = $KPSDataElements#KPS.E.DE.9

// Health professional
* healthProfessional 0..1 string "Name or code of the health professional who administered the vaccine"
  * ^code = $KPSDataElements#KPS.E.DE.10

// Next vaccination date
* nextVaccinationDate 0..1 date "Date of the planned next vaccination (e.g. next dose)"
  * ^code = $KPSDataElements#KPS.E.DE.12
