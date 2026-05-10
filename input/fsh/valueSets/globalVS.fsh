Alias: LOINC = http://loinc.org
Alias: UCUM = http://unitsofmeasure.org

ValueSet: GenderVS
Id: kps-patient-gender-vs
Title: "KPS - Administrative Gender"
Description: "Custom ValueSet for Administrative Gender"
 
* ^url = "http://example.com/fhir/ValueSet/kps-patient-gender-vs"
* ^experimental = false
* include codes from system http://hl7.org/fhir/ValueSet/administrative-gender


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
Id: kps-diagnostic-service-sections
Title: "Diagnostic Service Categories"
Description: "Categories of diagnostic services."
 
* ^url = "http://terminology.hl7.org/ValueSet/diagnostic-service-sections"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0074

ValueSet: KPSMedicationVS
Id: kps-medication-vs
Title: "Medication ValueSet"
Description: "List of permitted medications in national formulary."
 
* ^url = "https://example.org/fhir/ValueSet/medication-vs"
* ^experimental = false
* include codes from system http://www.whocc.no/atc

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
 
* ^url = "https://example.org/fhir/ValueSet/ucum-units-vs"
* ^experimental = false
* include codes from system http://unitsofmeasure.org

 

ValueSet: KPSMedicationRequestCategoryVS
Id: kps-medicationrequest-category
Title: "Medication Request Category"
Description: "Local medication request categories."
 
* ^url = "http://hl7.org/fhir/ValueSet/medicationrequest-category"
* ^experimental = false
* include codes from system http://example.org/fhir/CodeSystem/medicationrequest-category

ValueSet: KPSGenericProductsVS
Id: kps-generic-products
Title: "Generic Products"
Description: "List of generic drugs."
 
* ^url = "https://example.com/fhir/ValueSet/generic-products"
* ^experimental = false
* include codes from system http://www.whocc.no/atc

ValueSet: KPSUnitOfMeasureVS
Id: kps-unit-of-measure
Title: "Unit of Measure"
Description: "Units for doses and dispensing."
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"
* ^experimental = false
* include codes from system http://unitsofmeasure.org
 

ValueSet: KPSAllergyStatusVS
Id: kps-allergy-status-vs
Title: "Allergy Clinical Status" 
Description: "Value Sets for Allergy Clinical Status"
* ^url = "https://example.org/fhir/ValueSet/allergy-status-vs"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical

ValueSet: KPSAllergyCertaintyVS
Id: kps-allergy-certainty-vs
Title: "Allergy Certainty"
Description: "Value Sets for Allergy Certainty"
* ^url = "https://example.org/fhir/ValueSet/allergy-certainty-vs"
* ^experimental = false
* include codes from system http://example.org/fhir/CodeSystem/allergy-certainty

ValueSet: KPSAllergyTypeVS
Id: kps-allergy-type-vs
Title: "Allergy Type"
Description: "Value Sets for Allergy Type"
* ^url = "https://example.org/fhir/ValueSet/allergy-type-vs"
* ^experimental = false
* include codes from system http://hl7.org/fhir/allergy-intolerance-type

ValueSet: KPSAllergySeverityVS
Id: kps-allergy-severity-vs
Title: "Allergy Severity" 
Description: "Value Sets for Allergy Severity"
* ^url = "https://example.org/fhir/ValueSet/allergy-severity-vs"
* ^experimental = false
* include codes from system http://hl7.org/fhir/reaction-event-severity


ValueSet: KPSVitalSignsCodes
Id: kps-vital-signs-codes
Title: "KPS Vital Signs Codes"
Description: "Standard codes for recording vital signs in the Kenya Patient Summary."
* ^experimental = false
* LOINC#85353-1 "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
* LOINC#9279-1 "Respiratory rate"
* LOINC#8867-4 "Heart rate"
* LOINC#2708-6 "Oxygen saturation in Arterial blood"
* LOINC#8310-5 "Body temperature"
* LOINC#8302-2 "Body height"
* LOINC#9843-4 "Head Occipital-frontal circumference"
* LOINC#29463-7 "Body weight"
* LOINC#39156-5 "Body mass index (BMI) [Ratio]"
* LOINC#85354-9 "Blood pressure panel with all children optional"
* LOINC#8480-6 "Systolic blood pressure"
* LOINC#8462-4 "Diastolic blood pressure"
* LOINC#8478-0 "Mean blood pressure"


ValueSet: KPSVitalSignsUnits
Id: kps-vital-signs-units
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
Id: kps-service-access-point
Title: "KPS Service Access Point"
Description: "A list of service access points for classifying patient entry points in facilities"
* ^experimental = false
* include codes from system KPSServiceAccessPointCS


ValueSet: KPSFundChoicesVS
Id: kps-fund-choices
Title: "KPS Fund Choices"
Description: "Locally defined list of patient fund options for health service payments"
* ^experimental = false
* include codes from system KPSFundChoicesCS


ValueSet: KPSSchemesVS
Id: kps-schemes
Title: "KPS Schemes"
Description: "A list of schemes available to patients"
* ^experimental = false
* include codes from system KPSSchemesCS

ValueSet: KPSPaymentMechanism
Id: kps-payment-mechanism
Title: "KPS Payment Mechanism"
Description: "A list of allowed healthcare payment models"
* ^experimental = false
* include codes from system PaymentMechanism

ValueSet: KPSUsageFrequency
Id: kps-usage-frequency
Title: "KPS Usage Frequency"
Description: "A list of allowable frequency options for health service usage"
* ^experimental = false
* include codes from system UsageFrequency

ValueSet: KPSAnnualQuantityType
Id: kps-annual-quantity-type
Title: "KPS Annual Quantity Type"
Description: "Types of units used to express annual health service quantities"
* ^experimental = false
* include codes from system AnnualQuantityType


ValueSet: KPSAuthType
Id: kps-auth-type
Title: "KPS Authorization Type"
Description: "List of accepted authentication or authorization types"
* ^experimental = false
* include codes from system AuthType

ValueSet: KPSAuthorizationFailureReason
Id: kps-authorization-failure-reason
Title: "KPS Authorization Failure Reason"
Description: "Allowed values for reasons why an authorization request may fail"
* ^experimental = false
* include codes from system AuthorizationFailureReason

ValueSet: KPSAuthorizationStatus
Id: kps-authorization-status
Title: "KPS Authorization Status"
Description: "Status options for an authorization process"
* ^experimental = false
* include codes from system AuthorizationStatus


ValueSet: KPSClaimsDepartments
Id: kps-claims-departments
Title: "KPS Claims Departments"
Description: "Departments used for classifying healthcare claims"
* ^experimental = false
* include codes from system ClaimsDepartments

