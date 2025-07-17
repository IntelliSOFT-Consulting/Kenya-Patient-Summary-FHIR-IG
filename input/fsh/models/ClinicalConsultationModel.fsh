Logical: ClinicalConsultationModel
Title: "KPS.B Clinical Consultation"
Description: "Logical model for documenting clinical consultation data under the Kenya Patient Summary (KPS.B) standard."

// Allergies and Intolerances
* allergy 0..* BackboneElement "Documented allergies or intolerances"
  * agent 1..1 string "Substance or agent triggering the reaction"
    * ^code = #KPS.B.DE.1
  * description 0..1 string "Text description of the allergy or intolerance"
    * ^code = #KPS.B.DE.2
  * propensityType 1..1 code "Allergy, intolerance, or unknown"
    * ^code = #KPS.B.DE.3
  * manifestation 0..1 string "Clinical manifestation of the reaction"
    * ^code = #KPS.B.DE.4
  * severity 0..1 code "Severity of the reaction"
    * ^code = #KPS.B.DE.5
  * criticality 0..1 code "Risk of future life-threatening adverse reactions"
    * ^code = #KPS.B.DE.6
  * onsetDate 0..1 date "Date the allergy was observed"
    * ^code = #KPS.B.DE.7
  * endDate 0..1 date "Date of resolution of the allergy"
    * ^code = #KPS.B.DE.8
  * status 1..1 code "Current status of the allergy"
    * ^code = #KPS.B.DE.9
  * certainty 0..1 code "Certainty about the reaction's presence"
    * ^code = #KPS.B.DE.10

// Medical Alert
* medicalAlert 0..* BackboneElement "Medical alert information"
  * description 1..1 string "Description of the alert"
    * ^code = #KPS.B.DE.11
  * alertCode 0..1 code "Priority level"
  * status 0..1 code "Alert status (active/inactive/etc)"

// Resolved Problems
* resolvedProblem 0..* BackboneElement "Past resolved/closed/inactive problems"
  * description 1..1 string "Problem or diagnosis"
    * ^code = #KPS.B.DE.12
  * onsetDate 0..1 date "Date of problem onset"
    * ^code = #KPS.B.DE.13
  * endDate 0..1 date "Resolution date"
    * ^code = #KPS.B.DE.14
  * resolutionCircumstances 0..1 string "How the problem was resolved"
    * ^code = #KPS.B.DE.15

// Medical History
* medicalHistory 0..1 string "Narrative or synthesized summary of the client’s medical background"
  * ^code = #KPS.B.DE.16

// Current Problems
* currentProblem 0..* BackboneElement "Current diagnoses and health conditions"
  * condition 1..1 string "Problem or diagnosis"
    * ^code = #KPS.B.DE.17
  * clinicalStatus 0..1 code "Clinical state (active, recurrence, relapse)"
  * verificationStatus 0..1 code "Certainty of diagnosis (confirmed, differential)"
  * conditionCategory 0..1 code "Problem list or encounter diagnosis"
  * severity 0..1 code "Clinical severity"
  * bodySite 0..1 string "Anatomical location"
  * onsetDate 0..1 date "Date of onset"
    * ^code = #KPS.B.DE.18
  * onsetAge 0..1 string "Age at onset"
  * assertionStatus 0..1 code "Assertion about diagnosis certainty"
    * ^code = #KPS.B.DE.19

// Social History
* socialHistory 0..* BackboneElement "Lifestyle factors or social determinants"
  * observation 1..1 string "Social history observation"
    * ^code = #KPS.B.DE.20
  * referencePeriod 0..1 string "Time period of observation"
    * ^code = #KPS.B.DE.21

// Pregnancy History
* pregnancyStatus 0..1 BackboneElement "Current pregnancy status"
  * status 1..1 code "Pregnancy status"
    * ^code = #KPS.B.DE.22
  * observationDate 0..1 date "Date of pregnancy observation"
    * ^code = #KPS.B.DE.26
  * expectedDeliveryDate 0..1 date "Estimated due date"
    * ^code = #KPS.B.DE.27

* previousPregnancy 0..* BackboneElement "Previous pregnancy details"
  * status 1..1 code "Has the client been pregnant before?"
    * ^code = #KPS.B.DE.28
  * outcome 0..1 code "Pregnancy outcome"
    * ^code = #KPS.B.DE.33
  * outcomeDate 0..1 date "Date of pregnancy outcome"
    * ^code = #KPS.B.DE.32
  * numberOfChildren 0..1 integer "Number of children/fetuses in the pregnancy"
    * ^code = #KPS.B.DE.34

// Travel History
* travelHistory 0..* BackboneElement "Client travel history"
  * destination 1..1 string "Destination of travel"
    * ^code = #KPS.B.DE.35
  * period 0..1 string "Period of travel (entry and departure dates)"
    * ^code = #KPS.B.DE.36
