Alias: KPSDClientCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsd-treatment-codes
Alias: KPSMedicationStatusVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsd-medication-status
Alias: KPSMedicationFormVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsd-medication-forms
Alias: KPSActiveSubstancesVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsd-active-ingredients



ValueSet: KPSMedicationStatus
Id: kpsd-medication-status
Title: "KPS.D Medication Status"
Description: "Allowed values for the status of a medication under the Kenya Patient Summary."
* ^url = KPSMedicationStatusVS
* ^status = #active

* KPSDClientCodes#medicationStatusActive "Active"
* KPSDClientCodes#medicationStatusInactive "Inactive"
* KPSDClientCodes#medicationStatusError "Entered in Error"


ValueSet: KPSMedicationForm
Id: kpsd-medication-forms
Title: "KPS.D Medication Forms"
Description: "Allowed administrable pharmaceutical dose forms (e.g., tablet, capsule, powder)."
* ^url = KPSMedicationFormVS
* ^status = #active

* KPSDClientCodes#KPS.D.DE.3.4 "Tablet"
* KPSDClientCodes#KPS.D.DE.3.5 "Capsule"
* KPSDClientCodes#KPS.D.DE.3.6 "Liquid"
* KPSDClientCodes#KPS.D.DE.3.7 "Powder"


ValueSet: KPSActiveSubstances
Id: kpsd-active-ingredients
Title: "KPS.D Active Ingredient Substances"
Description: "List of active ingredients for medications in KPS.D Treatment."
* ^url = KPSActiveSubstancesVS
* ^status = #active

* KPSDClientCodes#KPS.D.DE.4.1 "Paracetamol"
* KPSDClientCodes#KPS.D.DE.4.2 "Amoxicillin"
* KPSDClientCodes#KPS.D.DE.4.3 "Metronidazole"
* KPSDClientCodes#KPS.D.DE.4.4 "Ibuprofen"
* KPSDClientCodes#KPS.D.DE.4.5 "Artemether + Lumefantrine"