ValueSet: KPSCopayType
Id: kps-copay-type
Title: "KPS Copay Types"
Description: "Allowed copay types for patient contribution"
* ^experimental = false
* include codes from system CopayType


ValueSet: KPSRemittanceChoice
Id: kps-remittance-choice
Title: "KPS Remittance Choice"
Description: "Options for how remittances are made"
* ^experimental = false
* include codes from system RemittanceChoice

ValueSet: KPSRemittanceStatus
Id: kps-remittance-status
Title: "KPS Remittance Status"
Description: "Stages of remittance status tracking"
* ^experimental = false
* include codes from system RemittanceStatus


ValueSet: KPSAdjustmentType
Id: kps-adjustment-type
Title: "KPS Adjustment Type"
Description: "Types of financial adjustments applied to claims or bills"
* ^experimental = false
* include codes from system AdjustmentType



ValueSet: KPSDiagnosisKind
Id: kps-diagnosis-kind
Title: "KPS Diagnosis Kind"
Description: "Diagnosis classification level based on ICD structure"
* ^experimental = false
* include codes from system DiagnosisKind

ValueSet: KPSFlagType
Id: kps-flag-type
Title: "KPS Flag Type"
Description: "Types of flags applied to claims or processes"
* ^experimental = false
* include codes from system FlagType


ValueSet: KPSNonEDIClaimStatus
Id: kps-non-edi-claim-status
Title: "KPS Non-EDI Claim Status"
Description: "Workflow status values for non-electronic claims"
* ^experimental = false
* include codes from system NonEDIClaimStatus


ValueSet: KPSBulkRemittanceStatus
Id: kps-bulk-remittance-status
Title: "KPS Bulk Remittance Status"
Description: "Status of bulk remittance batches"
* ^experimental = false
* include codes from system BulkRemittanceStatus


ValueSet: KPSPaymentNoticeStatus
Id: kps-payment-notice-status
Title: "KPS PaymentNoticeStatus"
Description: "Value Sets for PaymentNotice Status"
* ^experimental = false
* include codes from system http://hl7.org/fhir/fm-status

ValueSet: KPSPaymentNoticePaymentStatus
Id: kps-payment-notice-payment-status
Title: "KPS PaymentNoticePaymentStatus"
Description: "Value Sets for PaymentNotice Patment Status"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/paymentstatus

ValueSet: KPSEpisodeOfCareStatus
Id: ksp-episode-of-care-status
Title: "KPS EpisodeOfCareStatus"
Description: "Value Sets for EpisodeOfCare Status"
* ^experimental = false
* include codes from system http://hl7.org/fhir/episode-of-care-status

ValueSet: KPSEpisodeOfCareType
Id: kps-episode-of-care-type
Title: "KPS EpisodeOfCareType"
Description: "Value Sets for EpisodeOfCare Type"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/episodeofcare-type

ValueSet: KPSEpisodeOfCareDiagnosisRole
Id: kpsepisode-of-care-diagnosis-role
Title: "KPS EpisodeOfCareDiagnosisRole"
Description: "Value Sets for EpisodeOfCare Diagnosis Role"
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/diagnosis-role


ValueSet: KPSSubstanceStatus
Id: kps-substance-status
Title: "KPSSubstanceStatus"
Description: "Value Sets for Substance Status"
* ^experimental = false
* include codes from system http://hl7.org/fhir/substance-status

ValueSet: KPSPatientIdentifierUse
Id: kps-patient-identifier-use
Title: "KPSPatientIdentifierUse"
Description: "ValueSet binding for Patient.identifier.use in Patient."
* ^experimental = false
* include codes from system  http://hl7.org/fhir/identifier-use


ValueSet: KPSPatientIdentifierType
Id: kps-patient-identifier-type
Title: "KPSPatientIdentifierType"
Description: "ValueSet binding for Patient.identifier.type in Patient."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: KPSPatientNameUse
Id: kps-patient-name-use
Title: "KPSPatientNameUse"
Description: "ValueSet binding for Patient.name.use in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/name-use

ValueSet: KPSPatientTelecomSystem
Id: kps-patient-telecom-system
Title: "KPSPatientTelecomSystem"
Description: "ValueSet binding for Patient.telecom.system in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/contact-point-system

ValueSet: KPSPatientTelecomUse
Id: kps-patient-telecom-use
Title: "KPSPatientTelecomUse"
Description: "ValueSet binding for Patient.telecom.use in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/contact-point-use

ValueSet: KPSPatientGender
Id: kps-patient-gender
Title: "KPSPatientGender"
Description: "ValueSet binding for Patient.gender in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/ValueSet/administrative-gender

ValueSet: KPSPatientAddressUse
Id: kps-patient-address-use
Title: "KPSPatientAddressUse"
Description: "ValueSet binding for Patient.address.use in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/address-use

ValueSet: KPSPatientMaritalStatus
Id: kps-patient-marital-status
Title: "KPSPatientMaritalStatus"
Description: "ValueSet binding for Patient.maritalStatus in Patient."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v3-MaritalStatus

ValueSet: KPSPatientContactRelationship
Id: kps-patient-contact-relationship
Title: "KPSPatientContactRelationship"
Description: "ValueSet binding for Patient.contact.relationship in Patient."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0131 where concept is-not-a #O

ValueSet: KPSPatientLinkType
Id: kps-patient-link-type
Title: "KPSPatientLinkType"
Description: "ValueSet binding for Patient.link.type in Patient."
* ^experimental = false
* include codes from system http://hl7.org/fhir/link-type



ValueSet: KPSPractitionerIdentifierUse
Id: kps-practitioner-identifier-use
Title: "Practitioner Identifier Use ValueSet"
Description: "ValueSet binding for Practitioner.identifier.use in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/identifier-use

ValueSet: KPSPractitionerIdentifierType
Id: kps-practitioner-identifier-type
Title: "Practitioner Identifier Type ValueSet"
Description: "ValueSet binding for Practitioner.identifier.type in Practitioner."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: KPSPractitionerNameUse
Id: kps-practitioner-name-use
Title: "Practitioner Name Use ValueSet"
Description: "ValueSet binding for Practitioner.name.use in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/name-use

ValueSet: practitioner-telecom-system
Id: practitioner-telecom-system
Title: "System ValueSet"
Description: "ValueSet binding for Practitioner.telecom.system in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/contact-point-system

ValueSet: practitioner-address-use
Id: practitioner-address-use
Title: "Use ValueSet"
Description: "ValueSet binding for Practitioner.address.use in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/address-use

