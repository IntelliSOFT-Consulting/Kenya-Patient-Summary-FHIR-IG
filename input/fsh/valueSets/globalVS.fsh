

ValueSet: KpsGenderVS
Id: kps-gender-vs
Title: "KPS - Administrative Gender"
Description: "Custom ValueSet for Administrative Gender"

// * ^url = "http://localhost:8085/fhir/ValueSet/kps-gender-vs"
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
 
* ^url = "http://example.com/fhir/ValueSet/kps-organization-identifier-type"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: KPSOrganizationTypeVS
Id: kps-organization-type-vs
Title: "Organization Type"
Description: "Custom ValueSet for organization types."
 
* ^url = "http://example.com/fhir/ValueSet/organization-type"
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
 
// * ^url = "http://localhost:8085/fhir/ValueSet/medication-vs"
* ^experimental = false
* include codes from system http://www.whocc.no/atc
* $ATC#J07CA02

ValueSet: KPSMedicationFormVS
Id: kps-medication-form-vs
Title: "Medication Form"
Description: "Types of medication forms."
 
* ^url = "https://example.org/fhir/ValueSet/medication-form-vs"
* ^experimental = false
* include codes from system http://example.org/fhir/CodeSystem/medication-form

ValueSet: KPSUCUMUnitsVS
Id: kps-ucum-units-vs
Title: "UCUM Units"
Description: "UCUM units for medication quantities."
 
// * ^url = "http://localhost:8085/fhir/ValueSet/kps-ucum-units-vs"
* ^experimental = false
* include codes from system http://unitsofmeasure.org

 

ValueSet: KPSMedicationRequestCategoryVS
Id: kps-medication-request-category-vs
Title: "Medication Request Category"
Description: "Local medication request categories."
 
// * ^url = "http://localhost:8085/fhir/ValueSet/kps-medication-request-category-vs"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/medicationrequest-category

ValueSet: KPSGenericProductsVS
Id: kps-generic-products-vs
Title: "Generic Products"
Description: "List of generic drugs."
 
// * ^url = "http://localhost:8085/fhir/ValueSet/generic-products"
* ^experimental = false
* include codes from system http://www.whocc.no/atc
* $ATC#J07CA02

ValueSet: KPSUnitOfMeasureVS
Id: kps-unit-of-measure-vs
Title: "Unit of Measure"
Description: "Units for doses and dispensing."
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"
* ^experimental = false
* include codes from system http://unitsofmeasure.org
 

ValueSet: KPSAllergyStatusVS
Id: kps-allergy-status-vs
Title: "Allergy Clinical Status" 
Description: "Value Sets for Allergy Clinical Status"
// * ^url = "http://localhost:8085/fhir/ValueSet/kps-allergy-status-vs"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical

ValueSet: KPSAllergyCertaintyVS
Id: kps-allergy-certainty-vs
Title: "Allergy Certainty"
Description: "Value Sets for Allergy Certainty"
// * ^url = "http://localhost:8085/fhir/ValueSet/kps-allergy-certainty-vs"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

ValueSet: KPSAllergyTypeVS
Id: kps-allergy-type-vs
Title: "Allergy Type"
Description: "Value Sets for Allergy Type"
// * ^url = "http://localhost:8085/fhir/ValueSet/kps-allergy-type-vs"
* ^experimental = false
* include codes from system http://hl7.org/fhir/allergy-intolerance-type

ValueSet: KPSAllergySeverityVS
Id: kps-allergy-severity-vs
Title: "Allergy Severity" 
Description: "Value Sets for Allergy Severity"
// * ^url = "http://localhost:8085/fhir/ValueSet/kps-allergy-severity-vs"
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
Description: "Clinical diagnoses and conditions coded using ICD-10 and ICD-11, the standard classification systems used in Kenya's health system."
* ^experimental = false 
* include codes from system $condition-codes-cs

ValueSet: ConditionBodySiteVS
Id: condition-body-site-vs
Title: "BodySite ValueSet"
Description: "ValueSet binding for Condition.bodySite in Condition."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/body-site-vs"

ValueSet: ObservationStatusVS
Id: observation-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Observation.status in Observation."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/observation-status-vs"
* include codes from system http://hl7.org/fhir/observation-status

ValueSet: ObservationCategoryVS
Id: observation-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for Observation.category in Observation."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/observation-category-vs"
* include codes from system http://terminology.hl7.org/CodeSystem/observation-category

ValueSet: ObservationCodeVS
Id: observation-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for Observation.code in Observation."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/observation-codes"

ValueSet: AllergyIntoleranceClinicalStatusVS
Id: allergy-intolerance-clinical-status-vs
Title: "ClinicalStatus ValueSet"
Description: "ValueSet binding for AllergyIntolerance.clinicalStatus in AllergyIntolerance."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"

ValueSet: AllergyIntoleranceVerificationStatusVS
Id: allergy-intolerance-verification-status-vs
Title: "VerificationStatus ValueSet"
Description: "ValueSet binding for AllergyIntolerance.verificationStatus in AllergyIntolerance."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/allergy-intolerance-verification-status-vs"
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-verification

