

Instance: ExampleAllergyIntoleranceKPS
InstanceOf: ke-kps-allergy-intolerance
Title: "Example AllergyIntolerance for Kenya Patient Summary- VALID"
Description: "An example AllergyIntolerance instance for a patient allergic to penicillin."
Usage: #example
* meta.profile[0] = $KpsAllergyProfileV

* id = "example-allergy-patient-001"
* patient = Reference(ExamplePatientKPS)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* type = KPSBClientCodes#allergy "Allergy"
* criticality = #high
* onsetDateTime = "2021-05-01"

* reaction[0]
  * substance.coding[0]
    * system = $kps-substances-cs
    * code = #1018001
    * display = "Nornicotine"
  * description = "Develops severe Jaundice after penicillin"
  * manifestation[0].coding[0]
    * system = $manifestation-cs
    * code = #JAUNDICE
    * display = "Jaundice" 
  * severity = http://hl7.org/fhir/reaction-event-severity#severe "Severe"
  * note[0].text = "Carry epinephrine auto-injector at all times."

Instance: ExampleKpsCondition
InstanceOf: ke-kps-condition
Title: "Example Condition - Bipolar Affective Disorder, Current Episode Manic Without Psychotic Symptoms (KPS)"
Description: "Example instance of a patient diagnosed with bipolar affective disorder, current episode manic without psychotic symptoms, for the Kenya Patient Summary."
Usage: #example
* meta.profile[0] = $KpsConditionProfileV

* id = "example-bipolar-condition"
* subject = Reference(ExamplePatientKPS)
* encounter = Reference(EncounterKPS)

* code.coding[0]
  * system = $ICD10
  * code = #F31.1
  * display = "Bipolar affective disorder, current episode manic without psychotic symptoms"

* clinicalStatus.coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
  * code = #active
  * display = "Active"

* verificationStatus.coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
  * code = #confirmed
  * display = "Confirmed"

* severity.coding[0]
  * system = $condition-severity-cs
  * code = #SEVERE
  * display = "Severe"

* onsetDateTime = "2019-06-10"

* category.coding[0]
  * system = "http://terminology.hl7.org/CodeSystem/condition-category"
  * code = #problem-list-item
  * display = "Problem List Item"

* note[0].text = "Patient has a confirmed diagnosis of bipolar affective disorder, current episode manic without psychotic symptoms, and is receiving ongoing mental health care."


Instance: LocationKPS
InstanceOf: ke-kps-location
Description: "Example clinic location used in encounter and referral examples."
Usage: #example
* meta.profile[0] = $KpsLocationProfileV
* name = "Nairobi Referral Clinic"
* description = "Referral clinic used for  examples"

Instance: OrganizationKPS
InstanceOf: ke-kps-organization
Description: "Example healthcare organization used as the performing facility in Kenya Patient Summary examples."
Usage: #example
* meta.profile[0] = $KpsOrganizationProfileV
* identifier.system =  $organization-identifier
* identifier.value = "ORG-VAL-001"
* name = "Kenyatta National Hospital"

Instance: PractitionerKPS
InstanceOf: ke-kps-practitioner
Description: "Example practitioner used across Kenya Patient Summary examples."
* meta.profile[0] = $KpsPractitionerProfileV
* identifier[0].system = $practitioner-identifier
* identifier[0].value = "PRAC-VAL-001"
* name[0].family = "Njoroge"
* name[0].given[0] = "Anne"

Instance: PractitionerRoleKPS
InstanceOf: ke-kps-practitioner-role
Description: "Example practitioner role linking the sample practitioner to the sample organization."
Usage: #example
* meta.profile[0] = $KpsPractitionerRoleProfileV
* identifier.system = $practitioner-role-identifier
* identifier.value = "PROLE-VAL-001"
* practitioner = Reference(PractitionerKPS)
* organization = Reference(OrganizationKPS)
* code[0].text = "Consultant physician"