ValueSet: practitioner-gender
Id: practitioner-gender
Title: "Gender ValueSet"
Description: "ValueSet binding for Practitioner.gender in Practitioner."
* ^experimental = false
* include codes from system http://hl7.org/fhir/administrative-gender

 

ValueSet: practitionerrole-code
Id: practitionerrole-code
Title: "Code ValueSet"
Description: "ValueSet binding for PractitionerRole.code in PractitionerRole."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/practitioner-role

ValueSet: organization-identifier-use
Id: organization-identifier-use
Title: "Use ValueSet"
Description: "ValueSet binding for Organization.identifier.use in Organization."
* ^experimental = false
* include codes from system http://hl7.org/fhir/identifier-use

ValueSet: organization-identifier-type
Id: organization-identifier-type
Title: "Type ValueSet"
Description: "ValueSet binding for Organization.identifier.type in Organization."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: organization-type
Id: organization-type
Title: "Type ValueSet"
Description: "ValueSet binding for Organization.type in Organization."
* ^experimental = false
* include codes from system  http://terminology.hl7.org/CodeSystem/organization-type 

ValueSet: organization-address-use
Id: organization-address-use
Title: "Use ValueSet"
Description: "ValueSet binding for Organization.address.use in Organization."
* ^experimental = false
* include codes from system http://hl7.org/fhir/address-use

ValueSet: encounter-status
Id: encounter-status
Title: "Status ValueSet"
Description: "ValueSet binding for Encounter.status in Encounter."
* ^experimental = false
* include codes from system http://hl7.org/fhir/encounter-status

ValueSet: encounter-class
Id: encounter-class
Title: "Class ValueSet"
Description: "ValueSet binding for Encounter.class in Encounter."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActCode where concept is-a #_ActEncounterCode

 
ValueSet: encounter-priority
Id: encounter-priority
Title: "Priority ValueSet"
Description: "ValueSet binding for Encounter.priority in Encounter."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActPriority

ValueSet: condition-clinicalstatus
Id: condition-clinicalstatus
Title: "ClinicalStatus ValueSet"
Description: "ValueSet binding for Condition.clinicalStatus in Condition."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/condition-clinical

ValueSet: condition-verificationstatus
Id: condition-verificationstatus
Title: "VerificationStatus ValueSet"
Description: "ValueSet binding for Condition.verificationStatus in Condition."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/condition-ver-status

ValueSet: condition-category
Id: condition-category
Title: "Category ValueSet"
Description: "ValueSet binding for Condition.category in Condition."
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/condition-category

ValueSet: condition-severity
Id: condition-severity
Title: "KPS Condition Severity"
Description: "Severity levels for clinical conditions in the Kenya Patient Summary, using LOINC answer codes."
* ^experimental = false
* ^url = "https://fhir.dha.go.ke/ig/kenyaPS/ValueSet/condition-severity"
* $LNC#LA6752-5 "Mild"
* $LNC#LA6751-7 "Moderate"
* $LNC#LA6750-9 "Severe"
* $LNC#LA13703-6 "Life threatening"

ValueSet: condition-code
Id: condition-code
Title: "KPS Condition Codes"
Description: "Clinical diagnoses and conditions coded using ICD-10 and ICD-11, the standard classification systems used in Kenya's health system."
* ^experimental = false
* ^url = "https://fhir.dha.go.ke/ig/kenyaPS/ValueSet/condition-code"
* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system http://id.who.int/icd/release/11/mms

ValueSet: condition-bodysite
Id: condition-bodysite
Title: "BodySite ValueSet"
Description: "ValueSet binding for Condition.bodySite in Condition."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/body-site-vs"

ValueSet: observation-status
Id: observation-status
Title: "Status ValueSet"
Description: "ValueSet binding for Observation.status in Observation."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/observation-status|4.0.1"

ValueSet: observation-category
Id: observation-category
Title: "Category ValueSet"
Description: "ValueSet binding for Observation.category in Observation."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/observation-category"

ValueSet: observation-code
Id: observation-code
Title: "Code ValueSet"
Description: "ValueSet binding for Observation.code in Observation."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/observation-codes"

ValueSet: allergyintolerance-clinicalstatus
Id: allergyintolerance-clinicalstatus
Title: "ClinicalStatus ValueSet"
Description: "ValueSet binding for AllergyIntolerance.clinicalStatus in AllergyIntolerance."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/allergyintolerance-clinical"

ValueSet: allergyintolerance-verificationstatus
Id: allergyintolerance-verificationstatus
Title: "VerificationStatus ValueSet"
Description: "ValueSet binding for AllergyIntolerance.verificationStatus in AllergyIntolerance."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/allergy-certainty-vs"

ValueSet: allergyintolerance-type
Id: allergyintolerance-type
Title: "Type ValueSet"
Description: "ValueSet binding for AllergyIntolerance.type in AllergyIntolerance."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/allergy-type-vs"

ValueSet: allergyintolerance-criticality
Id: allergyintolerance-criticality
Title: "Criticality ValueSet"
Description: "ValueSet binding for AllergyIntolerance.criticality in AllergyIntolerance."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality|4.0.1"

ValueSet: allergyintolerance-code
Id: allergyintolerance-code
Title: "KPS Allergy Intolerance Substance Codes"
Description: "Substances that may cause allergic reactions or intolerances. Uses WHO ATC drug codes (for drug allergies) and ICD-10 for clinically significant allergen classifications."
* ^experimental = false
* ^url = "https://fhir.dha.go.ke/ig/kenyaPS/ValueSet/allergyintolerance-code"
* include codes from system http://www.whocc.no/atc
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: allergyintolerance-reaction-substance
Id: allergyintolerance-reaction-substance
Title: "Substance ValueSet"
Description: "ValueSet binding for AllergyIntolerance.reaction.substance in AllergyIntolerance."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/substance-code"

ValueSet: allergyintolerance-reaction-manifestation
Id: allergyintolerance-reaction-manifestation
Title: "KPS Allergy Reaction Manifestation Codes"
Description: "Clinical manifestations of allergic reactions coded using ICD-10 and LOINC. Covers urticaria, anaphylaxis, angioedema, bronchospasm, and other reaction findings."
* ^experimental = false
* ^url = "https://fhir.dha.go.ke/ig/kenyaPS/ValueSet/allergyintolerance-reaction-manifestation"
* $LNC#LA15702-6 "Anaphylaxis"
* $LNC#LA15701-8 "Urticaria (hives)"
* $LNC#LA15700-0 "Angioedema"
* $LNC#LA6752-5 "Mild"
* $LNC#LA6751-7 "Moderate"
* $LNC#LA6750-9 "Severe"
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: allergyintolerance-reaction-severity
Id: allergyintolerance-reaction-severity
Title: "Severity ValueSet"
Description: "ValueSet binding for AllergyIntolerance.reaction.severity in AllergyIntolerance."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/allergy-severity-vs"