ValueSet: AllergyIntoleranceTypeVS
Id: allergy-intolerance-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for AllergyIntolerance.type in AllergyIntolerance."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/allergy-intolerance-type-vs"
* include codes from system http://hl7.org/fhir/allergy-intolerance-type

ValueSet: AllergyIntoleranceCriticalityVS
Id: allergy-intolerance-criticality-vs
Title: "Criticality ValueSet"
Description: "ValueSet binding for AllergyIntolerance.criticality in AllergyIntolerance."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality|4.0.1"

ValueSet: AllergyIntoleranceCodeVS
Id: allergy-intolerance-code-vs
Title: "KPS Allergy Intolerance Substance Codes"
Description: "Substances that may cause allergic reactions or intolerances. Uses WHO ATC drug codes (for drug allergies) and ICD-10 for clinically significant allergen classifications."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/allergyintolerance-code"
* include codes from system http://www.whocc.no/atc
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: AllergyIntoleranceReactionSubstanceVS
Id: allergy-intolerance-reaction-substance-vs
Title: "Substance ValueSet"
Description: "ValueSet binding for AllergyIntolerance.reaction.substance in AllergyIntolerance."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/substance-code"

ValueSet: AllergyIntoleranceReactionManifestationVS
Id: allergy-intolerance-reaction-manifestation-vs
Title: "KPS Allergy Reaction Manifestation Codes"
Description: "Clinical manifestations of allergic reactions coded using ICD-10 and $LOINC. Covers urticaria, anaphylaxis, angioedema, bronchospasm, and other reaction findings."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/allergyintolerance-reaction-manifestation"
* $LOINC#LA15702-6 "Anaphylaxis"
* $LOINC#LA15701-8 "Urticaria (hives)"
* $LOINC#LA15700-0 "Angioedema"
* $LOINC#LA6752-5 "Mild"
* $LOINC#LA6751-7 "Moderate"
* $LOINC#LA6750-9 "Severe"
* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system http://snomed.info/sct

ValueSet: AllergyIntoleranceReactionSeverityVS
Id: allergy-intolerance-reaction-severity-vs
Title: "Severity ValueSet"
Description: "ValueSet binding for AllergyIntolerance.reaction.severity in AllergyIntolerance."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/allergy-intolerance-reaction-severity-vs"
* include codes from system http://hl7.org/fhir/reaction-event-severity


ValueSet: MedicationCodeVS
Id: medication-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for Medication.code in Medication."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/medication-vs"

ValueSet: MedicationStatusVS
Id: medication-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Medication.status in Medication."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/medication-status-vs"
* include codes from system http://hl7.org/fhir/CodeSystem/medication-status

ValueSet: MedicationFormVS
Id: medication-form-vs
Title: "Form ValueSet"
Description: "ValueSet binding for Medication.form in Medication."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/medication-form-vs"

ValueSet: MedicationIngredientNumeratorComparatorVS
Id: medication-ingredient-numerator-comparator-vs
Title: "Numerator Comparator ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.numerator.comparator in Medication."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/quantity-comparator|4.0.1"

ValueSet: MedicationIngredientNumeratorUnitVS
Id: medication-ingredient-numerator-unit-vs
Title: "Numerator Unit ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.numerator.unit in Medication."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/ucum-units-vs"

ValueSet: MedicationIngredientDenominatorComparatorVS
Id: medication-ingredient-denominator-comparator-vs
Title: "Denominator Comparator ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.denominator.comparator in Medication."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/quantity-comparator|4.0.1"

ValueSet: MedicationIngredientDenominatorUnitVS
Id: medication-ingredient-denominator-unit-vs
Title: "Denominator Unit ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.denominator.unit in Medication."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/ucum-units-vs"


ValueSet: MedicationRequestStatusVS
Id: medication-request-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationRequest.status in MedicationRequest."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/medication-request-status-vs"
* include codes from system http://hl7.org/fhir/CodeSystem/medicationrequest-status

ValueSet: MedicationRequestIntentVS
Id: medication-request-intent-vs
Title: "Intent ValueSet"
Description: "ValueSet binding for MedicationRequest.intent in MedicationRequest."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/medication-request-intent-vs"
* include codes from system http://hl7.org/fhir/CodeSystem/medicationrequest-intent

ValueSet: MedicationRequestCategoryVS
Id: medication-request-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for MedicationRequest.category in MedicationRequest."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/medication-request-category-vs"
* include codes from system http://terminology.hl7.org/CodeSystem/medicationrequest-category

ValueSet: MedicationRequestPriorityVS
Id: medication-request-priority-vs
Title: "Priority ValueSet"
Description: "ValueSet binding for MedicationRequest.priority in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-priority|4.0.1"

ValueSet: MedicationRequestMedicationVS
Id: medication-request-medication-vs
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x] in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/generic-products"

ValueSet: MedicationRequestMedicationCodeableConceptVS
Id: medication-request-medication-codeable-concept-vs
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x]:medicationCodeableConcept in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-codes"

