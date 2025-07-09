Alias: KPSAClientCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsa-client-registration-codes
Alias: KPSASexVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsa-sex-values

ValueSet: KPSASexValues
Id: kpsa-sex-values
Title: "KPS.A Sex ValueSet"
Description: "Allowed values for client's sex in KPS.A Client Registration."
* ^url = KPSASexVS
* ^status = #active

* KPSAClientCodes#KPS.A.DE.6 "Female"
* KPSAClientCodes#KPS.A.DE.7 "Male"