ValueSet: medication-code
Id: medication-code
Title: "Code ValueSet"
Description: "ValueSet binding for Medication.code in Medication."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/medication-vs"

ValueSet: medication-status
Id: medication-status
Title: "Status ValueSet"
Description: "ValueSet binding for Medication.status in Medication."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-status|4.0.1"

ValueSet: medication-form
Id: medication-form
Title: "Form ValueSet"
Description: "ValueSet binding for Medication.form in Medication."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/medication-form-vs"

ValueSet: medication-ingredient-numerator-comparator
Id: medication-ingredient-numerator-comparator
Title: "Numerator Comparator ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.numerator.comparator in Medication."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/quantity-comparator|4.0.1"

ValueSet: medication-ingredient-numerator-unit
Id: medication-ingredient-numerator-unit
Title: "Numerator Unit ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.numerator.unit in Medication."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/ucum-units-vs"

ValueSet: medication-ingredient-denominator-comparator
Id: medication-ingredient-denominator-comparator
Title: "Denominator Comparator ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.denominator.comparator in Medication."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/quantity-comparator|4.0.1"

ValueSet: medication-ingredient-denominator-unit
Id: medication-ingredient-denominator-unit
Title: "Denominator Unit ValueSet"
Description: "ValueSet binding for Medication.ingredient.strength.denominator.unit in Medication."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/ucum-units-vs"


ValueSet: medicationrequest-status
Id: medicationrequest-status
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationRequest.status in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medicationrequest-status|4.0.1"

ValueSet: medicationrequest-intent
Id: medicationrequest-intent
Title: "Intent ValueSet"
Description: "ValueSet binding for MedicationRequest.intent in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medicationrequest-intent|4.0.1"

ValueSet: medicationrequest-category
Id: medicationrequest-category
Title: "Category ValueSet"
Description: "ValueSet binding for MedicationRequest.category in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medicationrequest-category"

ValueSet: medicationrequest-priority
Id: medicationrequest-priority
Title: "Priority ValueSet"
Description: "ValueSet binding for MedicationRequest.priority in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-priority|4.0.1"

ValueSet: medicationrequest-medication
Id: medicationrequest-medication
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x] in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/generic-products"

ValueSet: medicationrequest-medicationcodeableconcept
Id: medicationrequest-medicationcodeableconcept
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x]:medicationCodeableConcept in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-codes"

ValueSet: medicationrequest-medicationcodeableconcept-coding-code
Id: medicationrequest-medicationcodeableconcept-coding-code
Title: "Coding Code ValueSet"
Description: "ValueSet binding for MedicationRequest.medication[x]:medicationCodeableConcept.coding.code in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/generic-products"

ValueSet: medicationrequest-reasoncode
Id: medicationrequest-reasoncode
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for MedicationRequest.reasonCode in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-code"

ValueSet: medicationrequest-asneeded
Id: medicationrequest-asneeded
Title: "AsNeeded ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.asNeeded[x] in MedicationRequest."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-as-needed-reason"

ValueSet: medicationrequest-route
Id: medicationrequest-route
Title: "Route ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.route in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/route-of-administration"

ValueSet: medicationrequest-dosequantity-unit
Id: medicationrequest-dosequantity-unit
Title: "Dose Quantity Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseQuantity.unit in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"

ValueSet: medicationrequest-doserange-low-unit
Id: medicationrequest-doserange-low-unit
Title: "DoseRange Low Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low.unit in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"

ValueSet: medicationrequest-doserange-high-unit
Id: medicationrequest-doserange-high-unit
Title: "DoseRange High Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high.unit in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"

ValueSet: medicationrequest-dispense-quantity-unit
Id: medicationrequest-dispense-quantity-unit
Title: "Dispense Quantity Unit ValueSet"
Description: "ValueSet binding for MedicationRequest.dispenseRequest.quantity.unit in MedicationRequest."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"

ValueSet: medicationrequest-substitution-allowed
Id: medicationrequest-substitution-allowed
Title: "Substitution Allowed ValueSet"
Description: "ValueSet binding for MedicationRequest.substitution.allowed[x] in MedicationRequest."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode"

ValueSet: medicationrequest-substitution-reason
Id: medicationrequest-substitution-reason
Title: "Substitution Reason ValueSet"
Description: "ValueSet binding for MedicationRequest.substitution.reason in MedicationRequest."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason"


ValueSet: medicationdispense-status
Id: medicationdispense-status
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationDispense.status in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medicationdispense-status|4.0.1"

ValueSet: medicationdispense-medication
Id: medicationdispense-medication
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x] in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-codes"

ValueSet: medicationdispense-medicationcodeableconcept
Id: medicationdispense-medicationcodeableconcept
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x]:medicationCodeableConcept in MedicationDispense."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/generic-products-1"

ValueSet: medicationdispense-medicationcodeableconcept-code
Id: medicationdispense-medicationcodeableconcept-code
Title: "Medication CodeableConcept Code ValueSet"
Description: "ValueSet binding for MedicationDispense.medication[x]:medicationCodeableConcept.coding.code in MedicationDispense."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/generic-products-1"

ValueSet: medicationdispense-type
Id: medicationdispense-type
Title: "Type ValueSet"
Description: "ValueSet binding for MedicationDispense.type in MedicationDispense."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActPharmacySupplyType"

ValueSet: medicationdispense-additionalinstruction
Id: medicationdispense-additionalinstruction
Title: "AdditionalInstruction ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.additionalInstruction in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/additional-instruction-codes"

ValueSet: medicationdispense-asneeded
Id: medicationdispense-asneeded
Title: "AsNeeded ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.asNeeded[x] in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-as-needed-reason"

ValueSet: medicationdispense-site
Id: medicationdispense-site
Title: "Site ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.site in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/approach-site-codes"

ValueSet: medicationdispense-route
Id: medicationdispense-route
Title: "Route ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.route in MedicationDispense."
* ^experimental = false
* ^url = "https://example.com/fhir/ValueSet/route-of-administration"

ValueSet: medicationdispense-method
Id: medicationdispense-method
Title: "Method ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.method in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/administration-method-codes"

ValueSet: medicationdispense-dose-rate-type
Id: medicationdispense-dose-rate-type
Title: "DoseRate Type ValueSet"
Description: "ValueSet binding for MedicationDispense.dosageInstruction.doseAndRate.type in MedicationDispense."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/dose-rate-type"


