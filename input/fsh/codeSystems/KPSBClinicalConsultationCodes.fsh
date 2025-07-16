Alias: KPSConditionStatusCS = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-clinical-status
Alias: KPSConditionVerificationCS = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-verification-status



CodeSystem: KPSBClinicalConsultationCodes
Id: kpsb-clinical-consultation-codes
Title: "KPS.B Clinical Consultation Data Elements"
Description: "CodeSystem representing clinical consultation data elements under the Kenya Patient Summary (KPS.B)."
* ^url = "https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-clinical-consultation-codes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true

// Allergies
* #KPS.B.DE.1 "Agent or Allergen" "Substance to which the patient has a hypersensitivity (drug, food, chemical, etc.)"
* #KPS.B.DE.2 "Allergy Description" "Narrative description of the allergy or intolerance"
* #KPS.B.DE.3 "Type of Propensity" "Describes if this is an allergy, intolerance, or unknown"
* #allergy "Allergy" "Hypersensitive reaction(s) to a substance (Type I or similar)"
* #intolerance "Intolerance" "Adverse reactions not judged to be allergy-like"
* #unknownPropensity "Unknown" "Cannot determine if allergy or intolerance"
* #KPS.B.DE.4 "Allergy Manifestation" "Description of clinical signs like angioedema or anaphylaxis"
* #KPS.B.DE.5 "Severity" "Severity of the reaction"
* #severe "Severe" "Causes severe physiological effects"
* #moderate "Moderate" "Causes moderate physiological effects"
* #mild "Mild" "Causes mild physiological effects"
* #KPS.B.DE.6 "Criticality" "Potential for life-threatening adverse reactions"
* #KPS.B.DE.7 "Onset Date" "Date when allergy was observed"
* #onsetAge "Onset Age" "Age of patient when allergy began"
* #KPS.B.DE.8 "End Date" "Date when allergy was resolved"
* #KPS.B.DE.9 "Allergy Status" "Current allergy status"
* #active "Active" "Currently at risk"
* #inactive "Inactive" "No longer at risk"
* #resolved "Resolved" "Clinically resolved by testing or re-exposure"
* #KPS.B.DE.10 "Allergy Certainty" "Certainty of allergy assertion"
* #confirmedAllergy "Confirmed" "High certainty, e.g., test confirmed"
* #unconfirmedAllergy "Unconfirmed" "Low certainty"
* #refutedAllergy "Refuted" "Disproven through clinical review"
* #enteredInError "Entered in Error" "Mistakenly entered record"

// Medical Alert
* #KPS.B.DE.11 "Healthcare Alert Description" "Narrative for any critical medical alert"
* #alertCode "Alert Code" "Code to represent the alert"
* #lowPriority "Low Priority" "Low clinical importance"
* #mediumPriority "Medium Priority" "Moderate clinical importance"
* #highPriority "High Priority" "High clinical importance"
* #alertStatusActive "Active" "Currently applicable alert"
* #alertStatusInactive "Inactive" "Alert no longer applies"
* #alertStatusError "Entered in Error" "Invalid alert entry"

// Past Problems
* #KPS.B.DE.12 "Problem Description" "Previously resolved, inactive, or closed problems"
* #KPS.B.DE.13 "Problem Onset Date" "Date when problem started"
* #KPS.B.DE.14 "Problem End Date" "Resolution date of problem"
* #KPS.B.DE.15 "Resolution Circumstances" "Narrative for how the problem was resolved"

// Medical History
* #KPS.B.DE.16 "Medical History" "Anamnesis and relevant narrative"


