
ValueSet: AcquisitionModalityVS
Id: kps-acquisition-modality-vs
Title: "KPS - AcquisitionModality"
Description: "Custom ValueSet for Acquisition Modality" 
* ^experimental = false
* include codes from system $kps-acquisition-modality-cs


ValueSet: KpsGenderVS
Id: kps-gender-vs
Title: "KPS - Administrative Gender"
Description: "Custom ValueSet for Administrative Gender"
 
* ^experimental = false
* include codes from system http://hl7.org/fhir/administrative-gender



 
ValueSet: AdministrativeGenderVS
Id: administrative-gender-vs
Title: "Administrative Gender"
Description: "Administrative gender codes excluding 'unknown'."
* ^status = #active
* include codes from system AdministrativeGenderCS

ValueSet: KPSOrganizationIdentifierTypeVS
Id: kps-organization-identifier-type-vs
Title: "Organization Identifier Type"
Description: "Custom ValueSet for organization identifier types."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: KPSOrganizationTypeVS
Id: kps-organization-type-vs
Title: "Organization Type"
Description: "Custom ValueSet for organization types."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/organization-type

 

ValueSet: KPSDiagnosticServiceSectionsVS
Id: kps-diagnostic-service-sections-vs
Title: "Diagnostic Service Categories"
Description: "Categories of diagnostic services."

* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0074

ValueSet: KPSMedicationVS
Id: kps-medication-vs
Title: "Medication ValueSet"
Description: "List of permitted medications in national formulary."
  
* ^experimental = false
* include codes from system $kps-medication-atc-cs //http://www.whocc.no/atc
 

ValueSet: KPSMedicationFormVS
Id: kps-medication-form-vs
Title: "Medication Form"
Description: "Types of medication forms."
* ^experimental = false
* include codes from system http://example.org/fhir/CodeSystem/medication-form

ValueSet: KPSUCUMUnitsVS
Id: kps-ucum-units-vs
Title: "UCUM Units"
Description: "UCUM units for medication quantities."
 
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/kps-ucum-units-vs"
* ^experimental = false
* include codes from system http://unitsofmeasure.org

 

ValueSet: KPSMedicationRequestCategoryVS
Id: kps-medication-request-category-vs
Title: "Medication Request Category"
Description: "Local medication request categories."
  
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/medicationrequest-category

ValueSet: KPSGenericProductsVS
Id: kps-generic-products-vs
Title: "Generic Products"
Description: "List of generic drugs." 
* ^experimental = false
* include codes from system $kps-medication-atc-cs //http://www.whocc.no/atc
 

ValueSet: KPSUnitOfMeasureVS
Id: kps-unit-of-measure-vs
Title: "Unit of Measure"
Description: "Units for doses and dispensing."
* ^experimental = false
* include codes from system http://unitsofmeasure.org
 

ValueSet: KPSAllergyStatusVS
Id: kps-allergy-status-vs
Title: "Allergy Clinical Status" 
Description: "Value Sets for Allergy Clinical Status"
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/kps-allergy-status-vs"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical

ValueSet: KPSAllergyCertaintyVS
Id: kps-allergy-certainty-vs
Title: "Allergy Certainty"
Description: "Value Sets for Allergy Certainty"
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/kps-allergy-certainty-vs"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

ValueSet: KPSAllergyTypeVS
Id: kps-allergy-type-vs
Title: "Allergy Type"
Description: "Value Sets for Allergy Type"
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/kps-allergy-type-vs"
* ^experimental = false
* include codes from system http://hl7.org/fhir/allergy-intolerance-type

ValueSet: KPSAllergySeverityVS
Id: kps-allergy-severity-vs
Title: "Allergy Severity" 
Description: "Value Sets for Allergy Severity"
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/kps-allergy-severity-vs"
* ^experimental = false
* include codes from system http://hl7.org/fhir/reaction-event-severity


ValueSet: KPSVitalSignsCodesVS
Id: kps-vital-signs-codes-vs
Title: "KPS Vital Signs Codes"
Description: "Standard codes for recording vital signs in the Kenya Patient Summary."
* ^experimental = false
* $LOINC#85353-1 "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
* $LOINC#9279-1 "Respiratory rate"
* $LOINC#8867-4 "Heart rate"
* $LOINC#2708-6 "Oxygen saturation in Arterial blood"
* $LOINC#8310-5 "Body temperature"
* $LOINC#8302-2 "Body height"
* $LOINC#9843-4 "Head Occipital-frontal circumference"
* $LOINC#29463-7 "Body weight"
* $LOINC#39156-5 "Body mass index (BMI) [Ratio]"
* $LOINC#85354-9 "Blood pressure panel with all children optional"
* $LOINC#8480-6 "Systolic blood pressure"
* $LOINC#8462-4 "Diastolic blood pressure"
* $LOINC#8478-0 "Mean blood pressure"


ValueSet: KPSVitalSignsUnitsVS
Id: kps-vital-signs-units-vs
Title: "KPS Vital Signs Units"
Description: "UCUM units used for vital signs in the Kenya Patient Summary."
* ^experimental = false
* UCUM#% "percent"
* UCUM#cm "centimeter"
* UCUM#[in_i] "inch (international)"
* UCUM#kg "kilogram"
* UCUM#g "gram"
* UCUM#[lb_av] "pound (US and British)"
* UCUM#Cel "degree Celsius"
* UCUM#[degF] "degree Fahrenheit"
* UCUM#mm[Hg] "millimeter of mercury"
* UCUM#/min "per minute"
* UCUM#kg/m2 "kilogram / (meter ^ 2)"
* UCUM#m2 "square meter"



ValueSet: KPSServiceTypeVS
Id: kps-service-type-vs
Title: "KPS Local Service Type"
Description: "A list of locally defined healthcare service types for Kenyan health facilities."
* ^experimental = false
* include codes from system KPSServiceTypeCS


ValueSet: KPSServiceAccessPointVS
Id: kps-service-access-point-vs
Title: "KPS Service Access Point"
Description: "A list of service access points for classifying patient entry points in facilities"
* ^experimental = false
* include codes from system KPSServiceAccessPointCS


ValueSet: KPSFundChoicesVS
Id: kps-fund-choices-vs
Title: "KPS Fund Choices"
Description: "Locally defined list of patient fund options for health service payments"
* ^experimental = false
* include codes from system KPSFundChoicesCS


ValueSet: KPSSchemesVS
Id: kps-schemes-vs
Title: "KPS Schemes"
Description: "A list of schemes available to patients"
* ^experimental = false
* include codes from system KPSSchemesCS

ValueSet: KPSPaymentMechanismVS
Id: kps-payment-mechanism-vs
Title: "KPS Payment Mechanism"
Description: "A list of allowed healthcare payment models"
* ^experimental = false
* include codes from system PaymentMechanismCS