ValueSet: MedicationRequestMedicationCodeableConceptCodingCodeVS
Id: medication-request-medication-codeable-concept-coding-code-vs
Title: "Coding Code ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x]:medicationCodeableConcept.coding.code in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/generic-products"

ValueSet: MedicationRequestReasonCodeVS
Id: medication-request-reason-code-vs
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for MedicationRequest.reasonCode in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-code"

ValueSet: MedicationRequestAsNeededVS
Id: medication-request-as-needed-vs
Title: "AsNeeded ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.asNeeded[x] in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-as-needed-reason"

ValueSet: MedicationRequestRouteVS
Id: medication-request-route-vs
Title: "Route ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.route in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/route-of-administration"

ValueSet: MedicationRequestDoseQuantityUnitVS
Id: medication-request-dose-quantity-unit-vs
Title: "Dose Quantity Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseQuantity.unit in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"

ValueSet: MedicationRequestDoseRangeLowUnitVS
Id: medication-request-dose-range-low-unit-vs
Title: "DoseRange Low Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low.unit in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"

ValueSet: MedicationRequestDoseRangeHighUnitVS
Id: medication-request-dose-range-high-unit-vs
Title: "DoseRange High Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high.unit in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"

ValueSet: MedicationRequestDispenseQuantityUnitVS
Id: medication-request-dispense-quantity-unit-vs
Title: "Dispense Quantity Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dispenseRequest.quantity.unit in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"

ValueSet: MedicationRequestSubstitutionAllowedVS
Id: medication-request-substitution-allowed-vs
Title: "Substitution Allowed ValueSet"
Description: "ValueSet binding for MedicationRequest.substitution.allowed[x] in MedicationRequest."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode"

ValueSet: MedicationRequestSubstitutionReasonVS
Id: medication-request-substitution-reason-vs
Title: "Substitution Reason ValueSet"
Description: "ValueSet binding for MedicationRequest.substitution.reason in MedicationRequest."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason"


ValueSet: MedicationDispenseStatusVS
Id: medication-dispense-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationDispense.status in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medicationdispense-status|4.0.1"

ValueSet: MedicationDispenseMedicationVS
Id: medication-dispense-medication-vs
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x] in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-codes"

ValueSet: MedicationDispenseMedicationCodeableConceptVS
Id: medication-dispense-medication-codeable-concept-vs
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x]:medicationCodeableConcept in MedicationDispense."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/generic-products-1"

ValueSet: MedicationDispenseMedicationCodeableConceptCodeVS
Id: medication-dispense-medication-codeable-concept-code-vs
Title: "Medication CodeableConcept Code ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x]:medicationCodeableConcept.coding.code in MedicationDispense."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/generic-products-1"

ValueSet: MedicationDispenseTypeVS
Id: medication-dispense-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for MedicationDispense.type in MedicationDispense."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType"

ValueSet: MedicationDispenseAdditionalInstructionVS
Id: medication-dispense-additional-instruction-vs
Title: "AdditionalInstruction ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.additionalInstruction in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/additional-instruction-codes"

ValueSet: MedicationDispenseAsNeededVS
Id: medication-dispense-as-needed-vs
Title: "AsNeeded ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.asNeeded[x] in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-as-needed-reason"

ValueSet: MedicationDispenseSiteVS
Id: medication-dispense-site-vs
Title: "Site ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.site in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/approach-site-codes"

ValueSet: MedicationDispenseRouteVS
Id: medication-dispense-route-vs
Title: "Route ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.route in MedicationDispense."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/route-of-administration"

ValueSet: MedicationDispenseMethodVS
Id: medication-dispense-method-vs
Title: "Method ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.method in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/administration-method-codes"

ValueSet: MedicationDispenseDoseRateTypeVS
Id: medication-dispense-dose-rate-type-vs
Title: "DoseRate Type ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.doseAndRate.type in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/dose-rate-type"


ValueSet: MedicationStatementStatusVS
Id: medication-statement-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationStatement.status in MedicationStatement."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/medication-statement-status-vs"
* include codes from system http://hl7.org/fhir/CodeSystem/medication-statement-status

ValueSet: MedicationStatementStatusReasonVS
Id: medication-statement-status-reason-vs
Title: "StatusReason ValueSet"
Description: "ValueSet binding for MedicationStatement.statusReason in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/reason-medication-status-codes"

ValueSet: MedicationStatementMedicationVS
Id: medication-statement-medication-vs
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationStatement.medication[x] in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-codes"

ValueSet: MedicationStatementMedicationCodeableConceptVS
Id: medication-statement-medication-codeable-concept-vs
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationStatement.medication[x]:medicationCodeableConcept in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-codes"

ValueSet: MedicationStatementReasonCodeVS
Id: medication-statement-reason-code-vs
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for MedicationStatement.reasonCode in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-code|4.0.1"



ValueSet: ImmunizationStatusVS
Id: immunization-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Immunization.status in Immunization."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/immunization-status-vs"
* include codes from system http://hl7.org/fhir/event-status