// Current Problems
* #KPS.B.DE.17 "Problem/Condition" "Currently relevant conditions"
* #clinicalStatusActive "Active" "Currently experiencing symptoms"
* #clinicalStatusRecurrence "Recurrence" "Reappearance of a previously resolved condition"
* #clinicalStatusRelapse "Relapse" "Return of condition after improvement"
* #confirmed "Confirmed" "Sufficient evidence"
* #unconfirmed "Unconfirmed" "Insufficient evidence"
* #differential "Differential" "Possible diagnoses"
* #conditionCategoryEncounter "Encounter Diagnosis" "Diagnosed during an encounter"
* #conditionCategoryProblem "Problem List Item" "Ongoing/chronic condition"
* #conditionSeveritySevere "Severe" "Significantly limits function"
* #conditionSeverityModerate "Moderate" "Notable impact on daily life"
* #conditionSeverityMild "Mild" "Minimal impact"
* #bodySite "Body Site" "Anatomical location"
* #KPS.B.DE.18 "Current Condition Onset Date" "Date of condition onset"
* #onsetAgeCondition "Onset Age" "Age at onset of condition"
* #KPS.B.DE.19 "Diagnosis Assertion Status" "Certainty of diagnosis"

// Social History
* #KPS.B.DE.20 "Social History Observation" "Health-relevant lifestyle observations"
* #KPS.B.DE.21 "Social History Reference Date Range" "Time span of the observation"

// Pregnancy Status
* #KPS.B.DE.22 "Pregnancy Status" "Pregnancy state of a woman"
* #KPS.B.DE.23 "Pregnant" "Confirmed pregnancy"
* #KPS.B.DE.24 "Not Pregnant" "Not currently pregnant"
* #KPS.B.DE.25 "Possible/Unknown Pregnancy" "Pregnancy unknown"
* #KPS.B.DE.26 "Observation Date" "Date of pregnancy state observation"
* #KPS.B.DE.27 "Expected Delivery Date" "Due date of the pregnancy"

// Pregnancy History
* #KPS.B.DE.28 "Previous Pregnancies Status" "Whether the woman had previous pregnancies"
* #KPS.B.DE.29 "Yes" "Previous pregnancies confirmed"
* #KPS.B.DE.30 "No" "No previous pregnancies"
* #KPS.B.DE.31 "Unknown" "Status unknown"
* #KPS.B.DE.32 "Outcome Date" "Date of pregnancy outcome"
* #KPS.B.DE.33 "Outcome" "Outcome of the pregnancy"
* #liveBirth "Live" "Live birth"
* #preterm "Pre-term" "Born before 37 weeks"
* #term "Term" "Born at 37–42 weeks"
* #postterm "Post Term" "≥42 weeks"
* #stillLiving "Still Living" "Baby is currently alive"
* #inducedAbortion "Induced Abortion" "Medically terminated"
* #spontaneousAbortion "Spontaneous Abortion" "Miscarriage"
* #ectopicPregnancy "Ectopic Pregnancy" "Pregnancy outside the uterus"
* #molarPregnancy "Molar Pregnancy" "Gestational trophoblastic disease"
* #stillbirth "Still-birth" "Loss ≥20 weeks"
* #KPS.B.DE.34 "Number of Children" "Children in the specific pregnancy"

// Travel History
* #KPS.B.DE.35 "Travel Destination" "Place visited"
* #KPS.B.DE.36 "Travel Period" "Date of entry and departure"




CodeSystem: KPSClinicalStatusCodes
Id: kpsb-clinical-status-codes
Title: "KPS.B Clinical Consultation Data Elements"
Description: "CodeSystem representing clinical status"
* ^url = "https://shr.tiberbuapps.com/fhir/CodeSystem/kpsb-clinical-status-codes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true


* #active "Active" "Currently at risk"
* #inactive "Inactive" "No longer at risk"
* #resolved "Resolved" "Clinically resolved by testing or re-exposure"


 

CodeSystem: KPSConditionStatusCS
Title: "KPS Clinical Condition Status CodeSystem"
Id: kpsb-clinical-status
* ^url = KPSConditionStatusCS
* ^status = #active
* #active "Active"
* #inactive "Inactive"
* #resolved "Resolved"

CodeSystem: KPSConditionVerificationCS
Title: "KPS Condition Verification CodeSystem"
Id: kpsb-verification-status
* ^url = KPSConditionVerificationCS
* ^status = #active
* #confirmed "Confirmed"
* #unconfirmed "Unconfirmed"
* #refuted "Refuted"