ValueSet: KPSUsageFrequencyVS
Id: kps-usage-frequency-vs
Title: "KPS Usage Frequency"
Description: "A list of allowable frequency options for health service usage"
* ^experimental = false
* include codes from system UsageFrequencyCS

ValueSet: KPSAnnualQuantityTypeVS
Id: kps-annual-quantity-type-vs
Title: "KPS Annual Quantity Type"
Description: "Types of units used to express annual health service quantities"
* ^experimental = false
* include codes from system AnnualQuantityTypeCS


ValueSet: KPSAuthTypeVS
Id: kps-auth-type-vs
Title: "KPS Authorization Type"
Description: "List of accepted authentication or authorization types"
* ^experimental = false
* include codes from system AuthTypeCS

ValueSet: KPSAuthorizationFailureReasonVS
Id: kps-authorization-failure-reason-vs
Title: "KPS Authorization Failure Reason"
Description: "Allowed values for reasons why an authorization request may fail"
* ^experimental = false
* include codes from system AuthorizationFailureReasonCS

ValueSet: KPSAuthorizationStatusVS
Id: kps-authorization-status-vs
Title: "KPS Authorization Status"
Description: "Status options for an authorization process"
* ^experimental = false
* include codes from system AuthorizationStatusCS


ValueSet: KPSClaimsDepartmentsVS
Id: kps-claims-departments-vs
Title: "KPS Claims Departments"
Description: "Departments used for classifying healthcare claims"
* ^experimental = false
* include codes from system ClaimsDepartmentsCS

ValueSet: KPSCopayTypeVS
Id: kps-copay-type-vs
Title: "KPS Copay Types"
Description: "Allowed copay types for patient contribution"
* ^experimental = false
* include codes from system CopayTypeCS


ValueSet: KPSRemittanceChoiceVS
Id: kps-remittance-choice-vs
Title: "KPS Remittance Choice"
Description: "Options for how remittances are made"
* ^experimental = false
* include codes from system RemittanceChoiceCS

ValueSet: KPSRemittanceStatusVS
Id: kps-remittance-status-vs
Title: "KPS Remittance Status"
Description: "Stages of remittance status tracking"
* ^experimental = false
* include codes from system RemittanceStatusCS


ValueSet: KPSAdjustmentTypeVS
Id: kps-adjustment-type-vs
Title: "KPS Adjustment Type"
Description: "Types of financial adjustments applied to claims or bills"
* ^experimental = false
* include codes from system AdjustmentTypeCS



ValueSet: KPSDiagnosisKindVS
Id: kps-diagnosis-kind-vs
Title: "KPS Diagnosis Kind"
Description: "Diagnosis classification level based on ICD structure"
* ^experimental = false
* include codes from system DiagnosisKindCS

ValueSet: KPSFlagTypeVS
Id: kps-flag-type-vs
Title: "KPS Flag Type"
Description: "Types of flags applied to claims or processes"
* ^experimental = false
* include codes from system FlagTypeCS


ValueSet: KPSNonEdiClaimStatusVS
Id: kps-non-edi-claim-status-vs
Title: "KPS Non-EDI Claim Status"
Description: "Workflow status values for non-electronic claims"
* ^experimental = false
* include codes from system NonEdiClaimStatusCS


ValueSet: KPSBulkRemittanceStatusVS
Id: kps-bulk-remittance-status-vs
Title: "KPS Bulk Remittance Status"
Description: "Status of bulk remittance batches"
* ^experimental = false
* include codes from system BulkRemittanceStatusCS


ValueSet: KPSPaymentNoticeStatusVS
Id: kps-payment-notice-status-vs
Title: "KPS PaymentNoticeStatus"
Description: "Value Sets for PaymentNotice Status"
* ^experimental = false
* include codes from system http://hl7.org/fhir/fm-status

ValueSet: KPSPaymentNoticePaymentStatusVS
Id: kps-payment-notice-payment-status-vs
Title: "KPS PaymentNoticePaymentStatus"
Description: "Value Sets for PaymentNotice Patment Status"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/paymentstatus

ValueSet: KPSEpisodeOfCareStatusVS
Id: kps-episode-of-care-status-vs
Title: "KPS EpisodeOfCareStatus"
Description: "Value Sets for EpisodeOfCare Status"
* ^experimental = false
* include codes from system http://hl7.org/fhir/episode-of-care-status

ValueSet: KPSEpisodeOfCareTypeVS
Id: kps-episode-of-care-type-vs
Title: "KPS EpisodeOfCareType"
Description: "Value Sets for EpisodeOfCare Type"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/episodeofcare-type

ValueSet: KPSEpisodeOfCareDiagnosisRoleVS
Id: kps-episode-of-care-diagnosis-role-vs
Title: "KPS EpisodeOfCareDiagnosisRole"
Description: "Value Sets for EpisodeOfCare Diagnosis Role"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/diagnosis-role


ValueSet: KPSSubstanceStatusVS
Id: kps-substance-status-vs
Title: "KPSSubstanceStatus"
Description: "Value Sets for Substance Status"
* ^experimental = false
* include codes from system http://hl7.org/fhir/substance-status

ValueSet: KPSPatientIdentifierUseVS
Id: kps-patient-identifier-use-vs
Title: "KPSPatientIdentifierUse"
Description: "ValueSet binding for Patient.identifier.use in Patient."
* ^experimental = false
* include codes from system  http://hl7.org/fhir/identifier-use


ValueSet: KPSPatientIdentifierTypeVS
Id: kps-patient-identifier-type-vs
Title: "KPSPatientIdentifierType"
Description: "ValueSet binding for Patient.identifier.type in Patient."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: KPSPatientNameUseVS
Id: kps-patient-name-use-vs
Title: "KPSPatientNameUse"
Description: "ValueSet binding for Patient.name.use in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/name-use

ValueSet: KPSPatientTelecomSystemVS
Id: kps-patient-telecom-system-vs
Title: "KPSPatientTelecomSystem"
Description: "ValueSet binding for Patient.telecom.system in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/contact-point-system

ValueSet: KPSPatientTelecomUseVS
Id: kps-patient-telecom-use-vs
Title: "KPSPatientTelecomUse"
Description: "ValueSet binding for Patient.telecom.use in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/contact-point-use

ValueSet: KPSPatientGenderVS
Id: kps-patient-gender-vs
Title: "KPSPatientGender"
Description: "ValueSet binding for Patient.gender in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/administrative-gender

ValueSet: KPSPatientAddressUseVS
Id: kps-patient-address-use-vs
Title: "KPSPatientAddressUse"
Description: "ValueSet binding for Patient.address.use in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/address-use

ValueSet: KPSPatientMaritalStatusVS
Id: kps-patient-marital-status-vs
Title: "KPSPatientMaritalStatus"
Description: "ValueSet binding for Patient.maritalStatus in Patient."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v3-MaritalStatus

