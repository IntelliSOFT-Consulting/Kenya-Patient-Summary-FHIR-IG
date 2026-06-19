Logical: ClinicalConsultationModel
Title: "KPS.B Clinical Consultation"
Description: "Logical model for documenting clinical consultation data under the Kenya Patient Summary (KPS.B) standard."

// Allergies and Intolerances
* allergy 0..* BackboneElement "Documented allergies or intolerances"
  * allergen 1..1 string "Substance or agent triggering the reaction"
  * allergen from AllergyIntoleranceReactionSubstanceVS (required)
    * ^code = $KPSDataElements#KPS.B.DE.1
  * propensityType 1..1 code "Allergy, intolerance, or unknown"
  * propensityType from KPSAllergyTypeVS (required)
    * ^code = $KPSDataElements#KPS.B.DE.25
  * description 0..1 string "Text description of the allergy or intolerance"
    * ^code = $KPSDataElements#KPS.B.DE.29
  * severity 0..1 code "Severity of the clinical manifestation of the allergic reaction."
  * severity from KPSAllergySeverityVS (required)
    * ^code = $KPSDataElements#KPS.B.DE.66
  * criticality 0..1 code "Risk of future life-threatening adverse reactions"
    * ^code = $KPSDataElements#KPS.B.DE.70
  * onsetDate 0..1 date "Date the allergy was observed"
    * ^code = $KPSDataElements#KPS.B.DE.71
  * onsetAge 0..1 Age "Age at onset of the allergy"
    * ^code = $KPSDataElements#KPS.B.DE.72
  * endDate 0..1 date "Date of resolution of the allergy"
    * ^code = $KPSDataElements#KPS.B.DE.73
  * allergyStatus 1..1 code "Current status of the allergy"
  * allergyStatus from KPSAllergyStatusVS (required)
    * ^code = $KPSDataElements#KPS.B.DE.74
  * allergyCertainty 0..1 code "Certainty about the reaction's presence"
    * ^code = $KPSDataElements#KPS.B.DE.78

// Medical Alert
* medicalAlert 0..* BackboneElement "Medical alert information"
  * description 1..1 string "Description of the alert"
    * ^code = $KPSDataElements#KPS.B.DE.83
  * alertCode 0..1 code "Priority level"
    * ^code = $KPSDataElements#KPS.B.DE.84
  * status 0..1 code "Alert status (active/inactive/etc)"
    * ^code = $KPSDataElements#KPS.B.DE.88

// Resolved Problems
* resolvedProblem 0..* BackboneElement "Past resolved/closed/inactive problems"
  * description 1..1 string "Problem or diagnosis"
    * ^code = $KPSDataElements#KPS.B.DE.93
  * onsetDate 0..1 date "Date of problem onset"
    * ^code = $KPSDataElements#KPS.B.DE.94
  * endDate 0..1 date "Resolution date"
    * ^code = $KPSDataElements#KPS.B.DE.96
  * resolutionCircumstances 0..1 string "How the problem was resolved"
    * ^code = $KPSDataElements#KPS.B.DE.97

// Medical History
* medicalHistory 0..1 string "Narrative or synthesized summary of the client’s medical background"
  * ^code = $KPSDataElements#KPS.B.DE.98

// Current Problems
* currentProblem 0..* BackboneElement "Current diagnoses and health conditions"
  * condition 1..1 string "Problem or diagnosis"
    * ^code = $KPSDataElements#KPS.B.DE.99
  * clinicalStatus 0..1 code "Clinical state (active, recurrence, relapse)"
    * ^code = $KPSDataElements#KPS.B.DE.102
  * verificationStatus 0..1 code "Certainty of diagnosis (confirmed, differential)"
    * ^code = $KPSDataElements#KPS.B.DE.106
  * conditionCategory 0..1 code "Problem list or encounter diagnosis"
    * ^code = $KPSDataElements#KPS.B.DE.110
  * conditionEncounter 0..1 string "Encounter when the condition was first recorded"
    * ^code = $KPSDataElements#KPS.B.DE.111
  * severity 0..1 code "Clinical severity"
    * ^code = $KPSDataElements#KPS.B.DE.113
  * bodySite 0..1 string "Anatomical location"
    * ^code = $KPSDataElements#KPS.B.DE.117
  * onsetDate 0..1 date "Date of onset"
    * ^code = $KPSDataElements#KPS.B.DE.118
  * onsetAge 0..1 string "Age at onset"
    * ^code = $KPSDataElements#KPS.B.DE.119
  * assertionStatus 0..1 code "Assertion about diagnosis certainty"
    * ^code = $KPSDataElements#KPS.B.DE.120

// Social History
* socialHistory 0..* BackboneElement "Lifestyle factors or social determinants"
  * observation 1..1 string "Social history observation"
    * ^code = $KPSDataElements#KPS.B.DE.121
  * referencePeriod 0..1 string "Time period of observation"
    * ^code = $KPSDataElements#KPS.B.DE.122

// Pregnancy History
* pregnancyStatus 0..1 BackboneElement "Current pregnancy status"
  * status 1..1 code "Pregnancy status"
    * ^code = $KPSDataElements#KPS.B.DE.123
  * observationDate 0..1 date "Date of pregnancy observation"
    * ^code = $KPSDataElements#KPS.B.DE.127
  * expectedDeliveryDate 0..1 date "Estimated due date"
    * ^code = $KPSDataElements#KPS.B.DE.128

* previousPregnancy 0..* BackboneElement "Previous pregnancy details"
  * status 1..1 code "Has the client been pregnant before?"
    * ^code = $KPSDataElements#KPS.B.DE.129
  * outcome 0..1 code "Pregnancy outcome"
    * ^code = $KPSDataElements#KPS.B.DE.133
  * outcomeDate 0..1 date "Date of pregnancy outcome"
    * ^code = $KPSDataElements#KPS.B.DE.144
  * numberOfChildren 0..1 integer "Number of children/fetuses in the pregnancy"
    * ^code = $KPSDataElements#KPS.B.DE.145

// Travel History
* travelHistory 0..* BackboneElement "Client travel history"
  * destination 1..1 string "Destination of travel"
    * ^code = $KPSDataElements#KPS.B.DE.146
  * period 0..1 string "Period of travel (entry and departure dates)"
    * ^code = $KPSDataElements#KPS.B.DE.147