ValueSet: ImmunizationVaccineCodeVS
Id: immunization-vaccine-code-vs
Title: "KPS Vaccine Codes"
Description: "Vaccine codes for the Kenya Patient Summary using WHO ATC J07 vaccine classification. Covers bacterial, viral, and combination vaccines used in Kenya's national immunization programme."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/immunization-vaccinecode"
* include codes from system http://www.whocc.no/atc where concept is-a #J07

ValueSet: ImmunizationTargetDiseaseVS
Id: immunization-target-disease-vs
Title: "KPS Vaccine Target Diseases"
Description: "Target diseases against which vaccines are administered in the Kenya national immunization programme, coded using ICD-10."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/immunization-targetdisease"
* include codes from system http://hl7.org/fhir/sid/icd-10


ValueSet: DiagnosticReportStatusVS
Id: diagnostic-report-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for DiagnosticReport.status in DiagnosticReport."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/diagnostic-report-status|4.0.1"

ValueSet: DiagnosticReportCategoryVS
Id: diagnostic-report-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for DiagnosticReport.category in DiagnosticReport."
* ^experimental = false
* ^url = "http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html"

ValueSet: DiagnosticReportCodeVS
Id: diagnostic-report-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for DiagnosticReport.code in DiagnosticReport."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/report-codes"

ValueSet: DiagnosticReportConclusionCodeVS
Id: diagnostic-report-conclusion-code-vs
Title: "ConclusionCode ValueSet"
Description: "ValueSet binding for DiagnosticReport.conclusionCode in DiagnosticReport."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/clinical-findings"


ValueSet: ProcedureStatusVS
Id: procedure-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Procedure.status in Procedure."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/procedure-status-vs"
* include codes from system http://hl7.org/fhir/event-status

ValueSet: ProcedureCodeVS
Id: procedure-code-vs
Title: "KPS Procedure Codes"
Description: "Clinical procedure codes for the Kenya Patient Summary using $LOINC and ICD-10. Covers surgical, diagnostic, and therapeutic procedures."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/procedure-code"
* include codes from system http://$LOINC.org
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: ProcedureReasonCodeVS
Id: procedure-reason-code-vs
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for Procedure.reasonCode in Procedure."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/condition-code-vs"

ValueSet: ProcedureBodySiteVS
Id: procedure-body-site-vs
Title: "BodySite ValueSet"
Description: "ValueSet binding for Procedure.bodySite in Procedure."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/body-site"

ValueSet: ProcedureOutcomeVS
Id: procedure-outcome-vs
Title: "Outcome ValueSet"
Description: "ValueSet binding for Procedure.outcome in Procedure."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/procedure-outcome"

ValueSet: FamilyMemberHistoryStatusVS
Id: family-member-history-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.status in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/history-status"

ValueSet: FamilyMemberHistoryDataAbsentReasonVS
Id: family-member-history-data-absent-reason-vs
Title: "DataAbsentReason ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.dataAbsentReason in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/history-absent-reason"

ValueSet: FamilyMemberHistoryRelationshipVS
Id: family-member-history-relationship-vs
Title: "Relationship ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.relationship in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-FamilyMember"

ValueSet: KPSFamilyMemberHistorySexVS
Id: kps-family-member-history-sex-vs
Title: "Sex ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.sex in FamilyMemberHistory."
* ^experimental = false
* include codes from system http://hl7.org/fhir/ValueSet/administrative-gender

ValueSet: FamilyMemberHistoryReasonCodeVS
Id: family-member-history-reason-code-vs
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.reasonCode in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/clinical-findings"

ValueSet: FamilyMemberHistoryConditionCodeVS
Id: family-member-history-condition-code-vs
Title: "Condition Code ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.condition.code in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-code"

ValueSet: FamilyMemberHistoryConditionOutcomeVS
Id: family-member-history-condition-outcome-vs
Title: "Condition Outcome ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.condition.outcome in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-outcome"

ValueSet: ClinicalImpressionStatusVS
Id: clinical-impression-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for ClinicalImpression.status in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/clinicalimpression-status"

ValueSet: ClinicalImpressionStatusReasonVS
Id: clinical-impression-status-reason-vs
Title: "StatusReason ValueSet"
Description: "ValueSet binding for ClinicalImpression.statusReason in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/event-status"   

ValueSet: ClinicalImpressionCodeVS
Id: clinical-impression-code-vs
Title: "Code ValueSet"
Description: "ValueSet binding for ClinicalImpression.code in ClinicalImpression."
* ^experimental = false
* ^url = ""   

ValueSet: ClinicalImpressionInvestigationCodeVS
Id: clinical-impression-investigation-code-vs
Title: "Investigation Code ValueSet"
Description: "ValueSet binding for ClinicalImpression.investigation.code in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/investigation-sets"

ValueSet: ClinicalImpressionFindingItemCodeableConceptVS
Id: clinical-impression-finding-item-codeable-concept-vs
Title: "Finding ItemCodeableConcept ValueSet"
Description: "ValueSet binding for ClinicalImpression.finding.itemCodeableConcept in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-code"

ValueSet: ClinicalImpressionPrognosisCodeableConceptVS
Id: clinical-impression-prognosis-codeable-concept-vs
Title: "Prognosis CodeableConcept ValueSet"
Description: "ValueSet binding for ClinicalImpression.prognosisCodeableConcept in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/clinicalimpression-prognosis"