ValueSet: KPSPatientContactRelationshipVS
Id: kps-patient-contact-relationship-vs
Title: "KPSPatientContactRelationship"
Description: "ValueSet binding for Patient.contact.relationship in Patient."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0131 where concept is-not-a #O

ValueSet: KPSPatientLinkTypeVS
Id: kps-patient-link-type-vs
Title: "KPSPatientLinkType"
Description: "ValueSet binding for Patient.link.type in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/link-type



ValueSet: KPSPractitionerIdentifierUseVS
Id: kps-practitioner-identifier-use-vs
Title: "Practitioner Identifier Use ValueSet"
Description: "ValueSet binding for Practitioner.identifier.use in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/identifier-use

ValueSet: KPSPractitionerIdentifierTypeVS
Id: kps-practitioner-identifier-type-vs
Title: "Practitioner Identifier Type ValueSet"
Description: "ValueSet binding for Practitioner.identifier.type in Practitioner."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: KPSPractitionerNameUseVS
Id: kps-practitioner-name-use-vs
Title: "Practitioner Name Use ValueSet"
Description: "ValueSet binding for Practitioner.name.use in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/name-use

ValueSet: PractitionerTelecomSystemVS
Id: practitioner-telecom-system-vs
Title: "System ValueSet"
Description: "ValueSet binding for Practitioner.telecom.system in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/contact-point-system

ValueSet: PractitionerAddressUseVS
Id: practitioner-address-use-vs
Title: "Use ValueSet"
Description: "ValueSet binding for Practitioner.address.use in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/address-use

ValueSet: PractitionerGenderVS
Id: practitioner-gender-vs
Title: "Gender ValueSet"
Description: "ValueSet binding for Practitioner.gender in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/administrative-gender

 

ValueSet: PractitionerRoleCodeVS
Id: practitioner-role-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for PractitionerRole.code in PractitionerRole."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/practitioner-role

ValueSet: OrganizationIdentifierUseVS
Id: organization-identifier-use-vs
Title: "Use ValueSet"
Description: "ValueSet binding for Organization.identifier.use in Organization."
* ^experimental = false
* include codes from system http://hl7.org/fhir/identifier-use

ValueSet: OrganizationIdentifierTypeVS
Id: organization-identifier-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for Organization.identifier.type in Organization."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: OrganizationTypeVS
Id: organization-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for Organization.type in Organization."
* ^experimental = false
* include codes from system  http://terminology.hl7.org/CodeSystem/organization-type 

ValueSet: OrganizationAddressUseVS
Id: organization-address-use-vs
Title: "Use ValueSet"
Description: "ValueSet binding for Organization.address.use in Organization."
* ^experimental = false
* include codes from system http://hl7.org/fhir/address-use

ValueSet: EncounterStatusVS
Id: encounter-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Encounter.status in Encounter."
* ^experimental = false
* include codes from system http://hl7.org/fhir/encounter-status

ValueSet: EncounterClassVS
Id: encounter-class-vs
Title: "Class ValueSet"
Description: "ValueSet binding for Encounter.class in Encounter."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActCode where concept is-a #_ActEncounterCode

 
ValueSet: EncounterPriorityVS
Id: encounter-priority-vs
Title: "Priority ValueSet"
Description: "ValueSet binding for Encounter.priority in Encounter."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActPriority

ValueSet: ConditionClinicalStatusVS
Id: condition-clinical-status-vs
Title: "ClinicalStatus ValueSet"
Description: "ValueSet binding for Condition.clinicalStatus in Condition."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/condition-clinical

ValueSet: ConditionVerificationStatusVS
Id: condition-verification-status-vs
Title: "VerificationStatus ValueSet"
Description: "ValueSet binding for Condition.verificationStatus in Condition."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/condition-ver-status

ValueSet: ConditionCategoryVS
Id: condition-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for Condition.category in Condition."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/condition-category

ValueSet: ConditionSeverityVS
Id: condition-severity-vs
Title: "KPS Condition Severity"
Description: "Severity levels for clinical conditions in the Kenya Patient Summary, using $LOINC answer codes."
* ^experimental = false 
* include codes from system $condition-severity-cs 

ValueSet: ConditionCodeVS
Id: condition-code-vs
Title: "KPS Condition Codes"
Description: "Clinical diagnoses and conditions coded using ICD-10 for the Kenya Patient Summary."
* ^experimental = false 
* include codes from system $ICD10

ValueSet: ConditionBodySiteVS
Id: condition-body-site-vs
Title: "BodySite ValueSet"
Description: "ValueSet binding for Condition.bodySite in Condition."
* ^experimental = false

ValueSet: ObservationStatusVS
Id: observation-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Observation.status in Observation."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/observation-status-vs"
* include codes from system http://hl7.org/fhir/observation-status

ValueSet: ObservationCategoryVS
Id: observation-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for Observation.category in Observation."
* ^experimental = false 
* include codes from system $observation-category-cs

ValueSet: ObservationCodeVS
Id: observation-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for Observation.code in Observation."
* ^experimental = false

ValueSet: AllergyIntoleranceClinicalStatusVS
Id: allergy-intolerance-clinical-status-vs
Title: "ClinicalStatus ValueSet"
Description: "ValueSet binding for AllergyIntolerance.clinicalStatus in AllergyIntolerance."
* ^experimental = false

ValueSet: AllergyIntoleranceVerificationStatusVS
Id: allergy-intolerance-verification-status-vs
Title: "VerificationStatus ValueSet"
Description: "ValueSet binding for AllergyIntolerance.verificationStatus in AllergyIntolerance."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/allergy-intolerance-verification-status-vs"
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

ValueSet: AllergyIntoleranceTypeVS
Id: allergy-intolerance-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for AllergyIntolerance.type in AllergyIntolerance."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/allergy-intolerance-type-vs"
* include codes from system http://hl7.org/fhir/allergy-intolerance-type

ValueSet: AllergyIntoleranceCriticalityVS
Id: allergy-intolerance-criticality-vs
Title: "Criticality ValueSet"
Description: "ValueSet binding for AllergyIntolerance.criticality in AllergyIntolerance."
* ^experimental = false

ValueSet: AllergyIntoleranceCodeVS
Id: allergy-intolerance-code-vs
Title: "KPS Allergy Intolerance Substance Codes"
Description: "Substances that may cause allergic reactions or intolerances. Uses WHO ATC drug codes (for drug allergies) and ICD-10 for clinically significant allergen classifications."
* ^experimental = false 

* include codes from system $kps-substances-cs


ValueSet: AllergyIntoleranceReactionSubstanceVS
Id: allergy-intolerance-reaction-substance-vs
Title: "Substance ValueSet"
Description: "ValueSet binding for AllergyIntolerance.reaction.substance in AllergyIntolerance."
* ^experimental = false