ValueSet: medicationstatement-status
Id: medicationstatement-status
Title: "Status ValueSet"
Description: "ValueSet binding for MedicationStatement.status in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-statement-status|4.0.1"

ValueSet: medicationstatement-statusreason
Id: medicationstatement-statusreason
Title: "StatusReason ValueSet"
Description: "ValueSet binding for MedicationStatement.statusReason in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/reason-medication-status-codes"

ValueSet: medicationstatement-medication
Id: medicationstatement-medication
Title: "Medication ValueSet"
Description: "ValueSet binding for MedicationStatement.medication[x] in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-codes"

ValueSet: medicationstatement-medicationcodeableconcept
Id: medicationstatement-medicationcodeableconcept
Title: "MedicationCodeableConcept ValueSet"
Description: "ValueSet binding for MedicationStatement.medication[x]:medicationCodeableConcept in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/medication-codes"

ValueSet: medicationstatement-reasoncode
Id: medicationstatement-reasoncode
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for MedicationStatement.reasonCode in MedicationStatement."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-code|4.0.1"



ValueSet: immunization-status
Id: immunization-status
Title: "Status ValueSet"
Description: "ValueSet binding for Immunization.status in Immunization."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/vaccine-status-vs"

ValueSet: immunization-vaccinecode
Id: immunization-vaccinecode
Title: "KPS Vaccine Codes"
Description: "Vaccine codes for the Kenya Patient Summary using WHO ATC J07 vaccine classification. Covers bacterial, viral, and combination vaccines used in Kenya's national immunization programme."
* ^experimental = false
* ^url = "https://fhir.dha.go.ke/ig/kenyaPS/ValueSet/immunization-vaccinecode"
* include codes from system http://www.whocc.no/atc where concept is-a #J07

ValueSet: immunization-targetdisease
Id: immunization-targetdisease
Title: "KPS Vaccine Target Diseases"
Description: "Target diseases against which vaccines are administered in the Kenya national immunization programme, coded using ICD-10."
* ^experimental = false
* ^url = "https://fhir.dha.go.ke/ig/kenyaPS/ValueSet/immunization-targetdisease"
* include codes from system http://hl7.org/fhir/sid/icd-10


ValueSet: diagnosticreport-status
Id: diagnosticreport-status
Title: "Status ValueSet"
Description: "ValueSet binding for DiagnosticReport.status in DiagnosticReport."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/diagnostic-report-status|4.0.1"

ValueSet: diagnosticreport-category
Id: diagnosticreport-category
Title: "Category ValueSet"
Description: "ValueSet binding for DiagnosticReport.category in DiagnosticReport."
* ^experimental = false
* ^url = "http://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html"

ValueSet: diagnosticreport-code
Id: diagnosticreport-code
Title: "Code ValueSet"
Description: "ValueSet binding for DiagnosticReport.code in DiagnosticReport."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/report-codes"

ValueSet: diagnosticreport-conclusioncode
Id: diagnosticreport-conclusioncode
Title: "ConclusionCode ValueSet"
Description: "ValueSet binding for DiagnosticReport.conclusionCode in DiagnosticReport."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/clinical-findings"


ValueSet: procedure-status
Id: procedure-status
Title: "Status ValueSet"
Description: "ValueSet binding for Procedure.status in Procedure."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/event-status|4.0.1"

ValueSet: procedure-code
Id: procedure-code
Title: "KPS Procedure Codes"
Description: "Clinical procedure codes for the Kenya Patient Summary using LOINC and ICD-10. Covers surgical, diagnostic, and therapeutic procedures."
* ^experimental = false
* ^url = "https://fhir.dha.go.ke/ig/kenyaPS/ValueSet/procedure-code"
* include codes from system http://loinc.org
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: procedure-reasoncode
Id: procedure-reasoncode
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for Procedure.reasonCode in Procedure."
* ^experimental = false
* ^url = "https://example.org/fhir/ValueSet/condition-code-vs"

ValueSet: procedure-bodysite
Id: procedure-bodysite
Title: "BodySite ValueSet"
Description: "ValueSet binding for Procedure.bodySite in Procedure."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/body-site"

ValueSet: procedure-outcome
Id: procedure-outcome
Title: "Outcome ValueSet"
Description: "ValueSet binding for Procedure.outcome in Procedure."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/procedure-outcome"

ValueSet: familymemberhistory-status
Id: familymemberhistory-status
Title: "Status ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.status in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/history-status"

ValueSet: familymemberhistory-dataabsentreason
Id: familymemberhistory-dataabsentreason
Title: "DataAbsentReason ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.dataAbsentReason in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/history-absent-reason"

ValueSet: familymemberhistory-relationship
Id: familymemberhistory-relationship
Title: "Relationship ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.relationship in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-FamilyMember"

ValueSet: KPSFamilyMemberHistorySex
Id: kps-family-member-history-sex
Title: "Sex ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.sex in FamilyMemberHistory."
* ^experimental = false
* include codes from system http://hl7.org/fhir/ValueSet/administrative-gender

ValueSet: familymemberhistory-reasoncode
Id: familymemberhistory-reasoncode
Title: "ReasonCode ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.reasonCode in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/clinical-findings"

ValueSet: familymemberhistory-condition-code
Id: familymemberhistory-condition-code
Title: "Condition Code ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.condition.code in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-code"

ValueSet: familymemberhistory-condition-outcome
Id: familymemberhistory-condition-outcome
Title: "Condition Outcome ValueSet"
Description: "ValueSet binding for FamilyMemberHistory.condition.outcome in FamilyMemberHistory."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-outcome"

ValueSet: clinicalimpression-status
Id: clinicalimpression-status
Title: "Status ValueSet"
Description: "ValueSet binding for ClinicalImpression.status in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/clinicalimpression-status"

ValueSet: clinicalimpression-statusreason
Id: clinicalimpression-statusreason
Title: "StatusReason ValueSet"
Description: "ValueSet binding for ClinicalImpression.statusReason in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/event-status"   

ValueSet: clinicalimpression-code
Id: clinicalimpression-code
Title: "Code ValueSet"
Description: "ValueSet binding for ClinicalImpression.code in ClinicalImpression."
* ^experimental = false
* ^url = ""   

ValueSet: clinicalimpression-investigation-code
Id: clinicalimpression-investigation-code
Title: "Investigation Code ValueSet"
Description: "ValueSet binding for ClinicalImpression.investigation.code in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/investigation-sets"

ValueSet: clinicalimpression-finding-itemcodeableconcept
Id: clinicalimpression-finding-itemcodeableconcept
Title: "Finding ItemCodeableConcept ValueSet"
Description: "ValueSet binding for ClinicalImpression.finding.itemCodeableConcept in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/condition-code"

