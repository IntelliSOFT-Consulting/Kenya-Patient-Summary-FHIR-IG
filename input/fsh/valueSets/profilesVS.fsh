Alias: KPSBClinicalConsultationCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-clinical-consultation-codes
Alias: KPSBClinicalStatusCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-clinical-status-codes
Alias: ClinicalStatusVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-clinical-status 
Alias: VerificationStatusVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-verification-status
Alias: AllergyTypeVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-allergy-type
Alias: KPSBSeverity = https://shr.tiberbuapps.com/fhir/ValueSet/kpsb-severity
Alias: KPSConditionClinical = https://shr.tiberbuapps.com/fhir/ValueSet/kps-clinical-condition
Alias: KPSConditionVerification = https://shr.tiberbuapps.com/fhir/ValueSet/kps-condition-verification

ValueSet: KPSClinicalConditionVS
Id: kps-clinical-condition
Title: "Clinical Condition ValueSet"
Description: ""
* ^url = KPSConditionClinical
* ^status = #active

* include http://terminology.hl7.org/CodeSystem/condition-clinical#active
* include http://terminology.hl7.org/CodeSystem/condition-clinical#recurrence
* include http://terminology.hl7.org/CodeSystem/condition-clinical#relapse
* include http://terminology.hl7.org/CodeSystem/condition-clinical#inactive
* include http://terminology.hl7.org/CodeSystem/condition-clinical#remission

ValueSet: KPSConditionVerificationVS
Id: kps-condition-verification
Title: "Clinical Condition ValueSet"
Description: ""
* ^url = KPSConditionVerification
* ^status = #active

* include http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#differential
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#entered-in-error

ValueSet: KPSBSeverityVS
Id: kpsb-severity
Title: "Severity ValueSet"
Description: ""
* ^url = KPSBSeverity
* ^status = #active

* include http://hl7.org/fhir/reaction-event-severity#severe "Severe"
* include http://hl7.org/fhir/reaction-event-severity#moderate "Moderate"
* include http://hl7.org/fhir/reaction-event-severity#mild "Mild"




ValueSet: KPSAllergyTypeVS
Id: kpsb-allergy-type
Title: "KPS Allergy Type"
Description: "Subset of allowed Allergy Type for KPS."
* ^url = AllergyTypeVS
* ^status = #active 

* include  http://hl7.org/fhir/allergy-intolerance-type#allergy
* include  http://hl7.org/fhir/allergy-intolerance-type#intolerance 





ValueSet: KPSClinicalStatusVS
Id: kpsb-clinical-status 
Title: "KPS Clinical Status"
Description: "Subset of standard clinical statuses for allergy intolerance."
* ^url = ClinicalStatusVS
* ^status = #active
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#inactive
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#resolved





ValueSet: KPSVerificationStatusVS
Id: kpsb-verification-status
Title: "KPS Verification Status"
Description: "Subset of allowed verification statuses for KPS."
* ^url = VerificationStatusVS
* ^status = #active

* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#refuted
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#entered-in-error