ValueSet: AllergyIntoleranceReactionManifestationVS
Id: allergy-intolerance-reaction-manifestation-vs
Title: "KPS Allergy Reaction Manifestation Codes"
Description: "Clinical manifestations of allergic reactions coded using ICD-10 and $LOINC. Covers urticaria, anaphylaxis, angioedema, bronchospasm, and other reaction findings."
* ^experimental = false 
* include codes from system $manifestation-cs
// * include codes from system http://hl7.org/fhir/sid/icd-10
// * include codes from system http://snomed.info/sct

ValueSet: AllergyIntoleranceReactionSeverityVS
Id: allergy-intolerance-reaction-severity-vs
Title: "Severity ValueSet"
Description: "ValueSet binding for AllergyIntolerance.reaction.severity in AllergyIntolerance."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/allergy-intolerance-reaction-severity-vs"
* include codes from system http://hl7.org/fhir/reaction-event-severity


ValueSet: MedicationCodeVS
Id: medication-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for Medication.code in Medication."
* ^experimental = false

ValueSet: MedicationStatusVS
Id: medication-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Medication.status in Medication."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-status-vs"
* include codes from system http://hl7.org/fhir/CodeSystem/medication-status

ValueSet: MedicationFormVS
Id: medication-form-vs
Title: "Form ValueSet"
Description: "ValueSet binding for Medication.form in Medication."
* ^experimental = false

ValueSet: MedicationIngredientNumeratorComparatorVS
Id: medication-ingredient-numerator-comparator-vs
Title: "Numerator Comparator ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.numerator.comparator in Medication."
* ^experimental = false

ValueSet: MedicationIngredientNumeratorUnitVS
Id: medication-ingredient-numerator-unit-vs
Title: "Numerator Unit ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.numerator.unit in Medication."
* ^experimental = false

ValueSet: MedicationIngredientDenominatorComparatorVS
Id: medication-ingredient-denominator-comparator-vs
Title: "Denominator Comparator ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.denominator.comparator in Medication."
* ^experimental = false

ValueSet: MedicationIngredientDenominatorUnitVS
Id: medication-ingredient-denominator-unit-vs
Title: "Denominator Unit ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.denominator.unit in Medication."
* ^experimental = false


ValueSet: MedicationRequestStatusVS
Id: medication-request-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationRequest.status in MedicationRequest."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-request-status-vs"
* include codes from system http://hl7.org/fhir/CodeSystem/medicationrequest-status

ValueSet: MedicationRequestIntentVS
Id: medication-request-intent-vs
Title: "Intent ValueSet"
Description: "ValueSet binding for MedicationRequest.intent in MedicationRequest."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-request-intent-vs"
* include codes from system http://hl7.org/fhir/CodeSystem/medicationrequest-intent

ValueSet: MedicationRequestCategoryVS
Id: medication-request-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for MedicationRequest.category in MedicationRequest."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-request-category-vs"
* include codes from system http://terminology.hl7.org/CodeSystem/medicationrequest-category

ValueSet: MedicationRequestPriorityVS
Id: medication-request-priority-vs
Title: "Priority ValueSet"
Description: "ValueSet binding for MedicationRequest.priority in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestMedicationVS
Id: medication-request-medication-vs
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x] in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestMedicationCodeableConceptVS
Id: medication-request-medication-codeable-concept-vs
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x]:medicationCodeableConcept in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestMedicationCodeableConceptCodingCodeVS
Id: medication-request-medication-codeable-concept-coding-code-vs
Title: "Coding Code ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x]:medicationCodeableConcept.coding.code in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestReasonCodeVS
Id: medication-request-reason-code-vs
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for MedicationRequest.reasonCode in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestAsNeededVS
Id: medication-request-as-needed-vs
Title: "AsNeeded ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.asNeeded[x] in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestRouteVS
Id: medication-request-route-vs
Title: "Route ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.route in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestDoseQuantityUnitVS
Id: medication-request-dose-quantity-unit-vs
Title: "Dose Quantity Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseQuantity.unit in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestDoseRangeLowUnitVS
Id: medication-request-dose-range-low-unit-vs
Title: "DoseRange Low Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low.unit in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestDoseRangeHighUnitVS
Id: medication-request-dose-range-high-unit-vs
Title: "DoseRange High Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high.unit in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestDispenseQuantityUnitVS
Id: medication-request-dispense-quantity-unit-vs
Title: "Dispense Quantity Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dispenseRequest.quantity.unit in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestSubstitutionAllowedVS
Id: medication-request-substitution-allowed-vs
Title: "Substitution Allowed ValueSet"
Description: "ValueSet binding for MedicationRequest.substitution.allowed[x] in MedicationRequest."
* ^experimental = false

ValueSet: MedicationRequestSubstitutionReasonVS
Id: medication-request-substitution-reason-vs
Title: "Substitution Reason ValueSet"
Description: "ValueSet binding for MedicationRequest.substitution.reason in MedicationRequest."
* ^experimental = false


ValueSet: MedicationDispenseStatusVS
Id: medication-dispense-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationDispense.status in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseMedicationVS
Id: medication-dispense-medication-vs
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x] in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseMedicationCodeableConceptVS
Id: medication-dispense-medication-codeable-concept-vs
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x]:medicationCodeableConcept in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseMedicationCodeableConceptCodeVS
Id: medication-dispense-medication-codeable-concept-code-vs
Title: "Medication CodeableConcept Code ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x]:medicationCodeableConcept.coding.code in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseTypeVS
Id: medication-dispense-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for MedicationDispense.type in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseAdditionalInstructionVS
Id: medication-dispense-additional-instruction-vs
Title: "AdditionalInstruction ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.additionalInstruction in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseAsNeededVS
Id: medication-dispense-as-needed-vs
Title: "AsNeeded ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.asNeeded[x] in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseSiteVS
Id: medication-dispense-site-vs
Title: "Site ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.site in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseRouteVS
Id: medication-dispense-route-vs
Title: "Route ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.route in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseMethodVS
Id: medication-dispense-method-vs
Title: "Method ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.method in MedicationDispense."
* ^experimental = false

ValueSet: MedicationDispenseDoseRateTypeVS
Id: medication-dispense-dose-rate-type-vs
Title: "DoseRate Type ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.doseAndRate.type in MedicationDispense."
* ^experimental = false


ValueSet: MedicationStatementStatusVS
Id: medication-statement-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationStatement.status in MedicationStatement."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/medication-statement-status-vs"
* include codes from system http://hl7.org/fhir/CodeSystem/medication-statement-status

ValueSet: MedicationStatementStatusReasonVS
Id: medication-statement-status-reason-vs
Title: "StatusReason ValueSet"
Description: "ValueSet binding for MedicationStatement.statusReason in MedicationStatement."
* ^experimental = false

ValueSet: MedicationStatementMedicationVS
Id: medication-statement-medication-vs
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationStatement.medication[x] in MedicationStatement."
* ^experimental = false