ValueSet: clinicalimpression-prognosiscodeableconcept
Id: clinicalimpression-prognosiscodeableconcept
Title: "Prognosis CodeableConcept ValueSet"
Description: "ValueSet binding for ClinicalImpression.prognosisCodeableConcept in ClinicalImpression."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/clinicalimpression-prognosis"


ValueSet: documentreference-status
Id: documentreference-status
Title: "Status ValueSet"
Description: "ValueSet binding for DocumentReference.status in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-reference-status"

ValueSet: documentreference-docstatus
Id: documentreference-docstatus
Title: "DocStatus ValueSet"
Description: "ValueSet binding for DocumentReference.docStatus in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/composition-status"

ValueSet: documentreference-type
Id: documentreference-type
Title: "Type ValueSet"
Description: "ValueSet binding for DocumentReference.type in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/c80-doc-typecodes"

ValueSet: documentreference-category
Id: documentreference-category
Title: "Category ValueSet"
Description: "ValueSet binding for DocumentReference.category in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-classcodes"

ValueSet: documentreference-relatesto-code
Id: documentreference-relatesto-code
Title: "RelatesTo Code ValueSet"
Description: "ValueSet binding for DocumentReference.relatesTo.code in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-relationship-type"

ValueSet: documentreference-securitylabel
Id: documentreference-securitylabel
Title: "SecurityLabel ValueSet"
Description: "ValueSet binding for DocumentReference.securityLabel in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/security-labels"

ValueSet: documentreference-content-format
Id: documentreference-content-format
Title: "Content Format ValueSet"
Description: "ValueSet binding for DocumentReference.content.format in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/formatcodes"

ValueSet: documentreference-context-event
Id: documentreference-context-event
Title: "Context Event ValueSet"
Description: "ValueSet binding for DocumentReference.context.event in DocumentReference."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActCode"

ValueSet: documentreference-context-facilitytype
Id: documentreference-context-facilitytype
Title: "Facility Type ValueSet"
Description: "ValueSet binding for DocumentReference.context.facilityType in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/c80-facilitycodes"

ValueSet: documentreference-context-practicesetting
Id: documentreference-context-practicesetting
Title: "Practice Setting ValueSet"
Description: "ValueSet binding for DocumentReference.context.practiceSetting in DocumentReference."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/c80-practice-codes"


ValueSet: composition-status
Id: composition-status
Title: "Status ValueSet"
Description: "ValueSet binding for Composition.status in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/composition-status"

ValueSet: composition-type
Id: composition-type
Title: "Type ValueSet"
Description: "ValueSet binding for Composition.type in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/doc-typecodes"

ValueSet: composition-category
Id: composition-category
Title: "Category ValueSet"
Description: "ValueSet binding for Composition.category in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-classcodes"

ValueSet: composition-confidentiality
Id: composition-confidentiality
Title: "Confidentiality ValueSet"
Description: "ValueSet binding for Composition.confidentiality in Composition."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification"

ValueSet: composition-attestermode
Id: composition-attestermode
Title: "Attester Mode ValueSet"
Description: "ValueSet binding for Composition.attester.mode in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/composition-attestation-mode"

ValueSet: composition-relatesto-code
Id: composition-relatesto-code
Title: "RelatesTo Code ValueSet"
Description: "ValueSet binding for Composition.relatesTo.code in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/document-relationship-type"

ValueSet: composition-event-code
Id: composition-event-code
Title: "Event Code ValueSet"
Description: "ValueSet binding for Composition.event.code in Composition."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ActCode"

ValueSet: composition-section-code
Id: composition-section-code
Title: "Section Code ValueSet"
Description: "ValueSet binding for Composition.section.code in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/doc-section-codes"

ValueSet: composition-section-mode
Id: composition-section-mode
Title: "Section Mode ValueSet"
Description: "ValueSet binding for Composition.section.mode in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/list-mode"

ValueSet: composition-section-orderedby
Id: composition-section-orderedby
Title: "Section OrderedBy ValueSet"
Description: "ValueSet binding for Composition.section.orderedBy in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/list-order"

ValueSet: composition-section-emptyreason
Id: composition-section-emptyreason
Title: "Section EmptyReason ValueSet"
Description: "ValueSet binding for Composition.section.emptyReason in Composition."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/list-empty-reason"


ValueSet: consent-status
Id: consent-status
Title: "Consent Status ValueSet"
Description: "ValueSet binding for Consent.status in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-state-codes"

ValueSet: consent-scope
Id: consent-scope
Title: "Consent Scope ValueSet"
Description: "ValueSet binding for Consent.scope in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-scope"

ValueSet: consent-category
Id: consent-category
Title: "Consent Category ValueSet"
Description: "ValueSet binding for Consent.category in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-category"

ValueSet: consent-policyrule
Id: consent-policyrule
Title: "Consent PolicyRule ValueSet"
Description: "ValueSet binding for Consent.policyRule in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-policy"

ValueSet: consent-provision-type
Id: consent-provision-type
Title: "Consent Provision Type ValueSet"
Description: "ValueSet binding for Consent.provision.type in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-provision-type"

ValueSet: consent-provision-actor-role
Id: consent-provision-actor-role
Title: "Consent Provision Actor Role ValueSet"
Description: "ValueSet binding for Consent.provision.actor.role in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/security-role-type"

ValueSet: consent-provision-action
Id: consent-provision-action
Title: "Consent Provision Action ValueSet"
Description: "ValueSet binding for Consent.provision.action in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-action"

ValueSet: consent-provision-securitylabel
Id: consent-provision-securitylabel
Title: "Consent Provision SecurityLabel ValueSet"
Description: "ValueSet binding for Consent.provision.securityLabel in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/security-labels"

ValueSet: consent-provision-purpose
Id: consent-provision-purpose
Title: "Consent Provision Purpose ValueSet"
Description: "ValueSet binding for Consent.provision.purpose in Consent."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-PurposeOfUse"

ValueSet: consent-provision-class
Id: consent-provision-class
Title: "Consent Provision Class ValueSet"
Description: "ValueSet binding for Consent.provision.class in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-content-class"

ValueSet: consent-provision-code
Id: consent-provision-code
Title: "Consent Provision Code ValueSet"
Description: "ValueSet binding for Consent.provision.code in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-content-code"

ValueSet: consent-provision-data-meaning
Id: consent-provision-data-meaning
Title: "Consent Provision Data Meaning ValueSet"
Description: "ValueSet binding for Consent.provision.data.meaning in Consent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/consent-data-meaning"


ValueSet: specimen-status
Id: specimen-status
Title: "Specimen Status ValueSet"
Description: "ValueSet binding for Specimen.status in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/specimen-status|4.0.1"