ValueSet: DocumentReferenceStatusVS
Id: document-reference-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for DocumentReference.status in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-reference-status"

ValueSet: DocumentReferenceDocStatusVS
Id: document-reference-doc-status-vs
Title: "DocStatus ValueSet"
Description: "ValueSet binding for DocumentReference.docStatus in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/composition-status"

ValueSet: DocumentReferenceTypeVS
Id: document-reference-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for DocumentReference.type in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/c80-doc-typecodes"

ValueSet: DocumentReferenceCategoryVS
Id: document-reference-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for DocumentReference.category in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-classcodes"

ValueSet: DocumentReferenceRelatesToCodeVS
Id: document-reference-relates-to-code-vs
Title: "RelatesTo Code ValueSet"
Description: "ValueSet binding for DocumentReference.relatesTo.code in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-relationship-type"

ValueSet: DocumentReferenceSecurityLabelVS
Id: document-reference-security-label-vs
Title: "SecurityLabel ValueSet"
Description: "ValueSet binding for DocumentReference.securityLabel in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/security-labels"

ValueSet: DocumentReferenceContentFormatVS
Id: document-reference-content-format-vs
Title: "Content Format ValueSet"
Description: "ValueSet binding for DocumentReference.content.format in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/formatcodes"

ValueSet: DocumentReferenceContextEventVS
Id: document-reference-context-event-vs
Title: "Context Event ValueSet"
Description: "ValueSet binding for DocumentReference.context.event in DocumentReference."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActCode"

ValueSet: DocumentReferenceContextFacilityTypeVS
Id: document-reference-context-facility-type-vs
Title: "Facility Type ValueSet"
Description: "ValueSet binding for DocumentReference.context.facilityType in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/c80-facilitycodes"

ValueSet: DocumentReferenceContextPracticeSettingVS
Id: document-reference-context-practice-setting-vs
Title: "Practice Setting ValueSet"
Description: "ValueSet binding for DocumentReference.context.practiceSetting in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/c80-practice-codes"


ValueSet: CompositionStatusVS
Id: composition-status-vs
Title: "Status ValueSet"
Description: "ValueSet binding for Composition.status in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/composition-status"

ValueSet: CompositionTypeVS
Id: composition-type-vs
Title: "Type ValueSet"
Description: "ValueSet binding for Composition.type in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/doc-typecodes"

ValueSet: CompositionCategoryVS
Id: composition-category-vs
Title: "Category ValueSet"
Description: "ValueSet binding for Composition.category in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-classcodes"

ValueSet: CompositionConfidentialityVS
Id: composition-confidentiality-vs
Title: "Confidentiality ValueSet"
Description: "ValueSet binding for Composition.confidentiality in Composition."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification"

ValueSet: CompositionAttesterModeVS
Id: composition-attester-mode-vs
Title: "Attester Mode ValueSet"
Description: "ValueSet binding for Composition.attester.mode in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/composition-attestation-mode"

ValueSet: CompositionRelatesToCodeVS
Id: composition-relates-to-code-vs
Title: "RelatesTo Code ValueSet"
Description: "ValueSet binding for Composition.relatesTo.code in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-relationship-type"

ValueSet: CompositionEventCodeVS
Id: composition-event-code-vs
Title: "Event Code ValueSet"
Description: "ValueSet binding for Composition.event.code in Composition."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActCode"

ValueSet: CompositionSectionCodeVS
Id: composition-section-code-vs
Title: "Section Code ValueSet"
Description: "ValueSet binding for Composition.section.code in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/doc-section-codes"

ValueSet: CompositionSectionModeVS
Id: composition-section-mode-vs
Title: "Section Mode ValueSet"
Description: "ValueSet binding for Composition.section.mode in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/list-mode"

ValueSet: CompositionSectionOrderedByVS
Id: composition-section-ordered-by-vs
Title: "Section OrderedBy ValueSet"
Description: "ValueSet binding for Composition.section.orderedBy in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/list-order"

ValueSet: CompositionSectionEmptyReasonVS
Id: composition-section-empty-reason-vs
Title: "Section EmptyReason ValueSet"
Description: "ValueSet binding for Composition.section.emptyReason in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/list-empty-reason"


ValueSet: ConsentStatusVS
Id: consent-status-vs
Title: "Consent Status ValueSet"
Description: "ValueSet binding for Consent.status in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-state-codes"

ValueSet: ConsentScopeVS
Id: consent-scope-vs
Title: "Consent Scope ValueSet"
Description: "ValueSet binding for Consent.scope in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-scope"

ValueSet: ConsentCategoryVS
Id: consent-category-vs
Title: "Consent Category ValueSet"
Description: "ValueSet binding for Consent.category in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-category"

ValueSet: ConsentPolicyRuleVS
Id: consent-policy-rule-vs
Title: "Consent PolicyRule ValueSet"
Description: "ValueSet binding for Consent.policyRule in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-policy"

