Alias: KPSAClientCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsa-client-registration-codes


ValueSet: KPSAContactPersonRole
Id: kpsa-contact-person-role
Title: "KPS.A Contact Person Role"
Description: "Allowed roles for contact person/legal guardian in the Kenya Patient Summary Client Registration."
* ^url = "https://shr.tiberbuapps.com/fhir/ValueSet/kpsa-contact-person-role"
* ^status = #active
* ^experimental = false

* KPSAClientCodes#KPS.A.DE.17 "Legal guardian"
* KPSAClientCodes#KPS.A.DE.18 "Next of kin"
* KPSAClientCodes#KPS.A.DE.19 "Other"