Instance: PatientKPS
InstanceOf: ke-kps-patient
Description: "Example patient used across Kenya Patient Summary examples."
Usage: #example
* meta.profile[0] = $KpsPatientProfileV
* identifier[NationalIDNo].system = $nationalID-no
* identifier[NationalIDNo].value = "12345678"
* gender = #female
* name[0].family = "Mohamed"
* name[0].given[0] = "Amina"
* birthDate = "1992-03-25"
* telecom[phone].system = #phone
* telecom[phone].value = "+254700123456"
* telecom[phone].use = #mobile
* contact[0].relationship[0] = $CONTACTREL#N
* contact[0].name.family = "Abdullahi"
* contact[0].name.given[0] = "Fatuma"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+254711223344"
* contact[0].telecom[0].use = #mobile
* address[0].country = "KE"
* address[0].state = "Nairobi"
* address[0].district = "Westlands"
* address[0].city = "Parklands"
* address[0].line[0] = "Limuru Road"
* address[0].postalCode = "00100"

Instance: SubstanceKPS
InstanceOf: ke-kps-substance
Description: "Example substance referenced by the medication example."
Usage: #example
* meta.profile[0] = $KpsSubstanceProfileV
* code = $kps-medication-atc-cs#A01AB03

Instance: MedicationKPS
InstanceOf: ke-kps-medication
Description: "Example medication used in prescribing and administration examples."
Usage: #example
* meta.profile[0] = $KpsMedicationProfileV
* status = #active
* code = $kps-medication-atc-cs#A01AB03
* batch.lotNumber = "LOT-VAL-001"
* batch.expirationDate = "2027-12-31"

Instance: EncounterKPS
InstanceOf: ke-kps-encounter
Description: "Example outpatient encounter for the sample patient."
Usage: #example
* meta.profile[0] = $KpsEncounterProfileV
* status = #finished
* class.system = $V3ACT
* class.code = #AMB
* class.display = "ambulatory"
* subject = Reference(PatientKPS)
* period.start = "2026-05-20T08:00:00+03:00"
* period.end = "2026-05-20T08:30:00+03:00"
* location[0].location = Reference(LocationKPS)

Instance: ObservationKPS
InstanceOf: ke-kps-observation
Description: "Example laboratory observation referenced by the diagnostic report example."
Usage: #example
* meta.profile[0] = $KpsObservationProfileV
* status = #final
* category[0] = $observation-category-cs#laboratory "Laboratory"
* code.text = "Hemoglobin result"
* subject = Reference(PatientKPS)
* performer = Reference(PractitionerKPS)
* effectiveDateTime = "2026-05-20T08:15:00+03:00"
* valueString = "13.2 g/dL"


Instance: ObservationSmokingStatus
InstanceOf: KpsObservation
Title: "Smoking Status"
Description: "Social history observation indicating smoking"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* category[0].coding[0]
  * system = $observation-category-cs
  * code = #social-history
  * display = "Social History"
* code.text = "Tobacco use"
* subject = Reference(ExamplePatientKPS)
* effectiveDateTime = "2023-05-10"
* valueString = "Occasional cigarette smoker"
* performer = Reference(PractitionerKPS)


Instance: ObservationReferenceDateRange
InstanceOf: KpsObservation
Title: "Substance Use Reference Period"
Description: "Reference date range for substance use"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* category[0].coding[0]
  * system = $observation-category-cs
  * code = #social-history
  * display = "Social History"
* code.text = "Alcohol consumption period"
* subject = Reference(ExamplePatientKPS)
* effectivePeriod.start = "1974-01-01"
* effectivePeriod.end = "2004-12-31"
* valueString = "Heavy alcohol consumption during this period"
* performer = Reference(PractitionerKPS)

Instance: ObservationPregnancyStatus
InstanceOf: KpsObservation
Title: "Pregnancy Status"
Description: "Current pregnancy status"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* category[0].coding[0]
  * system = $observation-category-cs
  * code = #social-history
  * display = "Social History"
* code.text = "Pregnancy Status"
* subject = Reference(ExamplePatientKPS)
* effectiveDateTime = "2024-11-01"
* performer = Reference(PractitionerKPS)
* valueCodeableConcept.coding[0]
  * system = KPSBClientCodes
  * code = #KPS.B.DE.23
  * display = "Pregnant"

