Alias: LOINC = http://loinc.org
Alias: UCUM = http://unitsofmeasure.org

ValueSet: GenderVS
Id: kps-patient-gender-vs
Title: "KPS - Administrative Gender"
Description: "Custom ValueSet for Administrative Gender"
* ^url = "http://example.com/fhir/ValueSet/kps-patient-gender-vs"
* include codes from system http://hl7.org/fhir/ValueSet/administrative-gender


ValueSet: KPSOrganizationIdentifierTypeVS
Id: kps-organization-identifier-type-vs
Title: "Organization Identifier Type"
Description: "Custom ValueSet for organization identifier types."
* ^url = "http://example.com/fhir/ValueSet/kps-organization-identifier-type"
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0203

ValueSet: KPSOrganizationTypeVS
Id: kps-organization-type-vs
Title: "Organization Type"
Description: "Custom ValueSet for organization types."
* ^url = "http://example.com/fhir/ValueSet/organization-type"
* include codes from system http://terminology.hl7.org/CodeSystem/organization-type

 

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


ValueSet: KPSImagingXRay
Id: kps-imaging-xray
Title: "KPS X-Ray Imaging Procedures"
Description: "Custom list of X-Ray imaging procedures mapped to local or LOINC-aligned codes for use under the Kenya Pathology Standard (KPS)."
 