ValueSet: ConsentProvisionTypeVS
Id: consent-provision-type-vs
Title: "Consent Provision Type ValueSet"
Description: "ValueSet binding for Consent.provision.type in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-provision-type"

ValueSet: ConsentProvisionActorRoleVS
Id: consent-provision-actor-role-vs
Title: "Consent Provision Actor Role ValueSet"
Description: "ValueSet binding for Consent.provision.actor.role in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/security-role-type"

ValueSet: ConsentProvisionActionVS
Id: consent-provision-action-vs
Title: "Consent Provision Action ValueSet"
Description: "ValueSet binding for Consent.provision.action in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-action"

ValueSet: ConsentProvisionSecurityLabelVS
Id: consent-provision-security-label-vs
Title: "Consent Provision SecurityLabel ValueSet"
Description: "ValueSet binding for Consent.provision.securityLabel in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/security-labels"

ValueSet: ConsentProvisionPurposeVS
Id: consent-provision-purpose-vs
Title: "Consent Provision Purpose ValueSet"
Description: "ValueSet binding for Consent.provision.purpose in Consent."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-PurposeOfUse"

ValueSet: ConsentProvisionClassVS
Id: consent-provision-class-vs
Title: "Consent Provision Class ValueSet"
Description: "ValueSet binding for Consent.provision.class in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-content-class"

ValueSet: ConsentProvisionCodeVS
Id: consent-provision-code-vs
Title: "Consent Provision Code ValueSet"
Description: "ValueSet binding for Consent.provision.code in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-content-code"

ValueSet: ConsentProvisionDataMeaningVS
Id: consent-provision-data-meaning-vs
Title: "Consent Provision Data Meaning ValueSet"
Description: "ValueSet binding for Consent.provision.data.meaning in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-data-meaning"


ValueSet: SpecimenStatusVS
Id: specimen-status-vs
Title: "Specimen Status ValueSet"
Description: "ValueSet binding for Specimen.status in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/specimen-status|4.0.1"

ValueSet: SpecimenTypeVS
Id: specimen-type-vs
Title: "KPS Specimen Types"
Description: "Types of biological specimens collected for diagnostic analysis in the Kenya Patient Summary, coded using HL7 v2 Table 0487 and $LOINC."
* ^experimental = false
// * ^url = "http://localhost:8085/fhir/ValueSet/specimen-type"
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0487
* include codes from system http://$LOINC.org

ValueSet: SpecimenCollectionMethodVS
Id: specimen-collection-method-vs
Title: "Specimen Collection Method ValueSet"
Description: "ValueSet binding for Specimen.collection.method in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/specimen-collection-method"

ValueSet: SpecimenCollectionBodySiteVS
Id: specimen-collection-body-site-vs
Title: "Specimen Collection BodySite ValueSet"
Description: "ValueSet binding for Specimen.collection.bodySite in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/body-site"

ValueSet: SpecimenCollectionFastingStatusVS
Id: specimen-collection-fasting-status-vs
Title: "Specimen Collection Fasting Status ValueSet"
Description: "ValueSet binding for Specimen.collection.fastingStatus[x] in Specimen."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v2-0916"

ValueSet: SpecimenProcessingProcedureVS
Id: specimen-processing-procedure-vs
Title: "Specimen Processing Procedure ValueSet"
Description: "ValueSet binding for Specimen.processing.procedure in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/specimen-processing-procedure"

ValueSet: SpecimenContainerTypeVS
Id: specimen-container-type-vs
Title: "Specimen Container Type ValueSet"
Description: "ValueSet binding for Specimen.container.type in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/specimen-container-type"

ValueSet: SpecimenContainerAdditiveVS
Id: specimen-container-additive-vs
Title: "Specimen Container Additive ValueSet"
Description: "ValueSet binding for Specimen.container.additive[x] in Specimen."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v2-0371"

ValueSet: SpecimenConditionVS
Id: specimen-condition-vs
Title: "Specimen Condition ValueSet"
Description: "ValueSet binding for Specimen.condition in Specimen."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v2-0493"


ValueSet: ClaimStatusVS
Id: claim-status-vs
Title: "Claim Status ValueSet"
Description: "ValueSet binding for Claim.status in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: ClaimTypeVS
Id: claim-type-vs
Title: "Claim Type ValueSet"
Description: "ValueSet binding for Claim.type in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-type"

ValueSet: ClaimUseVS
Id: claim-use-vs
Title: "Claim Use ValueSet"
Description: "ValueSet binding for Claim.use in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-use"

ValueSet: ClaimPriorityVS
Id: claim-priority-vs
Title: "Claim Priority ValueSet"
Description: "ValueSet binding for Claim.priority in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/process-priority"

ValueSet: ClaimDiagnosisDiagnosisVS
Id: claim-diagnosis-diagnosis-vs
Title: "Claim Diagnosis ValueSet"
Description: "ValueSet binding for Claim.diagnosis.diagnosis[x] in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/icd-10"

ValueSet: ClaimItemCategoryVS
Id: claim-item-category-vs
Title: "Claim Item Category ValueSet"
Description: "ValueSet binding for Claim.item.category in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/ex-benefitcategory"

