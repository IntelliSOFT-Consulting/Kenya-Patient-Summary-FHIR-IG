Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org

 

ValueSet: MedicationVS
Id: medication-vs
Title: "Medication Value Set"
Description:  "Value Sets for Medications"
* ^experimental = false
* $SCT#372687004 "Amoxicillin (substance)"
* $SCT#387517004 "Metformin (substance)"
* $SCT#387458008 "Paracetamol (substance)"
* $SCT#387544009 "Lisinopril (substance)"
* $SCT#387406002 "Atorvastatin (substance)"

ValueSet: MedicationFormVS
Id: medication-form-vs
Title: "Medication Form Value Set"
Description:  "Value Sets for Medication Form "
* ^experimental = false
* $SCT#385055001 "Tablet"
* $SCT#428641000 "Capsule"

ValueSet: MedicationCategoryVS
Id: medication-category-vs
Title: "Medication Category Value Set"
Description:  "Value Sets for Medication Category"
* ^experimental = false
* $SCT#360271000 "Prophylaxis"
* $SCT#395077000 "Treatment intent (situation)"
* $SCT#261004008 "Diagnostic"


ValueSet: PatientContactRelationshipVS
Id: patient-contact-relationship-vs
Title: "Patient Contact Relationship ValueSet"
Description: "ValueSet for Contact Relationship using SNOMED CT codes"
* ^experimental = false
* $SCT#248153007 "Legal guardian"
* $SCT#184142008 "Next of kin"
* $SCT#405170004 "Other"

ValueSet: AllergyTypeVS
Id: allergy-type-vs
Title: "Allergy Type ValueSet"
Description: "ValueSet for Allergy Type using SNOMED CT codes"
* ^experimental = false
* $SCT#609328004 "Allergy"
* $SCT#29544009 "Intolerance"
* $SCT#261665006 "Unkown"

ValueSet: AllergySeverityVS
Id: allergy-severity-vs
Title: "Allergy Severity ValueSet"
Description: "ValueSet for Allergy Severity using SNOMED CT codes"
* ^experimental = false
* $SCT#24484000 "Severe"
* $SCT#1255665007 "Moderate"
* $SCT#255604002 "Mild"

ValueSet: AllergyStatusVS
Id: allergy-status-vs
Title: "Allergy Status ValueSet"
Description: "ValueSet for Allergy Status using SNOMED CT codes"
* ^experimental = false
* $SCT#55561003 "Active"
* $SCT#73425007 "Inactive"
* $SCT#723506003 "Resolved"

ValueSet: AllergyCertaintyVS
Id: allergy-certainty-vs
Title: "Allergy Certainty ValueSet"
Description: "ValueSet for Allergy Certainty using SNOMED CT codes"
* ^experimental = false
* $SCT#395098000 "Confirmed"
* $SCT#39509800000 "Unconfirmed"
* $SCT#723511001 "Refuted"
* $SCT#723510000 "Entered in Error"

ValueSet: AlertCodeVS
Id: alert-code-vs
Title: "Alert Code ValueSet"
Description: "ValueSet for Alert Code using SNOMED CT codes"
* ^experimental = false
* $SCT#1251527002 "Low Priority"
* $SCT#255508009 "Medium Priority"
* $SCT#394849002 "High Priority" 


ValueSet: AlertStatusVS
Id: alert-status-vs
Title: "Alert Status ValueSet"
Description: "ValueSet for Alert Status using SNOMED CT codes"
* ^experimental = false
* $SCT#55561003 "Active"
* $SCT#73425007 "Inactive"
* $SCT#723510000 "Entered in Error" 



ValueSet: ClinicalStatusVS
Id: clinical-status-vs
Title: "Clinical Status ValueSet"
Description: "ValueSet for Clinical Status using SNOMED CT codes"
* ^experimental = false
* $SCT#394774009 "Active"
* $SCT#161917009 "Recurrence"
* $SCT#263855007 "Relapse"  


ValueSet: VerificationStatusVS
Id: verification-status-vs
Title: "Verification Status ValueSet"
Description: "ValueSet for Verification Status using SNOMED CT codes"
* ^experimental = false
* $SCT#410605003 "Confirmed"
* $SCT#4106050030 "Unconfirmed"
* $SCT#263735002 "Differential"   

ValueSet: ConditionSeverityVS
Id: condition-severity-vs
Title: "Condition Severity ValueSet"
Description: "ValueSet for Condition Severity using SNOMED CT codes"
* ^experimental = false
* $SCT#24484000 "Severe"
* $SCT#1255665007 "Moderate"
* $SCT#255604002 "Mild"   

ValueSet: PregnancyStatusVS
Id: pregnancy-status-vs
Title: "Condition Severity ValueSet"
Description: "ValueSet for Condition Severity using SNOMED CT codes"
* ^experimental = false
* $SCT#77386006 "Pregnant"
* $SCT#60001007 "Not pregnant"
* $SCT#261665006 "Unknown/ Possible Pregnancy"   

 
ValueSet: YesNoUnknownVS
Id: yes-no-unknown-vs
Title: "Yes No Unknown ValueSet"
Description: "ValueSet for Yes No Unknown using SNOMED CT codes"
* ^experimental = false
* $SCT#373066001 "Yes"
* $SCT#373067005 "No"
* $SCT#261665006 "Unknown"   