* LOINC#32047 "X-Ray Wrist Bilateral"
* LOINC#30578 "X-Ray Wrist Joint"
* LOINC#32048 "X-Ray Wrist Left"
* LOINC#32049 "X-Ray Wrist Right"
* LOINC#30578 "X-Ray Wrist With Contrast"
* LOINC#30578 "X-Ray Wrist(Ap View)"
* LOINC#43958 "X-Ray Wrist(Lat View)"
* LOINC#16060 "X-Ray Wrists Bilateral(Ap/Lat View)"
* LOINC#103399 "X-Ray Wrists Bilateral(Lat View)"
* LOINC#43951 "X Ray Wrist Joint"
* LOINC#43714 "XR Foot - Right Lateral"
* LOINC#72932 "X-Ray Trunk Vein"
* LOINC#30850 "X-Ray Ulna"
* LOINC#49619 "X-Ray Unspecified"
* LOINC#30656 "X-Ray Upper Extremity Infant"
* LOINC#103330 "X-Ray Upper Gastrointestinal Tract"
* LOINC#103330 "X-Ray Upper Gastrointestinal Tract With Kub"
* LOINC#103330 "X-Ray Upper Gastrointestinal Tract With Small Intestines"
* LOINC#103330 "X-Ray Upper Gastrointestinal Tract Without Kub"
* LOINC#30964 "X-Ray Urethra/Bladder"
* LOINC#30964 "X-Ray Urethra/Bladder(Retrograde Cystourethrography)"
* LOINC#49701 "X-Ray Urethra/Bladder(Voiding Cystourethrography)"
* LOINC#45230 "X-Ray Vasogram"
* LOINC#45135 "X-Ray Venogram Bilateral"
* LOINC#98832 "X-Ray Venogram Unilateral"
* LOINC#98832- "X-Ray Venogram Unilateral Left"
* LOINC#90650 "X-Ray Whole Spine With Contrast"
* LOINC#15887 "X-Ray Whole Spine(Ap/Lat View)"
* LOINC#15887- "X-Ray Whole Spine(Rad)"
* LOINC#43952 "X-Ray Wrist 2 Views(Rad)"
* LOINC#43953 "X-Ray Wrist 3 Views"
* LOINC#36497 "X-Ray Wrist(Ap/Lat View)"
* LOINC#43954 "X-Ray Wrist(Ap/Lat/Obliques)"
* LOINC#44133 "X-Ray Wrist(Ap/Lat/Scaphoid View)"
* LOINC#43951- "X Ray Wrist"
* LOINC#36497- "X Ray Wrist Ap / Lat"
* LOINC#36455 "X-Ray Thoracic Spine Oblique View"
* LOINC#43931 "X-Ray Thoracic Spine 2 Views(Rad)"
* LOINC#43932 "X-Ray Thoracic Spine 3 Views(Rad)"
* LOINC#36448 "X-Ray Thoracic Spine(Ap View)"
* LOINC#44145 "X-Ray Thoracic Spine(Ap/Lat View)"
* LOINC#43934 "X-Ray Thoracic Spine(Ap/Lat/Oblique View)"
* LOINC#30929 "X-Ray Thoracodorsal Spine"
* LOINC#48812 "X-Ray Thoracolumbar Spine"
* LOINC#36413 "X-Ray Thoracolumbar Spine Standing (Scoliosis)"
* LOINC#44145 "X-Ray Thoracolumbar Spine(Ap/Lat View)"
* LOINC#54805 "X-Ray Throat And Fluoroscopy"
* LOINC#30955 "X-Ray Tibia/Fibula"
* LOINC#32040 "X-Ray Tibia/Fibula Bilateral"
* LOINC#43922 "X-Ray Tibia/Fibula(Ap/Lat View)"
* LOINC#30956 "X-Ray Toes"
* LOINC#43927 "X-Ray Toes 2 Views"
* LOINC#45156 "X-Ray Toes(Ap/Oblique View)"
* LOINC#30580 "X-Ray Transcatheter Therapy Embolization"
* LOINC#30580 "X-Ray Transcatheter Therapy Infusion"
* LOINC#43327 "X-Ray Trunk"
* LOINC#36544 "X-Ray Trunk Lymph Vessel"
* LOINC#36449 "X Ray Thoracic Spine Ap & Lateral"
* LOINC#43919 "X Ray Tibia / Fibula"
* LOINC#30955 "X Ray Tibia / Fibula (Oh )"
* LOINC#30945 "X Ray Tmj (Temporo Mandibular Joint)"
* LOINC#43907 "X-Ray Sternum (PA/Lat/Oblique View)"
* LOINC#43082 "X-Ray Submental Vertical"
* LOINC#36513 "X-Ray Tear Duct"
* LOINC#100442 "X-Ray Teeth"
* LOINC#100442 "X-Ray Teeth Full Mouth"
* LOINC#100442 "X-Ray Teeth Less Than Full Mouth"
* LOINC#30945 "X-Ray Temporomandibular Joint"
* LOINC#30945 "X-Ray Temporomandibular Joint 4 Views"
* LOINC#43374 "X-Ray Temporomandibular Joint Bilateral(Lat View)"
* LOINC#36596 "X-Ray Temporomandibular Joint Left"
* LOINC#43557 "X-Ray Temporomandibular Joint Open And Closed Mouth Bilateral"
* LOINC#55045 "X-Ray Temporomandibular Joint Open And Closed Mouth Unilateral"
* LOINC#36598 "X-Ray Temporomandibular Joint Right"
* LOINC#30945 "X-Ray Temporomandibular Joint(Ap View)"
* LOINC#30945 "X-Ray Temporomandibular Joint(Lat View)"
* LOINC#30674 "X-Ray Thigh"
* LOINC#31995 "X-Ray Thigh Bilateral"
* LOINC#42563 "X-Ray Thigh(Ap View)"
* LOINC#42626 "X-Ray Thigh(Lat View)"
* LOINC#49937 "X-Ray Thoracic Inlet 2 Views"
* LOINC#49937 "X-Ray Thoracic Inlet 3 Views"
* LOINC#49937 "X-Ray Thoracic Inlet(Ap/Lat View)"
* LOINC#30929 "X-Ray Thoracic Spine"
* LOINC#42584 "X Ray Thoracic Inlet"
* LOINC#30929 "X Ray Thoracic Spine"
* LOINC#34176 "X-Ray Skull (Omv)"
* LOINC#43266 "X-Ray Skull Vein"
* LOINC#73143 "X-Ray Skull(Ap View)"
* LOINC#30877 "X-Ray Skull(Ap/Lat View)"
* LOINC#30877- "X-Ray Skull(Ap/Lat View) Left"
* LOINC#34176_ "X-Ray Skull(Ap/Lat/Townes View)"
* LOINC#30878 "X-Ray Skull(Lat View)"
* LOINC#45586 "X-Ray Skull(Pa/Lat View)"
* LOINC#34176- "X-Ray Skull(Smv/Townes/Conned View)"
* LOINC#34176-_ "X-Ray Skull/ Pns/ Mandible"
* LOINC#43327 "X-Ray Small Bowel"
* LOINC#43327 "X-Ray Small Intestine"
* LOINC#43432 "X-Ray Soft Tissue Neck"
* LOINC#30800 "X-Ray Soft Tissue Neck(Lat View)"
* LOINC#90650 "X-Ray Spinal Angiogram"
* LOINC#30882 "X-Ray Spine Artery"
* LOINC#30886 "X-Ray Spine Scoliosis Study(Supine/Erect View)"
* LOINC#30936 "X-Ray Spleen/Liver Vein(Splenoportography)"
* LOINC#31007 "X-Ray Stereotactic / Image Guided Biopsy"
* LOINC#102337 "X-Ray Sternoclavicular Joint Bilateral PA"
* LOINC#43903 "X-Ray Sternoclavicular Joint AP"
* LOINC#30939 "X-Ray Sternum"
* LOINC#43906 "X-Ray Sternum 2 Views"
* LOINC#43904 "X Ray Sterno Clavicular Joints 3 views"
* LOINC#30939 "X Ray Sternum"
* LOINC#32035 "X-Ray Shoulder Joint Right"
* LOINC#32033 "X-Ray Shoulder Joints Bilateral"
* LOINC#42618 "X-Ray Shoulder Joints Bilateral(Ap View)"
* LOINC#42704 "X-Ray Shoulder Joints Bilateral(Ap/Lat View)"
* LOINC#30859 "X-Ray Shoulder/Scapula"
* LOINC#43583 "X-Ray Sinogram(Rad)"
* LOINC#43583 "X-Ray Sinogram/Fistulogram"
* LOINC#30873 "X-Ray Sinuses"
* LOINC#43882 "X-Ray Sinuses 3 Views"
* LOINC#43886 "X-Ray Sinuses Lat View"
* LOINC#43892 "X-Ray Sinuses(Om View)"
* LOINC#44305 "X-Ray Skeletal Survey"
* LOINC#44305 "X-Ray Skeletal Survey Under 5 Years"
* LOINC#34176__ "X-Ray Skull"
* LOINC#43895 "X-Ray Skull 2 Views"
* LOINC#30875 "X-Ray Skull 3 Views"
* LOINC#30875- "X-Ray Skull 3 Views(Rad)"
* LOINC#43896 "X-Ray Skull 4 Views"
* LOINC#34176-- "X-Ray Skull(Ap/Lat/Townes/Conned View)"
* LOINC#34176__- "X-Ray Skull."
* LOINC#30874 "X Ray Skull"
* LOINC#30877_ "X Ray Skull (2 Views ) Ap / Lat"
* LOINC#43895_ "X Ray Skull 2 Views (Oh)"
* LOINC#30875_ "X Ray Skull 3 Views"
* LOINC#30877-_ "X Ray Skull Ap & Lateral"
* LOINC#44137 "X-Ray Scaphoid Right"
* LOINC#30859- "X-Ray Scapula"
* LOINC#32031 "X-Ray Scapula Left"


