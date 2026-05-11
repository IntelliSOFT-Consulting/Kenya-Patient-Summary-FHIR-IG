CodeSystem: KPSEImmunizationCodesCS
Id: kpse-immunization-codes
Title: "KPS.E Immunization Data Elements"
Description: "CodeSystem representing immunization-related data elements under the Kenya Patient Summary (KPS.E)."
* ^url = "https://shr.tiberbuapps.com/fhir/CodeSystem/kpse-immunization-codes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true

// Disease/Agent Targeted
* #KPS.E.DE.1 "Disease or Agent Targeted" "Disease or agent that the vaccination provides protection against"

// Vaccine Status
* #vaccineStatus "Vaccine Status" "Current immunization status for the targeted disease"
* #completed "Completed" "The immunization event has concluded"
* #ongoing "Ongoing" "The client is still receiving vaccinations"
* #notDone "Not Done" "Vaccination event not completed beyond preparation"
* #enteredInError "Entered in Error" "This immunization record was entered in error"

// Vaccine Product Information
* #KPS.E.DE.2 "Vaccine/Prophylaxis" "Generic description of the vaccine or its components"
* #KPS.E.DE.3 "Vaccine Medicinal Product Name" "Brand name of the vaccine medicinal product"
* #KPS.E.DE.4 "Identifier of the Vaccine Medicinal Product" "Product ID such as MPID, EMA PMS ID, or national ID"
* #KPS.E.DE.5 "Marketing Authorization Holder" "Entity authorized to market the medical product in the country"

// Dosing Details
* #KPS.E.DE.6 "Number in Series" "Order of this dose in the vaccination schedule"
* #KPS.E.DE.7 "Batch/Lot Number" "Unique identifier for the vaccine batch"
* #KPS.E.DE.8 "Date of Vaccination" "Date when vaccination was administered"
* #ageAtVaccination "Age at Vaccination" "Client's age at time of vaccination"

// Administering Details
* #KPS.E.DE.9 "Administering Centre" "Name or code of the facility administering the vaccine"
* #KPS.E.DE.10 "Health Professional Identification" "Name or ID of professional administering the vaccine"

// Follow-up
* #KPS.D.DE.12 "Next Vaccination Date" "Planned date for the next dose or repeat vaccination"