ValueSet: MedicationStatementMedicationCodeableConceptVS
Id: medication-statement-medication-codeable-concept-vs
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationStatement.medication[x]:medicationCodeableConcept in MedicationStatement."
* ^experimental = false

ValueSet: MedicationStatementReasonCodeVS
Id: medication-statement-reason-code-vs
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for MedicationStatement.reasonCode in MedicationStatement."
* ^experimental = false



ValueSet: ImmunizationStatusVS
Id: immunization-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Immunization.status in Immunization."
* ^experimental = false 
* http://hl7.org/fhir/event-status#completed "Completed"
* http://hl7.org/fhir/event-status#entered-in-error "Entered in Error"
* http://hl7.org/fhir/event-status#not-done "Not Done"

ValueSet: ImmunizationVaccineCodeVS
Id: immunization-vaccine-code-vs
Title: "KPS Vaccine Codes"
Description: "Vaccine codes for the Kenya Patient Summary using WHO ATC J07 vaccine classification. Covers bacterial, viral, and combination vaccines used in Kenya's national immunization programme."
* ^experimental = false 
* include codes from system $kps-vaccine-atc-cs //http://www.whocc.no/atc where concept is-a #J07

ValueSet: ImmunizationTargetDiseaseVS
Id: immunization-target-disease-vs
Title: "KPS Vaccine Target Diseases"
Description: "Target diseases against which vaccines are administered in the Kenya national immunization programme, coded using ICD-10."
* ^experimental = false 
* include codes from system $kps-target-diseases-cs


ValueSet: DiagnosticReportStatusVS
Id: diagnostic-report-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for DiagnosticReport.status in DiagnosticReport."
* ^experimental = false

ValueSet: DiagnosticReportCategoryVS
Id: diagnostic-report-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for DiagnosticReport.category in DiagnosticReport."
* ^experimental = false

ValueSet: DiagnosticReportCodeVS
Id: diagnostic-report-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for DiagnosticReport.code in DiagnosticReport."
* ^experimental = false

ValueSet: DiagnosticReportConclusionCodeVS
Id: diagnostic-report-conclusion-code-vs
Title: "ConclusionCode ValueSet"
Description: "ValueSet binding for DiagnosticReport.conclusionCode in DiagnosticReport."
* ^experimental = false


ValueSet: ProcedureStatusVS
Id: procedure-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Procedure.status in Procedure."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/procedure-status-vs"
* include codes from system http://hl7.org/fhir/event-status

ValueSet: ProcedureCodeVS
Id: procedure-code-vs
Title: "KPS Procedure Codes"
Description: "Clinical procedure codes for the Kenya Patient Summary using $LOINC and ICD-10. Covers surgical, diagnostic, and therapeutic procedures."
* ^experimental = false 

* include codes from system $kps-procedures-cs

ValueSet: ProcedureReasonCodeVS
Id: procedure-reason-code-vs
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for Procedure.reasonCode in Procedure."
* ^experimental = false

ValueSet: ProcedureBodySiteVS
Id: procedure-body-site-vs
Title: "BodySite ValueSet"
Description: "ValueSet binding for Procedure.bodySite in Procedure."
* ^experimental = false

ValueSet: ProcedureOutcomeVS
Id: procedure-outcome-vs
Title: "Outcome ValueSet"
Description: "ValueSet binding for Procedure.outcome in Procedure."
* ^experimental = false

ValueSet: FamilyMemberHistoryStatusVS
Id: family-member-history-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.status in FamilyMemberHistory."
* ^experimental = false

ValueSet: FamilyMemberHistoryDataAbsentReasonVS
Id: family-member-history-data-absent-reason-vs
Title: "DataAbsentReason ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.dataAbsentReason in FamilyMemberHistory."
* ^experimental = false

ValueSet: FamilyMemberHistoryRelationshipVS
Id: family-member-history-relationship-vs
Title: "Relationship ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.relationship in FamilyMemberHistory."
* ^experimental = false

ValueSet: KPSFamilyMemberHistorySexVS
Id: kps-family-member-history-sex-vs
Title: "Sex ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.sex in FamilyMemberHistory."
* ^experimental = false
* include codes from system $ADMGENDER

ValueSet: FamilyMemberHistoryReasonCodeVS
Id: family-member-history-reason-code-vs
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.reasonCode in FamilyMemberHistory."
* ^experimental = false

ValueSet: FamilyMemberHistoryConditionCodeVS
Id: family-member-history-condition-code-vs
Title: "Condition Code ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.condition.code in FamilyMemberHistory."
* ^experimental = false

ValueSet: FamilyMemberHistoryConditionOutcomeVS
Id: family-member-history-condition-outcome-vs
Title: "Condition Outcome ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.condition.outcome in FamilyMemberHistory."
* ^experimental = false

ValueSet: ClinicalImpressionStatusVS
Id: clinical-impression-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for ClinicalImpression.status in ClinicalImpression."
* ^experimental = false

ValueSet: ClinicalImpressionStatusReasonVS
Id: clinical-impression-status-reason-vs
Title: "StatusReason ValueSet"
Description: "ValueSet binding for ClinicalImpression.statusReason in ClinicalImpression."
* ^experimental = false

ValueSet: ClinicalImpressionCodeVS
Id: clinical-impression-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for ClinicalImpression.code in ClinicalImpression."
* ^experimental = false

ValueSet: ClinicalImpressionInvestigationCodeVS
Id: clinical-impression-investigation-code-vs
Title: "Investigation Code ValueSet"
Description: "ValueSet binding for ClinicalImpression.investigation.code in ClinicalImpression."
* ^experimental = false

ValueSet: ClinicalImpressionFindingItemCodeableConceptVS
Id: clinical-impression-finding-item-codeable-concept-vs
Title: "Finding ItemCodeableConcept ValueSet"
Description: "ValueSet binding for ClinicalImpression.finding.itemCodeableConcept in ClinicalImpression."
* ^experimental = false

ValueSet: ClinicalImpressionPrognosisCodeableConceptVS
Id: clinical-impression-prognosis-codeable-concept-vs
Title: "Prognosis CodeableConcept ValueSet"
Description: "ValueSet binding for ClinicalImpression.prognosisCodeableConcept in ClinicalImpression."
* ^experimental = false