ValueSet: KPSServiceTypeVS
Id: kps-service-type-vs
Title: "KPS Local Service Type"
Description: "A list of locally defined healthcare service types for Kenyan health facilities."
* include codes from system KPSServiceTypeCS


ValueSet: KPSServiceAccessPointVS
Id: kps-service-access-point
Title: "KPS Service Access Point"
Description: "A list of service access points for classifying patient entry points in facilities"
* include codes from system KPSServiceAccessPointCS


ValueSet: KPSFundChoicesVS
Id: kps-fund-choices
Title: "KPS Fund Choices"
Description: "Locally defined list of patient fund options for health service payments"
* include codes from system KPSFundChoicesCS


ValueSet: KPSSchemesVS
Id: kps-schemes
Title: "KPS Schemes"
Description: "A list of schemes available to patients"
* include codes from system KPSSchemesCS

ValueSet: KPSPaymentMechanism
Id: kps-payment-mechanism
Title: "KPS Payment Mechanism"
Description: "A list of allowed healthcare payment models"
* include codes from system PaymentMechanism

ValueSet: KPSUsageFrequency
Id: kps-usage-frequency
Title: "KPS Usage Frequency"
Description: "A list of allowable frequency options for health service usage"
* include codes from system UsageFrequency

ValueSet: KPSAnnualQuantityType
Id: kps-annual-quantity-type
Title: "KPS Annual Quantity Type"
Description: "Types of units used to express annual health service quantities"
* include codes from system AnnualQuantityType