Instance: ObservationEDD
InstanceOf: KpsObservation
Title: "Expected Date of Delivery"
Description: "Estimated date of delivery"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* category[0].coding[0]
  * system = $observation-category-cs
  * code = #social-history
  * display = "Social History"
* code.text = "Expected date of delivery"
* subject = Reference(ExamplePatientKPS)
* effectiveDateTime = "2024-11-01"
* performer = Reference(PractitionerKPS)
* valueDateTime = "2025-07-10"



Instance: ObservationPreviousPregnancies
InstanceOf: KpsObservation
Title: "Previous Pregnancies Status"
Description: "Whether the woman had previous pregnancies"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* code.text = "Previous pregnancies"
* subject = Reference(ExamplePatientKPS)
* performer = Reference(PractitionerKPS) 
* effectiveDateTime = "2023-05-10"
* valueCodeableConcept.coding[0]
  * system = KPSBClientCodes
  * code = #KPS.B.DE.29
  * display = "Yes"

Instance: ObservationPreviousPregnancyOutcome
InstanceOf: KpsObservation
Title: "Previous Pregnancy Outcome"
Description: "Outcome of previous pregnancy"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* code.text = "Pregnancy Outcome"
* subject = Reference(ExamplePatientKPS)
* performer = Reference(PractitionerKPS)
* effectiveDateTime = "2023-05-10"
* valueCodeableConcept.coding[0]
  * system = KPSBClientCodes
  * code = #preterm
  * display = "Pre-term"

Instance: ObservationOutcomeDate
InstanceOf: KpsObservation
Title: "Pregnancy Outcome Date"
Description: "Date of pregnancy outcome"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* code.text = "Outcome date"
* subject = Reference(ExamplePatientKPS)
* performer = Reference(PractitionerKPS)
* effectiveDateTime = "2023-05-10"
* valueDateTime = "2022-06-15" 


Instance: ObservationNumberOfChildren
InstanceOf: KpsObservation
Title: "Number of Children"
Description: "Number of fetuses in the current pregnancy"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* code.text = "Number of fetuses"
* subject = Reference(ExamplePatientKPS)
* performer = Reference(PractitionerKPS)
* effectiveDateTime = "2023-05-10"
* valueQuantity.value = 2
* valueQuantity.unit = "children" 


Instance: ObservationTravelDestination
InstanceOf: KpsObservation
Title: "Travel Destination"
Description: "Where the patient traveled"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* code.text = "Recent travel destination"
* subject = Reference(ExamplePatientKPS)
* performer = Reference(PractitionerKPS)
* effectiveDateTime = "2023-05-10"
* valueString = "South Sudan" 


Instance: ObservationTravelPeriod
InstanceOf: KpsObservation
Title: "Travel Period"
Description: "Date of entry and departure"
Usage: #example
* meta.profile[0] = $KpsObservationProfileV

* status = #final
* code.text = "Travel period"
* subject = Reference(ExamplePatientKPS)
* performer = Reference(PractitionerKPS)
* valuePeriod.start = "2024-02-01"
* valuePeriod.end = "2024-03-15"

Instance: SpecimenKPS
InstanceOf: ke-kps-specimen
Description: "Example blood specimen collected from the sample patient."
Usage: #example 
* meta.profile[0] = $KpsSpecimenProfileV
* status = #available
* type = $V20487#BLD "Whole blood"
* subject = Reference(PatientKPS)
* collection.collectedDateTime = "2026-05-20T08:10:00+03:00"

Instance: DiagnosticReportKPS
InstanceOf: ke-kps-diagnostic-report
Description: "Example laboratory diagnostic report referencing the sample specimen and observation."
Usage: #example
* meta.profile[0] = $KpsDiagnosticReportProfileV
* status = #final
* category[0] = $DXSVC#LAB "Laboratory"
* code = $ksp-investigation-cs#718-7 "Hemoglobin Measurement"
* subject = Reference(PatientKPS)
* effectiveDateTime = "2026-05-20T08:20:00+03:00"
* issued = "2026-05-20T09:00:00+03:00"
* specimen[0] = Reference(SpecimenKPS)
* performer[0] = Reference(OrganizationKPS)
* result[0] = Reference(ObservationKPS)

