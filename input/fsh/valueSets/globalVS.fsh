Alias: LOINC = http://loinc.org
Alias: UCUM = http://unitsofmeasure.org

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


ValueSet: KPSVitalSignsCodes
Id: kps-vital-signs-codes
Title: "KPS Vital Signs Codes"
Description: "Standard codes for recording vital signs in the Kenya Patient Summary."
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


ValueSet: KPSInvestigationLab
Id: kps-investigation-lab
Title: "KPS Investigation Lab"
Description: "LOINC codes for common laboratory investigations used in the Kenya Patient Summary."
* LOINC#28519 "T. Pallidum IgM serum"
* LOINC#78275 "T spot TB test"
* LOINC#57257 "T.Pallidum Haemagglutination Test (TPHA)-CSF"
* LOINC#104562 "Tetanus toxoid IgG antibody"
* LOINC#14270 "Toxoplasmosis PCR"
* LOINC#38539 "Urine microscopy for trichomonas"
* LOINC#54843 "Serum Amyloid A"
* LOINC#60052 "JAK2 V617f mutation"
* LOINC#58779 "BCR/ABL fusion gene"
* LOINC#62487 "Urine ethanol concentration"
* LOINC#43982 "Urine morphine test"
* LOINC#103139 "Chromogranin A"
* LOINC#34777 "Blood metanephrines test"
* LOINC#89436 "Ki-67 nuclear Ag test"
* LOINC#47034 "Serum valproate test"
* LOINC#41621 "Blood tobramycin test"
* LOINC#30098 "Testosterone index"
* LOINC#54376 "Heinz bodies"
* LOINC#35925 "Soluble transferrin receptor"
* LOINC#27561 "Inherited thrombophilia screen"
* LOINC#26803 "Chloride saturation in sweat"
* LOINC#60374 "Cystic fibrosis extended screen"
* LOINC#24519 "Retinol binding protein"
* LOINC#48641 "Herpes 1 IgG antibody test in CSF"
* LOINC#23851 "Fluorescent treponemal IgM antibody test in serum"
* LOINC#103313 "Fluorescent treponemal Ab [FTA] test in CSF"
* LOINC#30283 "EBV IgG+IgM"
* LOINC#58147 "E. histolytica Ab test"
* LOINC#82518 "Taenia solium larva IgG Ab detection in serum"
* LOINC#65180 "Ziehl-Neelsen stain for bacterial Identification in cerebral spinal fluid"
* LOINC#26506 "Streptococcus agalactiae Ag detection in cerebral spinal fluid"
* LOINC#26507 "Streptococcus pneumoniae Ag detection in cerebral spinal fluid"
* LOINC#30318 "Protein electrophoresis in cerebral spinal fluid"
* LOINC#35182 "Cell differential count cerebral spinal fluid"
* LOINC#29995 "Neisseria meningitidis serogroup B Ag detection in Cerebral spinal fluid"
* LOINC#29987 "Haemophilus influenzae B Ag detection in Cerebral spinal fluid"
* LOINC#37778 "Bordetella pertussis Ab detection in Serum"
* LOINC#24071 "Bacteria identification in blood by anaerobe culture"
* LOINC#24065 "Bacteria identification in blood by aerobe culture"
* LOINC#67093 "Bacteria identification in ear by aerobe culture"
* LOINC#46711 "Estrogen receptor Ag detection in tissue by immune stain"
* LOINC#89425 "HER2 gene detection by IHC stain"
* LOINC#78889 "Breast HER2 gene test by FISH"
* LOINC#69033 "Parietal cell Ab detection in gastric fluid"
* LOINC#35212 "Enterovirus test by PCR"
* LOINC#27188 "Cryptosporidium sp Ag detection in stool"
* LOINC#30340 "Platelet aggregation adrenaline induced"
* LOINC#60112 "Platelet aggregation ADP induced"
* LOINC#52953 "Osmotic fragility test"
* LOINC#43817 "Methamphetamine detection in urine"
* LOINC#73407 "Lactose tolerance test"
* LOINC#23620 "Albumin quantification in CSF"
* LOINC#50711 "Complement C1q quantification in serum"
* LOINC#21278 "Cold agglutinin titer in Serum or Plasma"
* LOINC#47469 "Calculated anion gap"
* LOINC#38417 "Amino acids quantification in CSF"
* LOINC#41055 "Amino acids test"
* LOINC#32666 "Urine Organic Acids"
* LOINC#30098 "Androgen free Index"
* LOINC#35670 "Fibrinogen degradation products quantification"
* LOINC#93753 "Ristocetin Cofactor Inhibitor"
* LOINC#29938 "Dengue IgM Antibody"
* LOINC#64207 "Chikungunya virus IgM A"
* LOINC#56332 "Aspergillus sp DNA"
* LOINC#55867 "Pneumocystis jirovecii DNA test"
* LOINC#13112 "Direct antiglobulin test"
* LOINC#37071 "Neuronal antibody quantification"
* LOINC#102472 "Hemoglobin F Quantification"
* LOINC#99210 "Thrombophilia screening"
* LOINC#27558 "Epidermal growth factor receptor (EGFR) gene mutation analysis"
* LOINC#20786 "Reticulocytes count"
* LOINC#98498 "Factor V Leiden genotyping"
* LOINC#20122 "Bone marrow aspirate observation"
* LOINC#35219 "Colposcopy Study"
* LOINC#53247 "Antibody titration test"
* LOINC#29514 "ELISA for African Trypanosomiasis"