ValueSet: specimen-type
Id: specimen-type
Title: "KPS Specimen Types"
Description: "Types of biological specimens collected for diagnostic analysis in the Kenya Patient Summary, coded using HL7 v2 Table 0487 and LOINC."
* ^experimental = false
* ^url = "https://fhir.dha.go.ke/ig/kenyaPS/ValueSet/specimen-type"
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0487
* include codes from system http://loinc.org

ValueSet: specimen-collection-method
Id: specimen-collection-method
Title: "Specimen Collection Method ValueSet"
Description: "ValueSet binding for Specimen.collection.method in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/specimen-collection-method"

ValueSet: specimen-collection-bodysite
Id: specimen-collection-bodysite
Title: "Specimen Collection BodySite ValueSet"
Description: "ValueSet binding for Specimen.collection.bodySite in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/body-site"

ValueSet: specimen-collection-fastingstatus
Id: specimen-collection-fastingstatus
Title: "Specimen Collection Fasting Status ValueSet"
Description: "ValueSet binding for Specimen.collection.fastingStatus[x] in Specimen."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v2-0916"

ValueSet: specimen-processing-procedure
Id: specimen-processing-procedure
Title: "Specimen Processing Procedure ValueSet"
Description: "ValueSet binding for Specimen.processing.procedure in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/specimen-processing-procedure"

ValueSet: specimen-container-type
Id: specimen-container-type
Title: "Specimen Container Type ValueSet"
Description: "ValueSet binding for Specimen.container.type in Specimen."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/specimen-container-type"

ValueSet: specimen-container-additive
Id: specimen-container-additive
Title: "Specimen Container Additive ValueSet"
Description: "ValueSet binding for Specimen.container.additive[x] in Specimen."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v2-0371"

ValueSet: specimen-condition
Id: specimen-condition
Title: "Specimen Condition ValueSet"
Description: "ValueSet binding for Specimen.condition in Specimen."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v2-0493"


ValueSet: claim-status
Id: claim-status
Title: "Claim Status ValueSet"
Description: "ValueSet binding for Claim.status in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: claim-type
Id: claim-type
Title: "Claim Type ValueSet"
Description: "ValueSet binding for Claim.type in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-type"

ValueSet: claim-use
Id: claim-use
Title: "Claim Use ValueSet"
Description: "ValueSet binding for Claim.use in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-use"

ValueSet: claim-priority
Id: claim-priority
Title: "Claim Priority ValueSet"
Description: "ValueSet binding for Claim.priority in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/process-priority"

ValueSet: claim-diagnosis-diagnosis
Id: claim-diagnosis-diagnosis
Title: "Claim Diagnosis ValueSet"
Description: "ValueSet binding for Claim.diagnosis.diagnosis[x] in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/icd-10"

ValueSet: claim-item-category
Id: claim-item-category
Title: "Claim Item Category ValueSet"
Description: "ValueSet binding for Claim.item.category in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/ex-benefitcategory"

ValueSet: claim-item-productorservice
Id: claim-item-productorservice
Title: "Claim Item ProductOrService ValueSet"
Description: "ValueSet binding for Claim.item.productOrService in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/service-uscls"

ValueSet: claim-item-unitprice-currency
Id: claim-item-unitprice-currency
Title: "Claim Item UnitPrice Currency ValueSet"
Description: "ValueSet binding for Claim.item.unitPrice.currency in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/currencies"

ValueSet: claim-item-net-currency
Id: claim-item-net-currency
Title: "Claim Item Net Currency ValueSet"
Description: "ValueSet binding for Claim.item.net.currency in Claim."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/currencies"


ValueSet: claimresponse-status
Id: claimresponse-status
Title: "ClaimResponse Status ValueSet"
Description: "ValueSet binding for ClaimResponse.status in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: claimresponse-type
Id: claimresponse-type
Title: "ClaimResponse Type ValueSet"
Description: "ValueSet binding for ClaimResponse.type in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-type|4.0.1"

ValueSet: claimresponse-use
Id: claimresponse-use
Title: "ClaimResponse Use ValueSet"
Description: "ValueSet binding for ClaimResponse.use in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-use|4.0.1"

ValueSet: claimresponse-outcome
Id: claimresponse-outcome
Title: "ClaimResponse Outcome ValueSet"
Description: "ValueSet binding for ClaimResponse.outcome in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/remittance-outcome"

ValueSet: claimresponse-item-adjudication-category
Id: claimresponse-item-adjudication-category
Title: "ClaimResponse Item Adjudication Category ValueSet"
Description: "ValueSet binding for ClaimResponse.item.adjudication.category in ClaimResponse."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/adjudication|4.0.1"


ValueSet: coverage-status
Id: coverage-status
Title: "Coverage Status ValueSet"
Description: "ValueSet binding for Coverage.status in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: coverage-type
Id: coverage-type
Title: "Coverage Type ValueSet"
Description: "ValueSet binding for Coverage.type in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/coverage-type"

ValueSet: coverage-relationship
Id: coverage-relationship
Title: "Coverage Relationship ValueSet"
Description: "ValueSet binding for Coverage.relationship in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/subscriber-relationship"

ValueSet: coverage-class-type
Id: coverage-class-type
Title: "Coverage Class Type ValueSet"
Description: "ValueSet binding for Coverage.class.type in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/coverage-class"

ValueSet: coverage-costtobeneficiary-type
Id: coverage-costtobeneficiary-type
Title: "Coverage CostToBeneficiary Type ValueSet"
Description: "ValueSet binding for Coverage.costToBeneficiary.type in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/coverage-copay-type"

ValueSet: coverage-costtobeneficiary-exception-type
Id: coverage-costtobeneficiary-exception-type
Title: "Coverage CostToBeneficiary Exception Type ValueSet"
Description: "ValueSet binding for Coverage.costToBeneficiary.exception.type in Coverage."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/coverage-financial-exception"


ValueSet: coverageeligibilityrequest-status
Id: coverageeligibilityrequest-status
Title: "CoverageEligibilityRequest Status ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: coverageeligibilityrequest-priority
Id: coverageeligibilityrequest-priority
Title: "CoverageEligibilityRequest Priority ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.priority."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/process-priority"

ValueSet: coverageeligibilityrequest-purpose
Id: coverageeligibilityrequest-purpose
Title: "CoverageEligibilityRequest Purpose ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.purpose."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/eligibilityrequest-purpose"

ValueSet: coverageeligibilityrequest-item-category
Id: coverageeligibilityrequest-item-category
Title: "CoverageEligibilityRequest Item Category ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.category."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/ex-benefitcategory"