ValueSet: ClaimItemProductOrServiceVS
Id: claim-item-product-or-service-vs
Title: "Claim Item ProductOrService ValueSet"
Description: "ValueSet binding for Claim.item.productOrService in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/service-uscls"

ValueSet: ClaimItemUnitPriceCurrencyVS
Id: claim-item-unit-price-currency-vs
Title: "Claim Item UnitPrice Currency ValueSet"
Description: "ValueSet binding for Claim.item.unitPrice.currency in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/currencies"

ValueSet: ClaimItemNetCurrencyVS
Id: claim-item-net-currency-vs
Title: "Claim Item Net Currency ValueSet"
Description: "ValueSet binding for Claim.item.net.currency in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/currencies"


ValueSet: ClaimResponseStatusVS
Id: claim-response-status-vs
Title: "ClaimResponse Status ValueSet"
Description: "ValueSet binding for ClaimResponse.status in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: ClaimResponseTypeVS
Id: claim-response-type-vs
Title: "ClaimResponse Type ValueSet"
Description: "ValueSet binding for ClaimResponse.type in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-type|4.0.1"

ValueSet: ClaimResponseUseVS
Id: claim-response-use-vs
Title: "ClaimResponse Use ValueSet"
Description: "ValueSet binding for ClaimResponse.use in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-use|4.0.1"

ValueSet: ClaimResponseOutcomeVS
Id: claim-response-outcome-vs
Title: "ClaimResponse Outcome ValueSet"
Description: "ValueSet binding for ClaimResponse.outcome in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/remittance-outcome"

ValueSet: ClaimResponseItemAdjudicationCategoryVS
Id: claim-response-item-adjudication-category-vs
Title: "ClaimResponse Item Adjudication Category ValueSet"
Description: "ValueSet binding for ClaimResponse.item.adjudication.category in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/adjudication|4.0.1"


ValueSet: CoverageStatusVS
Id: coverage-status-vs
Title: "Coverage Status ValueSet"
Description: "ValueSet binding for Coverage.status in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: CoverageTypeVS
Id: coverage-type-vs
Title: "Coverage Type ValueSet"
Description: "ValueSet binding for Coverage.type in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/coverage-type"

ValueSet: CoverageRelationshipVS
Id: coverage-relationship-vs
Title: "Coverage Relationship ValueSet"
Description: "ValueSet binding for Coverage.relationship in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/subscriber-relationship"

ValueSet: CoverageClassTypeVS
Id: coverage-class-type-vs
Title: "Coverage Class Type ValueSet"
Description: "ValueSet binding for Coverage.class.type in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/coverage-class"

ValueSet: CoverageCostToBeneficiaryTypeVS
Id: coverage-cost-to-beneficiary-type-vs
Title: "Coverage CostToBeneficiary Type ValueSet"
Description: "ValueSet binding for Coverage.costToBeneficiary.type in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/coverage-copay-type"

ValueSet: CoverageCostToBeneficiaryExceptionTypeVS
Id: coverage-cost-to-beneficiary-exception-type-vs
Title: "Coverage CostToBeneficiary Exception Type ValueSet"
Description: "ValueSet binding for Coverage.costToBeneficiary.exception.type in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/coverage-financial-exception"


ValueSet: CoverageEligibilityRequestStatusVS
Id: coverage-eligibility-request-status-vs
Title: "CoverageEligibilityRequest Status ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: CoverageEligibilityRequestPriorityVS
Id: coverage-eligibility-request-priority-vs
Title: "CoverageEligibilityRequest Priority ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.priority."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/process-priority"

ValueSet: CoverageEligibilityRequestPurposeVS
Id: coverage-eligibility-request-purpose-vs
Title: "CoverageEligibilityRequest Purpose ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.purpose."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose"

ValueSet: CoverageEligibilityRequestItemCategoryVS
Id: coverage-eligibility-request-item-category-vs
Title: "CoverageEligibilityRequest Item Category ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.category."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/ex-benefitcategory"

ValueSet: CoverageEligibilityRequestItemProductOrServiceVS
Id: coverage-eligibility-request-item-product-or-service-vs
Title: "CoverageEligibilityRequest Item ProductOrService ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.productOrService."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/service-uscls"

ValueSet: CoverageEligibilityRequestItemModifierVS
Id: coverage-eligibility-request-item-modifier-vs
Title: "CoverageEligibilityRequest Item Modifier ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.modifier."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-modifiers"

ValueSet: CoverageEligibilityRequestItemDiagnosisDiagnosisVS
Id: coverage-eligibility-request-item-diagnosis-diagnosis-vs
Title: "CoverageEligibilityRequest Item Diagnosis ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.diagnosis.diagnosis[x]."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/icd-10"

ValueSet: CoverageEligibilityResponseStatusVS
Id: coverage-eligibility-response-status-vs
Title: "CoverageEligibilityResponse Status ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: CoverageEligibilityResponsePurposeVS
Id: coverage-eligibility-response-purpose-vs
Title: "CoverageEligibilityResponse Purpose ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.purpose."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose"

