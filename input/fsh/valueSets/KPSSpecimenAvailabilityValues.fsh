Alias: KPSDiagnosticsCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsc-diagnostics-codes
Alias: KPSSpecimenAvailabilityVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsc-specimen-availability-values

ValueSet: KPSSpecimenAvailabilityValues
Id: kpsc-specimen-availability-values
Title: "KPS.C Specimen Availability Status"
Description: "Allowed values representing the availability of specimens in diagnostics reporting under KPS.C."
* ^url = KPSSpecimenAvailabilityVS
* ^status = #active

* KPSDiagnosticsCodes#specimenAvailable "Available"
* KPSDiagnosticsCodes#specimenUnavailable "Unavailable"
* KPSDiagnosticsCodes#specimenUnsatisfactory "Unsatisfactory"