Instance: ImagingStudyKPS
InstanceOf: ke-kps-imaging-study
Description: "Example imaging study for the sample patient."
Usage: #example
* meta.profile[0] = $KpsImagingStudyProfileV
* status = #available
* subject = Reference(PatientKPS)
* description = "Chest radiograph"
* started = "2026-05-20T10:00:00+03:00"
* series[0].uid = "2.16.840.1.113883.3.72.5.9.1001"
* series[0].modality = $kps-acquisition-modality-cs#CR "Computed Radiography"

Instance: ImmunizationKPS
InstanceOf: ke-kps-immunization
Description: "Example immunization event for the sample patient."
Usage: #example
* meta.profile[0] = $KpsImmunizationProfileV
* status = #completed
* vaccineCode = $kps-vaccine-atc-cs#J07CA02 "diphtheria-pertussis-poliomyelitis-tetanus"
* occurrenceDateTime = "2025-10-01"
* patient = Reference(PatientKPS)
* protocolApplied[0].targetDisease[0] = $kps-target-diseases-cs#A37 "Whooping cough"
* protocolApplied[0].series = "Kenya childhood immunization schedule"
* protocolApplied[0].doseNumberPositiveInt = 3

Instance: MedicationRequestKPS
InstanceOf: ke-kps-medication-request
Description: "Example medication request for the sample patient."
Usage: #example
* meta.profile[0] = $KpsMedicationRequestProfileV
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* medicationReference = Reference(MedicationKPS)
* category[0] = $MEDREQCAT#community "Community"
* authoredOn = "2026-05-20"

Instance: MedicationStatementKPS
InstanceOf: ke-kps-medication-statement
Description: "Example medication statement for the sample patient."
Usage: #example
* meta.profile[0] = $KpsMedicationStatementProfileV
* status = #active
* medicationReference = Reference(MedicationKPS)
* subject = Reference(PatientKPS)
* effectivePeriod.start = "2026-05-01"

Instance: ProcedureKPS
InstanceOf: ke-kps-procedure
Description: "Example procedure performed for the sample patient."
Usage: #example
* meta.profile[0] = $KpsProcedureProfileV
* status = #completed
* code = $kps-procedures-cs#4365001
* subject = Reference(PatientKPS)
* performedDateTime = "2026-05-18T10:00:00+03:00"
* reasonCode[0] = $ICD10#S36.5 "Injury of colon"

Instance: ServiceRequestKPS
InstanceOf: ke-kps-service-request
Description: "Example referral service request for the sample patient."
Usage: #example
* meta.profile[0] = $KpsServiceRequestProfileV
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* requester = Reference(PractitionerKPS)
* locationReference[0] = Reference(LocationKPS)
* occurrenceDateTime = "2026-05-20T10:30:00+03:00"
* reasonCode[0] = $KPSGReferral#emergency-referral "Emergency Referral"
* note[0].text = "Refer urgently for specialist review"

Instance: CompositionKPS
InstanceOf: ke-kps-composition
Title: "Example Composition"
Description: "Example Kenya Patient Summary document bundling the sample patient's problems, allergies, medications, immunizations, results, and procedures."
Usage: #example
* meta.profile[0] = $KpsCompositionProfileV

* status = #final
* subject = Reference(PatientKPS)
* encounter = Reference(EncounterKPS)
* date = "2026-05-20T09:15:00+03:00"
* author[0] = Reference(PractitionerKPS)
* title = "Patient Summary for Amina Mohamed"
* custodian = Reference(OrganizationKPS)

* section[problems].title = "Problems"
* section[problems].entry[0] = Reference(ExampleKpsCondition)

* section[allergies].title = "Allergies and Intolerances"
* section[allergies].entry[0] = Reference(ExampleAllergyIntoleranceKPS)

* section[medications].title = "Medications"
* section[medications].entry[0] = Reference(MedicationStatementKPS)

* section[immunizations].title = "Immunizations"
* section[immunizations].entry[0] = Reference(ImmunizationKPS)

* section[results].title = "Results"
* section[results].entry[0] = Reference(ObservationKPS)

* section[procedures].title = "Procedures"
* section[procedures].entry[0] = Reference(ProcedureKPS)