ValueSet: DocumentReferenceStatusVS
Id: document-reference-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for DocumentReference.status in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceDocStatusVS
Id: document-reference-doc-status-vs
Title: "DocStatus ValueSet"
Description: "ValueSet binding for DocumentReference.docStatus in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceTypeVS
Id: document-reference-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for DocumentReference.type in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceCategoryVS
Id: document-reference-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for DocumentReference.category in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceRelatesToCodeVS
Id: document-reference-relates-to-code-vs
Title: "RelatesTo Code ValueSet"
Description: "ValueSet binding for DocumentReference.relatesTo.code in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceSecurityLabelVS
Id: document-reference-security-label-vs
Title: "SecurityLabel ValueSet"
Description: "ValueSet binding for DocumentReference.securityLabel in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceContentFormatVS
Id: document-reference-content-format-vs
Title: "Content Format ValueSet"
Description: "ValueSet binding for DocumentReference.content.format in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceContextEventVS
Id: document-reference-context-event-vs
Title: "Context Event ValueSet"
Description: "ValueSet binding for DocumentReference.context.event in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceContextFacilityTypeVS
Id: document-reference-context-facility-type-vs
Title: "Facility Type ValueSet"
Description: "ValueSet binding for DocumentReference.context.facilityType in DocumentReference."
* ^experimental = false

ValueSet: DocumentReferenceContextPracticeSettingVS
Id: document-reference-context-practice-setting-vs
Title: "Practice Setting ValueSet"
Description: "ValueSet binding for DocumentReference.context.practiceSetting in DocumentReference."
* ^experimental = false


ValueSet: CompositionStatusVS
Id: composition-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Composition.status in Composition."
* ^experimental = false

ValueSet: CompositionTypeVS
Id: composition-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for Composition.type in Composition."
* ^experimental = false

ValueSet: CompositionCategoryVS
Id: composition-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for Composition.category in Composition."
* ^experimental = false

ValueSet: CompositionConfidentialityVS
Id: composition-confidentiality-vs
Title: "Confidentiality ValueSet"
Description: "ValueSet binding for Composition.confidentiality in Composition."
* ^experimental = false

ValueSet: CompositionAttesterModeVS
Id: composition-attester-mode-vs
Title: "Attester Mode ValueSet"
Description: "ValueSet binding for Composition.attester.mode in Composition."
* ^experimental = false

ValueSet: CompositionRelatesToCodeVS
Id: composition-relates-to-code-vs
Title: "RelatesTo Code ValueSet"
Description: "ValueSet binding for Composition.relatesTo.code in Composition."
* ^experimental = false

ValueSet: CompositionEventCodeVS
Id: composition-event-code-vs
Title: "Event Code ValueSet"
Description: "ValueSet binding for Composition.event.code in Composition."
* ^experimental = false

ValueSet: CompositionSectionCodeVS
Id: composition-section-code-vs
Title: "Section Code ValueSet"
Description: "ValueSet binding for Composition.section.code in Composition."
* ^experimental = false

ValueSet: CompositionSectionModeVS
Id: composition-section-mode-vs
Title: "Section Mode ValueSet"
Description: "ValueSet binding for Composition.section.mode in Composition."
* ^experimental = false

ValueSet: CompositionSectionOrderedByVS
Id: composition-section-ordered-by-vs
Title: "Section OrderedBy ValueSet"
Description: "ValueSet binding for Composition.section.orderedBy in Composition."
* ^experimental = false

ValueSet: CompositionSectionEmptyReasonVS
Id: composition-section-empty-reason-vs
Title: "Section EmptyReason ValueSet"
Description: "ValueSet binding for Composition.section.emptyReason in Composition."
* ^experimental = false


ValueSet: ConsentStatusVS
Id: consent-status-vs
Title: "Consent Status ValueSet"
Description: "ValueSet binding for Consent.status in Consent."
* ^experimental = false

ValueSet: ConsentScopeVS
Id: consent-scope-vs
Title: "Consent Scope ValueSet"
Description: "ValueSet binding for Consent.scope in Consent."
* ^experimental = false

ValueSet: ConsentCategoryVS
Id: consent-category-vs
Title: "Consent Category ValueSet"
Description: "ValueSet binding for Consent.category in Consent."
* ^experimental = false

ValueSet: ConsentPolicyRuleVS
Id: consent-policy-rule-vs
Title: "Consent PolicyRule ValueSet"
Description: "ValueSet binding for Consent.policyRule in Consent."
* ^experimental = false

ValueSet: ConsentProvisionTypeVS
Id: consent-provision-type-vs
Title: "Consent Provision Type ValueSet"
Description: "ValueSet binding for Consent.provision.type in Consent."
* ^experimental = false

ValueSet: ConsentProvisionActorRoleVS
Id: consent-provision-actor-role-vs
Title: "Consent Provision Actor Role ValueSet"
Description: "ValueSet binding for Consent.provision.actor.role in Consent."
* ^experimental = false

ValueSet: ConsentProvisionActionVS
Id: consent-provision-action-vs
Title: "Consent Provision Action ValueSet"
Description: "ValueSet binding for Consent.provision.action in Consent."
* ^experimental = false

ValueSet: ConsentProvisionSecurityLabelVS
Id: consent-provision-security-label-vs
Title: "Consent Provision SecurityLabel ValueSet"
Description: "ValueSet binding for Consent.provision.securityLabel in Consent."
* ^experimental = false

ValueSet: ConsentProvisionPurposeVS
Id: consent-provision-purpose-vs
Title: "Consent Provision Purpose ValueSet"
Description: "ValueSet binding for Consent.provision.purpose in Consent."
* ^experimental = false

ValueSet: ConsentProvisionClassVS
Id: consent-provision-class-vs
Title: "Consent Provision Class ValueSet"
Description: "ValueSet binding for Consent.provision.class in Consent."
* ^experimental = false

ValueSet: ConsentProvisionCodeVS
Id: consent-provision-code-vs
Title: "Consent Provision Code ValueSet"
Description: "ValueSet binding for Consent.provision.code in Consent."
* ^experimental = false

ValueSet: ConsentProvisionDataMeaningVS
Id: consent-provision-data-meaning-vs
Title: "Consent Provision Data Meaning ValueSet"
Description: "ValueSet binding for Consent.provision.data.meaning in Consent."
* ^experimental = false


ValueSet: SpecimenStatusVS
Id: specimen-status-vs
Title: "Specimen Status ValueSet"
Description: "ValueSet binding for Specimen.status in Specimen."
* ^experimental = false

ValueSet: SpecimenTypeVS
Id: specimen-type-vs
Title: "KPS Specimen Types"
Description: "Types of biological specimens collected for diagnostic analysis in the Kenya Patient Summary, coded using HL7 v2 Table 0487 and $LOINC."
* ^experimental = false
// * ^url = "https://nshr-uat.sha.go.ke/fhir/ValueSet/specimen-type"
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0487
* include codes from system $LOINC

ValueSet: SpecimenCollectionMethodVS
Id: specimen-collection-method-vs
Title: "Specimen Collection Method ValueSet"
Description: "ValueSet binding for Specimen.collection.method in Specimen."
* ^experimental = false

ValueSet: SpecimenCollectionBodySiteVS
Id: specimen-collection-body-site-vs
Title: "Specimen Collection BodySite ValueSet"
Description: "ValueSet binding for Specimen.collection.bodySite in Specimen."
* ^experimental = false