ValueSet: KPSAuthType
Id: kps-auth-type
Title: "KPS Authorization Type"
Description: "List of accepted authentication or authorization types"
* include codes from system AuthType

ValueSet: KPSAuthorizationFailureReason
Id: kps-authorization-failure-reason
Title: "KPS Authorization Failure Reason"
Description: "Allowed values for reasons why an authorization request may fail"
* include codes from system AuthorizationFailureReason

ValueSet: KPSAuthorizationStatus
Id: kps-authorization-status
Title: "KPS Authorization Status"
Description: "Status options for an authorization process"
* include codes from system AuthorizationStatus


ValueSet: KPSClaimsDepartments
Id: kps-claims-departments
Title: "KPS Claims Departments"
Description: "Departments used for classifying healthcare claims"
* include codes from system ClaimsDepartments

ValueSet: KPSCopayType
Id: kps-copay-type
Title: "KPS Copay Types"
Description: "Allowed copay types for patient contribution"
* include codes from system CopayType


ValueSet: KPSRemittanceChoice
Id: kps-remittance-choice
Title: "KPS Remittance Choice"
Description: "Options for how remittances are made"
* include codes from system RemittanceChoice

ValueSet: KPSRemittanceStatus
Id: kps-remittance-status
Title: "KPS Remittance Status"
Description: "Stages of remittance status tracking"
* include codes from system RemittanceStatus


ValueSet: KPSAdjustmentType
Id: kps-adjustment-type
Title: "KPS Adjustment Type"
Description: "Types of financial adjustments applied to claims or bills"
* include codes from system AdjustmentType



ValueSet: KPSDiagnosisKind
Id: kps-diagnosis-kind
Title: "KPS Diagnosis Kind"
Description: "Diagnosis classification level based on ICD structure"
* include codes from system DiagnosisKind

ValueSet: KPSFlagType
Id: kps-flag-type
Title: "KPS Flag Type"
Description: "Types of flags applied to claims or processes"
* include codes from system FlagType


ValueSet: KPSNonEDIClaimStatus
Id: kps-non-edi-claim-status
Title: "KPS Non-EDI Claim Status"
Description: "Workflow status values for non-electronic claims"
* include codes from system NonEDIClaimStatus


ValueSet: KPSBulkRemittanceStatus
Id: kps-bulk-remittance-status
Title: "KPS Bulk Remittance Status"
Description: "Status of bulk remittance batches"
* include codes from system BulkRemittanceStatus


ValueSet: KPSPaymentNoticeStatus
Id: kps-payment-notice-status
Title: "KPS PaymentNoticeStatus"
Description: "Value Sets for PaymentNotice Status"
* include codes from system http://hl7.org/fhir/fm-status

ValueSet: KPSPaymentNoticePaymentStatus
Id: kps-payment-notice-payment-status
Title: "KPS PaymentNoticePaymentStatus"
Description: "Value Sets for PaymentNotice Patment Status"
* include codes from system http://terminology.hl7.org/CodeSystem/paymentstatus

ValueSet: KPSEpisodeOfCareStatus
Id: ksp-episode-of-care-status
Title: "KPS EpisodeOfCareStatus"
Description: "Value Sets for EpisodeOfCare Status"
* include codes from system http://hl7.org/fhir/episode-of-care-status

ValueSet: KPSEpisodeOfCareType
Id: kps-episode-of-care-type
Title: "KPS EpisodeOfCareType"
Description: "Value Sets for EpisodeOfCare Type"
* include codes from system http://terminology.hl7.org/CodeSystem/episodeofcare-type

ValueSet: KPSEpisodeOfCareDiagnosisRole
Id: kpsepisode-of-care-diagnosis-role
Title: "KPS EpisodeOfCareDiagnosisRole"
Description: "Value Sets for EpisodeOfCare Diagnosis Role"
* include codes from system http://terminology.hl7.org/CodeSystem/diagnosis-role


ValueSet: KPSSubstanceStatus
Id: kps-substance-status
Title: "KPSSubstanceStatus"
Description: "Value Sets for Substance Status"
* include codes from system http://hl7.org/fhir/substance-status

ValueSet: KPSSubstanceCode
Id: kps-substance-code
Title: "KPSSubstance Code"
Description: "ValueSet for SNOMED CT Substance concepts (descendants of 105590001 |Substance|)."
* include codes from system http://snomed.info/sct where concept is-a #105590001