ValueSet: coverageeligibilityrequest-item-productorservice
Id: coverageeligibilityrequest-item-productorservice
Title: "CoverageEligibilityRequest Item ProductOrService ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.productOrService."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/service-uscls"

ValueSet: coverageeligibilityrequest-item-modifier
Id: coverageeligibilityrequest-item-modifier
Title: "CoverageEligibilityRequest Item Modifier ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.modifier."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/claim-modifiers"

ValueSet: coverageeligibilityrequest-item-diagnosis-diagnosis
Id: coverageeligibilityrequest-item-diagnosis-diagnosis
Title: "CoverageEligibilityRequest Item Diagnosis ValueSet"
Description: "ValueSet binding for CoverageEligibilityRequest.item.diagnosis.diagnosis[x]."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/icd-10"

ValueSet: coverageeligibilityresponse-status
Id: coverageeligibilityresponse-status
Title: "CoverageEligibilityResponse Status ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/fm-status"

ValueSet: coverageeligibilityresponse-purpose
Id: coverageeligibilityresponse-purpose
Title: "CoverageEligibilityResponse Purpose ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.purpose."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/eligibilityresponse-purpose"

ValueSet: coverageeligibilityresponse-outcome
Id: coverageeligibilityresponse-outcome
Title: "CoverageEligibilityResponse Outcome ValueSet"
Description: "ValueSet binding for CoverageEligibilityResponse.outcome."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/remittance-outcome"


ValueSet: servicerequest-status
Id: servicerequest-status
Title: "ServiceRequest Status ValueSet"
Description: "ValueSet binding for ServiceRequest.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-status|5.0.0"

ValueSet: servicerequest-intent
Id: servicerequest-intent
Title: "ServiceRequest Intent ValueSet"
Description: "ValueSet binding for ServiceRequest.intent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-intent|5.0.0"

ValueSet: servicerequest-category
Id: servicerequest-category
Title: "ServiceRequest Category ValueSet"
Description: "ValueSet binding for ServiceRequest.category."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/servicerequest-category"

ValueSet: servicerequest-priority
Id: servicerequest-priority
Title: "ServiceRequest Priority ValueSet"
Description: "ValueSet binding for ServiceRequest.priority."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-priority|5.0.0"

ValueSet: servicerequest-code
Id: servicerequest-code
Title: "ServiceRequest Code ValueSet"
Description: "ValueSet binding for ServiceRequest.code."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/procedure-code"

ValueSet: servicerequest-location
Id: servicerequest-location
Title: "ServiceRequest Location ValueSet"
Description: "ValueSet binding for ServiceRequest.location."
* ^experimental = false
* ^url = "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"

ValueSet: servicerequest-reason
Id: servicerequest-reason
Title: "ServiceRequest Reason ValueSet"
Description: "ValueSet binding for ServiceRequest.reason."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/procedure-reason"


ValueSet: task-status
Id: task-status
Title: "Task Status ValueSet"
Description: "ValueSet binding for Task.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/task-status"

ValueSet: task-intent
Id: task-intent
Title: "Task Intent ValueSet"
Description: "ValueSet binding for Task.intent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/task-intent"

ValueSet: task-priority
Id: task-priority
Title: "Task Priority ValueSet"
Description: "ValueSet binding for Task.priority."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-priority"

ValueSet: task-code
Id: task-code
Title: "Task Code ValueSet"
Description: "ValueSet binding for Task.code."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/task-code"

ValueSet: task-performer-type
Id: task-performer-type
Title: "Task Performer Type ValueSet"
Description: "ValueSet binding for Task.performerType."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/performer-role"

ValueSet: careplan-status
Id: careplan-status
Title: "CarePlan Status ValueSet"
Description: "ValueSet binding for CarePlan.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/request-status"

ValueSet: careplan-intent
Id: careplan-intent
Title: "CarePlan Intent ValueSet"
Description: "ValueSet binding for CarePlan.intent."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/care-plan-intent"

ValueSet: careplan-category
Id: careplan-category
Title: "CarePlan Category ValueSet"
Description: "ValueSet binding for CarePlan.category."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/care-plan-category"

ValueSet: careplan-activity-detail-kind
Id: careplan-activity-detail-kind
Title: "CarePlan Activity Detail Kind ValueSet"
Description: "ValueSet binding for CarePlan.activity.detail.kind."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/care-plan-activity-kind"

ValueSet: careplan-activity-detail-status
Id: careplan-activity-detail-status
Title: "CarePlan Activity Detail Status ValueSet"
Description: "ValueSet binding for CarePlan.activity.detail.status."
* ^experimental = false
* ^url = "http://hl7.org/fhir/ValueSet/care-plan-activity-status"


// ============================================================
// KPS.C – Radiology Codes ValueSet (KPS.C.DE.18)
// Subset of LOINC radiology imaging codes for use in KPS
// ImagingStudy.description (imaging study type selection)
// ============================================================

ValueSet: KPSRadiologyCodesVS
Id: kps-radiology-codes-vs
Title: "Radiology Codes ValueSet"
Description: "LOINC-coded radiology imaging study types for use in the Kenya Patient Summary (KPS.C.DE.18 – Imaging Study Type)."
* ^status = #active
* ^experimental = false
* $LNC#24627-2 "CT of abdomen"
* $LNC#24628-0 "CT of abdomen W contrast IV"
* $LNC#24629-8 "CT of abdomen WO contrast"
* $LNC#24630-6 "CT of abdomen WO and W contrast IV"
* $LNC#24725-4 "CT of brain"
* $LNC#24726-2 "CT of brain W contrast IV"
* $LNC#24727-0 "CT of brain WO contrast"
* $LNC#24728-8 "CT of brain WO and W contrast IV"
* $LNC#24736-1 "CT of chest"
* $LNC#24737-9 "CT of chest W contrast IV"
* $LNC#24738-7 "CT of chest WO contrast"
* $LNC#36643-5 "Chest X-ray 2 views"
* $LNC#24606-6 "MR brain W contrast IV"
* $LNC#24607-4 "MR brain WO contrast"
* $LNC#24671-0 "Abdomen X-ray AP"
* $LNC#39607-7 "US of chest"
* $LNC#30704-1 "Ultrasound of abdomen"
* $LNC#25061-5 "Ultrasound of pelvis"
* $LNC#42148-7 "Ultrasound of obstetric"
* $LNC#39879-2 "Bone scan"
* $LNC#39905-5 "Bone scan limited"
* $LNC#24730-4 "PET of brain"
* $LNC#44137-8 "PET of heart"
* $LNC#36046-1 "Hepatobiliary scan"
* $LNC#24953-2 "CT guidance for drainage"
