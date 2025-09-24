// -------------------------------
// ORGANIZATION
// -------------------------------

ValueSet: KPSOrganizationIdentifierTypeVS
Id: kps-organization-identifier-type-vs
Title: "Organization Identifier Type"
Description: "Custom ValueSet for organization identifier types."
* ^url = "http://example.com/fhir/ValueSet/organization-identifier-type"
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: KPSOrganizationTypeVS
Id: kps-organization-type-vs
Title: "Organization Type"
Description: "Custom ValueSet for organization types."
* ^url = "http://example.com/fhir/ValueSet/organization-type"
* include codes from system http://terminology.hl7.org/CodeSystem/organization-type

// -------------------------------
// CONDITION
// -------------------------------

ValueSet: KPSConditionSeverityVS
Id: kps-condition-severity-vs
Title: "Condition Severity"
Description: "ValueSet for condition severity used in the KPS profile."
* ^url = "https://example.com/fhir/ValueSet/condition-severity-vs"
* include codes from system http://snomed.info/sct

ValueSet: KPSConditionCodeVS
Id: kps-condition-code-vs
Title: "Condition Code"
Description: "Clinical condition codes."
* ^url = "https://example.com/fhir/ValueSet/condition-code-vs"
* include codes from system http://snomed.info/sct

ValueSet: KPSBodySiteVS
Id: kps-body-site-vs
Title: "Body Site"
Description: "Sites on the body associated with clinical conditions."
* ^url = "https://example.com/fhir/ValueSet/body-site-vs"
* include codes from system http://snomed.info/sct

// -------------------------------
// DIAGNOSTIC REPORT
// -------------------------------

ValueSet: KPSDiagnosticServiceSectionsVS
Id: kps-diagnostic-service-sections
Title: "Diagnostic Service Categories"
Description: "Categories of diagnostic services."
* ^url = "http://terminology.hl7.org/ValueSet/diagnostic-service-sections"
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0074

ValueSet: KPSClinicalFindingsVS
Id: kps-clinical-findings
Title: "Clinical Findings"
Description: "Clinical findings in diagnostic report conclusions."
* ^url = "http://hl7.org/fhir/ValueSet/clinical-findings"
* include codes from system http://snomed.info/sct

// -------------------------------
// ENCOUNTER
// -------------------------------

ValueSet: KPSServiceTypeVS
Id: kps-service-type-vs
Title: "Service Type"
Description: "Custom value set for health service types (local terminology)."
* ^url = "https://example.com/fhir/ValueSet/service-type-vs"
* include codes from system http://example.org/fhir/CodeSystem/service-type

// -------------------------------
// MEDICATION
// -------------------------------

ValueSet: KPSMedicationVS
Id: kps-medication-vs
Title: "Medication ValueSet"
Description: "List of permitted medications in national formulary."
* ^url = "https://example.org/fhir/ValueSet/medication-vs"
* include codes from system http://www.whocc.no/atc

ValueSet: KPSMedicationFormVS
Id: kps-medication-form-vs
Title: "Medication Form"
Description: "Types of medication forms."
* ^url = "https://example.org/fhir/ValueSet/medication-form-vs"
* include codes from system http://example.org/fhir/CodeSystem/medication-form

ValueSet: KPSUCUMUnitsVS
Id: kps-ucum-units-vs
Title: "UCUM Units"
Description: "UCUM units for medication quantities."
* ^url = "https://example.org/fhir/ValueSet/ucum-units-vs"
* include codes from system http://unitsofmeasure.org

// -------------------------------
// MEDICATION REQUEST
// -------------------------------

ValueSet: KPSMedicationRequestCategoryVS
Id: kps-medicationrequest-category
Title: "Medication Request Category"
Description: "Local medication request categories."
* ^url = "http://hl7.org/fhir/ValueSet/medicationrequest-category"
* include codes from system http://example.org/fhir/CodeSystem/medicationrequest-category

ValueSet: KPSGenericProductsVS
Id: kps-generic-products
Title: "Generic Products"
Description: "List of generic drugs."
* ^url = "https://example.com/fhir/ValueSet/generic-products"
* include codes from system http://www.whocc.no/atc

ValueSet: KPSRouteOfAdministrationVS
Id: kps-route-of-administration
Title: "Route of Administration"
Description: "Routes for drug administration."
* ^url = "https://example.com/fhir/ValueSet/route-of-administration"
* include codes from system http://snomed.info/sct

ValueSet: KPSUnitOfMeasureVS
Id: kps-unit-of-measure
Title: "Unit of Measure"
Description: "Units for doses and dispensing."
* ^url = "https://example.com/fhir/ValueSet/unit-of-measure"
* include codes from system http://unitsofmeasure.org

// -------------------------------
// ALLERGY INTOLERANCE
// -------------------------------

ValueSet: KPSAllergyStatusVS
Id: kps-allergy-status-vs
Title: "Allergy Clinical Status"
* ^url = "https://example.org/fhir/ValueSet/allergy-status-vs"
* include codes from system http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical

ValueSet: KPSAllergyCertaintyVS
Id: kps-allergy-certainty-vs
Title: "Allergy Certainty"
* ^url = "https://example.org/fhir/ValueSet/allergy-certainty-vs"
* include codes from system http://example.org/fhir/CodeSystem/allergy-certainty

ValueSet: KPSAllergyTypeVS
Id: kps-allergy-type-vs
Title: "Allergy Type"
* ^url = "https://example.org/fhir/ValueSet/allergy-type-vs"
* include codes from system http://hl7.org/fhir/allergy-intolerance-type

ValueSet: KPSAllergySeverityVS
Id: kps-allergy-severity-vs
Title: "Allergy Severity"
* ^url = "https://example.org/fhir/ValueSet/allergy-severity-vs"
* include codes from system http://hl7.org/fhir/reaction-event-severity