ValueSet: PregnancyOutcomeVs 
Id: pregnancy-outcome-vs
Title: "PregnancyOutcome ValueSet"
Description: "ValueSet for Pregnancy Outcome using SNOMED CT codes"
* ^experimental = false
* $SCT#442311008 "Live"
* $SCT#395507008 "Pre-term"
* $SCT#87527008 "Term"   
* $SCT#90968009 "Post Term"   
* $SCT#38257001 "Still living"   
* $SCT#57797005 "Induced Abortion"   
* $SCT#17369002 "Spontaneous Abortion"   
* $SCT#79586000 "Ectopic/ Tubal Pregnancy"   
* $SCT#16216821000119102 "Molar Pregnancy "   
* $SCT#7958600000 "Still-birth"   

ValueSet: DiagnosticStatusVS
Id: diagnostic-status-vs
Title: "Diagnostic Status ValueSet"
Description: "ValueSet for Diagnostic Status using SNOMED CT codes"
* ^experimental = false
* $SCT#2790120 "Registered"
* $SCT#255609007 "Partial"
* $SCT#148006 "Preliminary"
* $SCT#445665009 "Final"
* $SCT#33714007 "Ammended/Corrected"
* $SCT#89925002 "Cancelled/Aborted"
* $SCT#723510000 "Entered in Error" 

ValueSet: SpecimenAvailabilityStatusVS
Id: specimen-availability-status-vs
Title: "Specimen Availability Status ValueSet"
Description: "ValueSet for Specimen Availability Status using SNOMED CT codes"
* ^experimental = false
* $SCT#27908888120 "Available"
* $SCT#103329007 "Unavailable"
* $SCT#255370002 "Unsatisfactory"


ValueSet: MedicationStatusVS
Id: medication-status-status-vs
Title: "Medication Status ValueSet"
Description: "ValueSet for Medication Status using SNOMED CT codes"
* ^experimental = false 
* $SCT#55561003 "Active"
* $SCT#73425007 "Inactive"
* $SCT#723510000 "Entered in Error"



ValueSet: VaccineStatusVS
Id: vaccine-status-vs
Title: "Vaccine Status ValueSet"
Description: "ValueSet for Vaccine Status using SNOMED CT codes"
* ^experimental = false
* $SCT#255594003 "Completed"
* $SCT#395101001 "On going"
* $SCT#385660001 "Not Done"
* $SCT#723510000 "Entered in Error"

ValueSet: KPSSubstanceCodeVS
Id: substance-code-vs
Title: "Substance Code ValueSet"
Description: "ValueSet for Substance Code using SNOMED CT codes"
* ^experimental = false
* $SCT#105590001 "Substance"
* $SCT#373873005 "Pharmaceutical / biologic product"

ValueSet: UCUMUnitsVS
Id: ucum-units-vs
Title: "UCUM Units for Medication Strength"
Description: "A preferred set of UCUM units for representing medication strengths and dosages."
* ^experimental = false

* $UCUM#mg "milligram"
* $UCUM#g "gram"
* $UCUM#mcg "microgram"
* $UCUM#mL "millilitre"
* $UCUM#L "litre"
* $UCUM#mmol "millimole"
* $UCUM#mol "mole"
* $UCUM#U "unit"
* $UCUM#IU "international unit"

ValueSet: ProcedureCodeVS
Id: procedure-code-vs
Title: "Procedure Code ValueSet"
Description: "A preferred set of Procedure Code"
* ^experimental = false

* $SCT#80146002 "Appendectomy"
* $SCT#116859006 "Blood transfusion"
* $SCT#386637004 "Obstetric procedure" 
* $SCT#333453004 "Wound dressing" 



ValueSet: ConditionCodeVS
Id: condition-code-vs
Title: "Condition Code ValueSet"
Description: "A preferred set of Condition Code"
* ^experimental = false

* $SCT#44054006 "Diabetes mellitus type 2"
* $SCT#38341003 "Hypertension" 

ValueSet: ProcedureTypeVS
Id: procedure-type-vs
Title: "Procedure Types ValueSet"
Description: "A preferred set of Procedure Types"
* ^experimental = false

* $SCT#177141003 "Elective cesarean section"
* $SCT#373110003 "Emergency procedure"
* $SCT#103391001 "Urgent procedure"


ValueSet: SpecimenTypeVS
Id: specimen-type-vs
Title: "Specimen Types ValueSet"
Description: "A preferred set of Specimen Types"
* ^experimental = false

* $SCT#119297000 "Blood specimen"
* $SCT#122575003 "Urine specimen"


ValueSet: SpecimenPriorityVS
Id: specimen-priority-vs
Title: "Specimen Priority ValueSet"
Description: "A preferred set of Specimen Priority"
* ^experimental = false

* $SCT#25876001 "Emergency"
* $SCT#373113001 "Routine"
* $SCT#103390000 "Elective"



ValueSet: SpecimenCollectionContextVS
Id: specimen-ollection-vs
Title: "Specimen Collection ValueSet"
Description: "A preferred set of Specimen Collection"
* ^experimental = false

* $SCT#261004008 "Diagnostic procedure"
* $SCT#129265001 "Evaluation procedure"
* $SCT#360156006 "Screening procedure"
* $SCT#308364004 "Research procedure" 
* $SCT#262202000 "Therapeutic procedure" 

ValueSet: PatientTitleVS
Title:        "Patient Title"
Description:  "Patient title"
* ^experimental = false
* ^name = "PT_TITLE"

* KNHTS.PAT.TITLE#mr
* KNHTS.PAT.TITLE#mrs
* KNHTS.PAT.TITLE#miss
* KNHTS.PAT.TITLE#ms


 