ValueSet: SpecimenCollectionFastingStatusVS
Id: specimen-collection-fasting-status-vs
Title: "Specimen Collection Fasting Status ValueSet"
Description: "ValueSet binding for Specimen.collection.fastingStatus[x] in Specimen."
* ^experimental = false

ValueSet: SpecimenProcessingProcedureVS
Id: specimen-processing-procedure-vs
Title: "Specimen Processing Procedure ValueSet"
Description: "ValueSet binding for Specimen.processing.procedure in Specimen."
* ^experimental = false

ValueSet: SpecimenContainerTypeVS
Id: specimen-container-type-vs
Title: "Specimen Container Type ValueSet"
Description: "ValueSet binding for Specimen.container.type in Specimen."
* ^experimental = false

ValueSet: SpecimenContainerAdditiveVS
Id: specimen-container-additive-vs
Title: "Specimen Container Additive ValueSet"
Description: "ValueSet binding for Specimen.container.additive[x] in Specimen."
* ^experimental = false

ValueSet: SpecimenConditionVS
Id: specimen-condition-vs
Title: "Specimen Condition ValueSet"
Description: "ValueSet binding for Specimen.condition in Specimen."
* ^experimental = false


ValueSet: ClaimStatusVS
Id: claim-status-vs
Title: "Claim Status ValueSet"
Description: "ValueSet binding for Claim.status in Claim."
* ^experimental = false

ValueSet: ClaimTypeVS
Id: claim-type-vs
Title: "Claim Type ValueSet"
Description: "ValueSet binding for Claim.type in Claim."
* ^experimental = false

ValueSet: ClaimUseVS
Id: claim-use-vs
Title: "Claim Use ValueSet"
Description: "ValueSet binding for Claim.use in Claim."
* ^experimental = false

ValueSet: ClaimPriorityVS
Id: claim-priority-vs
Title: "Claim Priority ValueSet"
Description: "ValueSet binding for Claim.priority in Claim."
* ^experimental = false

ValueSet: ClaimDiagnosisDiagnosisVS
Id: claim-diagnosis-diagnosis-vs
Title: "Claim Diagnosis ValueSet"
Description: "ValueSet binding for Claim.diagnosis.diagnosis[x] in Claim."
* ^experimental = false

ValueSet: ClaimItemCategoryVS
Id: claim-item-category-vs
Title: "Claim Item Category ValueSet"
Description: "ValueSet binding for Claim.item.category in Claim."
* ^experimental = false

ValueSet: ClaimItemProductOrServiceVS
Id: claim-item-product-or-service-vs
Title: "Claim Item ProductOrService ValueSet"
Description: "ValueSet binding for Claim.item.productOrService in Claim."
* ^experimental = false

ValueSet: ClaimItemUnitPriceCurrencyVS
Id: claim-item-unit-price-currency-vs
Title: "Claim Item UnitPrice Currency ValueSet"
Description: "ValueSet binding for Claim.item.unitPrice.currency in Claim."
* ^experimental = false

ValueSet: ClaimItemNetCurrencyVS
Id: claim-item-net-currency-vs
Title: "Claim Item Net Currency ValueSet"
Description: "ValueSet binding for Claim.item.net.currency in Claim."
* ^experimental = false


ValueSet: ClaimResponseStatusVS
Id: claim-response-status-vs
Title: "ClaimResponse Status ValueSet"
Description: "ValueSet binding for ClaimResponse.status in ClaimResponse."
* ^experimental = false

ValueSet: ClaimResponseTypeVS
Id: claim-response-type-vs
Title: "ClaimResponse Type ValueSet"
Description: "ValueSet binding for ClaimResponse.type in ClaimResponse."
* ^experimental = false

ValueSet: ClaimResponseUseVS
Id: claim-response-use-vs
Title: "ClaimResponse Use ValueSet"
Description: "ValueSet binding for ClaimResponse.use in ClaimResponse."
* ^experimental = false

ValueSet: ClaimResponseOutcomeVS
Id: claim-response-outcome-vs
Title: "ClaimResponse Outcome ValueSet"
Description: "ValueSet binding for ClaimResponse.outcome in ClaimResponse."
* ^experimental = false

ValueSet: ClaimResponseItemAdjudicationCategoryVS
Id: claim-response-item-adjudication-category-vs
Title: "ClaimResponse Item Adjudication Category ValueSet"
Description: "ValueSet binding for ClaimResponse.item.adjudication.category in ClaimResponse."
* ^experimental = false


ValueSet: CoverageStatusVS
Id: coverage-status-vs
Title: "Coverage Status ValueSet"
Description: "ValueSet binding for Coverage.status in Coverage."
* ^experimental = false

ValueSet: CoverageTypeVS
Id: coverage-type-vs
Title: "Coverage Type ValueSet"
Description: "ValueSet binding for Coverage.type in Coverage."
* ^experimental = false

ValueSet: CoverageRelationshipVS
Id: coverage-relationship-vs
Title: "Coverage Relationship ValueSet"
Description: "ValueSet binding for Coverage.relationship in Coverage."
* ^experimental = false

ValueSet: CoverageClassTypeVS
Id: coverage-class-type-vs
Title: "Coverage Class Type ValueSet"
Description: "ValueSet binding for Coverage.class.type in Coverage."
* ^experimental = false

ValueSet: CoverageCostToBeneficiaryTypeVS
Id: coverage-cost-to-beneficiary-type-vs
Title: "Coverage CostToBeneficiary Type ValueSet"
Description: "ValueSet binding for Coverage.costToBeneficiary.type in Coverage."
* ^experimental = false

ValueSet: CoverageCostToBeneficiaryExceptionTypeVS
Id: coverage-cost-to-beneficiary-exception-type-vs
Title: "Coverage CostToBeneficiary Exception Type ValueSet"
Description: "ValueSet binding for Coverage.costToBeneficiary.exception.type in Coverage."
* ^experimental = false


ValueSet: CoverageEligibilityRequestStatusVS
Id: coverage-eligibility-request-status-vs
Title: "CoverageEligibilityRequest Status ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.status."
* ^experimental = false

ValueSet: CoverageEligibilityRequestPriorityVS
Id: coverage-eligibility-request-priority-vs
Title: "CoverageEligibilityRequest Priority ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.priority."
* ^experimental = false

ValueSet: CoverageEligibilityRequestPurposeVS
Id: coverage-eligibility-request-purpose-vs
Title: "CoverageEligibilityRequest Purpose ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.purpose."
* ^experimental = false

ValueSet: CoverageEligibilityRequestItemCategoryVS
Id: coverage-eligibility-request-item-category-vs
Title: "CoverageEligibilityRequest Item Category ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.category."
* ^experimental = false