ValueSet: CoverageEligibilityResponseOutcomeVS
Id: coverage-eligibility-response-outcome-vs
Title: "CoverageEligibilityResponse Outcome ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.outcome."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/remittance-outcome"


ValueSet: ServiceRequestStatusVS
Id: service-request-status-vs
Title: "ServiceRequest Status ValueSet"
Description: "ValueSet binding for ServiceRequest.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-status|5.0.0"

ValueSet: ServiceRequestIntentVS
Id: service-request-intent-vs
Title: "ServiceRequest Intent ValueSet"
Description: "ValueSet binding for ServiceRequest.intent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-intent|5.0.0"

ValueSet: ServiceRequestCategoryVS
Id: service-request-category-vs
Title: "ServiceRequest Category ValueSet"
Description: "ValueSet binding for ServiceRequest.category."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/servicerequest-category"

ValueSet: ServiceRequestPriorityVS
Id: service-request-priority-vs
Title: "ServiceRequest Priority ValueSet"
Description: "ValueSet binding for ServiceRequest.priority."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-priority|5.0.0"

ValueSet: ServiceRequestCodeVS
Id: service-request-code-vs
Title: "ServiceRequest Code ValueSet"
Description: "ValueSet binding for ServiceRequest.code."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/procedure-code"

ValueSet: ServiceRequestLocationVS
Id: service-request-location-vs
Title: "ServiceRequest Location ValueSet"
Description: "ValueSet binding for ServiceRequest.location."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"

ValueSet: ServiceRequestReasonVS
Id: service-request-reason-vs
Title: "ServiceRequest Reason ValueSet"
Description: "ValueSet binding for ServiceRequest.reason."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/procedure-reason"


ValueSet: TaskStatusVS
Id: task-status-vs
Title: "Task Status ValueSet"
Description: "ValueSet binding for Task.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/task-status"

ValueSet: TaskIntentVS
Id: task-intent-vs
Title: "Task Intent ValueSet"
Description: "ValueSet binding for Task.intent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/task-intent"

ValueSet: TaskPriorityVS
Id: task-priority-vs
Title: "Task Priority ValueSet"
Description: "ValueSet binding for Task.priority."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-priority"

ValueSet: TaskCodeVS
Id: task-code-vs
Title: "Task Code ValueSet"
Description: "ValueSet binding for Task.code."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/task-code"

ValueSet: TaskPerformerTypeVS
Id: task-performer-type-vs
Title: "Task Performer Type ValueSet"
Description: "ValueSet binding for Task.performerType."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/performer-role"

ValueSet: CarePlanStatusVS
Id: care-plan-status-vs
Title: "CarePlan Status ValueSet"
Description: "ValueSet binding for CarePlan.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-status"

ValueSet: CarePlanIntentVS
Id: care-plan-intent-vs
Title: "CarePlan Intent ValueSet"
Description: "ValueSet binding for CarePlan.intent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/care-plan-intent"

ValueSet: CarePlanCategoryVS
Id: care-plan-category-vs
Title: "CarePlan Category ValueSet"
Description: "ValueSet binding for CarePlan.category."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/care-plan-category"

ValueSet: CarePlanActivityDetailKindVS
Id: care-plan-activity-detail-kind-vs
Title: "CarePlan Activity Detail Kind ValueSet"
Description: "ValueSet binding for CarePlan.activity.detail.kind."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/care-plan-activity-kind"

ValueSet: CarePlanActivityDetailStatusVS
Id: care-plan-activity-detail-status-vs
Title: "CarePlan Activity Detail Status ValueSet"
Description: "ValueSet binding for CarePlan.activity.detail.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/care-plan-activity-status"


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
* $LOINC#24627-2 "CT of abdomen"
* $LOINC#24628-0 "CT of abdomen W contrast IV"
* $LOINC#24629-8 "CT of abdomen WO contrast"
* $LOINC#24630-6 "CT of abdomen WO and W contrast IV"
* $LOINC#24725-4 "CT of brain"
* $LOINC#24726-2 "CT of brain W contrast IV"
* $LOINC#24727-0 "CT of brain WO contrast"
* $LOINC#24728-8 "CT of brain WO and W contrast IV"
* $LOINC#24736-1 "CT of chest"
* $LOINC#24737-9 "CT of chest W contrast IV"
* $LOINC#24738-7 "CT of chest WO contrast"
* $LOINC#36643-5 "Chest X-ray 2 views"
* $LOINC#24606-6 "MR brain W contrast IV"
* $LOINC#24607-4 "MR brain WO contrast"
* $LOINC#24671-0 "Abdomen X-ray AP"
* $LOINC#39607-7 "US of chest"
* $LOINC#30704-1 "Ultrasound of abdomen"
* $LOINC#25061-5 "Ultrasound of pelvis"
* $LOINC#42148-7 "Ultrasound of obstetric"
* $LOINC#39879-2 "Bone scan"
* $LOINC#39905-5 "Bone scan limited"
* $LOINC#24730-4 "PET of brain"
* $LOINC#44137-8 "PET of heart"
* $LOINC#36046-1 "Hepatobiliary scan"
* $LOINC#24953-2 "CT guidance for drainage"