ValueSet: CoverageEligibilityRequestItemProductOrServiceVS
Id: coverage-eligibility-request-item-product-or-service-vs
Title: "CoverageEligibilityRequest Item ProductOrService ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.productOrService."
* ^experimental = false

ValueSet: CoverageEligibilityRequestItemModifierVS
Id: coverage-eligibility-request-item-modifier-vs
Title: "CoverageEligibilityRequest Item Modifier ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.modifier."
* ^experimental = false

ValueSet: CoverageEligibilityRequestItemDiagnosisDiagnosisVS
Id: coverage-eligibility-request-item-diagnosis-diagnosis-vs
Title: "CoverageEligibilityRequest Item Diagnosis ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.diagnosis.diagnosis[x]."
* ^experimental = false

ValueSet: CoverageEligibilityResponseStatusVS
Id: coverage-eligibility-response-status-vs
Title: "CoverageEligibilityResponse Status ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.status."
* ^experimental = false

ValueSet: CoverageEligibilityResponsePurposeVS
Id: coverage-eligibility-response-purpose-vs
Title: "CoverageEligibilityResponse Purpose ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.purpose."
* ^experimental = false

ValueSet: CoverageEligibilityResponseOutcomeVS
Id: coverage-eligibility-response-outcome-vs
Title: "CoverageEligibilityResponse Outcome ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.outcome."
* ^experimental = false


ValueSet: ServiceRequestStatusVS
Id: service-request-status-vs
Title: "ServiceRequest Status ValueSet"
Description: "ValueSet binding for ServiceRequest.status."
* ^experimental = false

ValueSet: ServiceRequestIntentVS
Id: service-request-intent-vs
Title: "ServiceRequest Intent ValueSet"
Description: "ValueSet binding for ServiceRequest.intent."
* ^experimental = false

ValueSet: ServiceRequestCategoryVS
Id: service-request-category-vs
Title: "ServiceRequest Category ValueSet"
Description: "ValueSet binding for ServiceRequest.category."
* ^experimental = false

ValueSet: ServiceRequestPriorityVS
Id: service-request-priority-vs
Title: "ServiceRequest Priority ValueSet"
Description: "ValueSet binding for ServiceRequest.priority."
* ^experimental = false

ValueSet: ServiceRequestCodeVS
Id: service-request-code-vs
Title: "ServiceRequest Code ValueSet"
Description: "ValueSet binding for ServiceRequest.code."
* ^experimental = false

ValueSet: ServiceRequestLocationVS
Id: service-request-location-vs
Title: "ServiceRequest Location ValueSet"
Description: "ValueSet binding for ServiceRequest.location."
* ^experimental = false

ValueSet: ServiceRequestReasonVS
Id: service-request-reason-vs
Title: "ServiceRequest Reason ValueSet"
Description: "ValueSet binding for ServiceRequest.reason."
* ^experimental = false


ValueSet: TaskStatusVS
Id: task-status-vs
Title: "Task Status ValueSet"
Description: "ValueSet binding for Task.status."
* ^experimental = false

ValueSet: TaskIntentVS
Id: task-intent-vs
Title: "Task Intent ValueSet"
Description: "ValueSet binding for Task.intent."
* ^experimental = false

ValueSet: TaskPriorityVS
Id: task-priority-vs
Title: "Task Priority ValueSet"
Description: "ValueSet binding for Task.priority."
* ^experimental = false

ValueSet: TaskCodeVS
Id: task-code-vs
Title: "Task Code ValueSet"
Description: "ValueSet binding for Task.code."
* ^experimental = false

ValueSet: TaskPerformerTypeVS
Id: task-performer-type-vs
Title: "Task Performer Type ValueSet"
Description: "ValueSet binding for Task.performerType."
* ^experimental = false

ValueSet: CarePlanStatusVS
Id: care-plan-status-vs
Title: "CarePlan Status ValueSet"
Description: "ValueSet binding for CarePlan.status."
* ^experimental = false

ValueSet: CarePlanIntentVS
Id: care-plan-intent-vs
Title: "CarePlan Intent ValueSet"
Description: "ValueSet binding for CarePlan.intent."
* ^experimental = false

ValueSet: CarePlanCategoryVS
Id: care-plan-category-vs
Title: "CarePlan Category ValueSet"
Description: "ValueSet binding for CarePlan.category."
* ^experimental = false

ValueSet: CarePlanActivityDetailKindVS
Id: care-plan-activity-detail-kind-vs
Title: "CarePlan Activity Detail Kind ValueSet"
Description: "ValueSet binding for CarePlan.activity.detail.kind."
* ^experimental = false

ValueSet: CarePlanActivityDetailStatusVS
Id: care-plan-activity-detail-status-vs
Title: "CarePlan Activity Detail Status ValueSet"
Description: "ValueSet binding for CarePlan.activity.detail.status."
* ^experimental = false


// ============================================================
// KPS.C – Radiology Codes ValueSet (KPS.C.DE.18)
// Subset of $LOINC radiology imaging codes for use in KPS
// ImagingStudy.description (imaging study type selection)
// ============================================================

ValueSet: KPSRadiologyCodesVS
Id: kps-radiology-codes-vs
Title: "Radiology Codes ValueSet"
Description: "LOINC-coded radiology imaging study types for use in the Kenya Patient Summary (KPS.C.DE.18 – Imaging Study Type)."
* ^status = #active
* ^experimental = false
* $LOINC#41806-1 "CT Abdomen"
* $LOINC#79103-8 "CT Abdomen W contrast IV"
* $LOINC#36424-0 "CT Abdomen WO contrast"
* $LOINC#36267-3 "CT Abdomen WO and W contrast IV"
* $LOINC#24725-4 "CT Head"
* $LOINC#24727-0 "CT Head W contrast IV"
* $LOINC#30799-1 "CT Head WO contrast"
* $LOINC#24726-2 "CT Head WO and W contrast IV"
* $LOINC#24627-2 "CT Chest"
* $LOINC#24628-0 "CT Chest W contrast IV"
* $LOINC#29252-4 "CT Chest WO contrast"
* $LOINC#36643-5 "XR Chest 2 Views"
* $LOINC#24589-4 "MR Brain W contrast IV"
* $LOINC#30657-1 "MR Brain WO contrast"
* $LOINC#24799-9 "XR Abdomen AP"
* $LOINC#24630-6 "US Chest"
* $LOINC#24558-9 "US Abdomen"
* $LOINC#24869-0 "US Pelvis"
* $LOINC#11525-3 "US for pregnancy"
* $LOINC#39904-8 "NM Bone Multiple area Views"
* $LOINC#39627-5 "NM Bone Limited Views"
* $LOINC#44138-6 "PT Brain"
* $LOINC#44137-8 "PT Heart"
* $LOINC#94678-0 "NM Liver and Biliary ducts and Gallbladder Views for patency"
* $LOINC#35913-3 "CT Guidance for drainage and placement of drainage catheter of Abdomen"
