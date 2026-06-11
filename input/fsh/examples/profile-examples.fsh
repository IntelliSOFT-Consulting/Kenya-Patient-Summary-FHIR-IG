

Instance: ExampleAllergyIntoleranceKPS
InstanceOf: ke-kps-allergy-intolerance
Title: "Example AllergyIntolerance for Kenya Patient Summary- VALID"
Description: "An example AllergyIntolerance instance for a patient allergic to penicillin."
Usage: #example

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
  * severity = $reaction-event-severity-cs#severe "Severe"
  * note[0].text = "Carry epinephrine auto-injector at all times."

Instance: ExampleKpsCondition
InstanceOf: ke-kps-condition
Title: "Example Condition - Severe Manic Bipolar I Disorder Without Psychotic Features (KPS)"
Description: "Example instance of a patient diagnosed with severe manic bipolar I disorder without psychotic features for the Kenya Patient Summary"
Usage: #example

* id = "example-bipolar-condition"
* subject = Reference(ExamplePatientKPS)
* encounter = Reference(EncounterKPS)

* code.coding[0]
  * system = $condition-codes-cs
  * code = #162004
  * display = "Severe manic bipolar I disorder without psychotic features"

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

* note[0].text = "Patient has a confirmed diagnosis of severe manic bipolar I disorder without psychotic features and is receiving ongoing mental health care."


Instance: LocationKPS
InstanceOf: ke-kps-location
Usage: #example
* name = "Nairobi Referral Clinic"
* description = "Referral clinic used for  examples"

Instance: OrganizationKPS
InstanceOf: ke-kps-organization
Usage: #example
* identifier.system =  $organization-identifier
* identifier.value = "ORG-VAL-001"
* name = "Kenyatta National Hospital"

Instance: PractitionerKPS
InstanceOf: ke-kps-practitioner
* identifier[0].system = $practitioner-identifier
* identifier[0].value = "PRAC-VAL-001"
* name[0].family = "Njoroge"
* name[0].given[0] = "Anne"

Instance: PractitionerRoleKPS
InstanceOf: ke-kps-practitioner-role
Usage: #example
* identifier.system = $practitioner-role-identifier
* identifier.value = "PROLE-VAL-001"
* practitioner = Reference(PractitionerKPS)
* organization = Reference(OrganizationKPS)
* code[0].text = "Consultant physician"

Instance: PatientKPS
InstanceOf: ke-kps-patient
Usage: #example
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
Usage: #example
* code = $kps-medication-atc-cs#A01AB03

Instance: SubstanceKPSInvalid
InstanceOf: Substance
Usage: #example 
* code = $LOINC#718-7 "Hemoglobin [Mass/volume] in Blood"
* status = #active

Instance: MedicationKPS
InstanceOf: ke-kps-medication
Usage: #example
* status = #active
* code = $kps-medication-atc-cs#A01AB03
* batch.lotNumber = "LOT-VAL-001"
* batch.expirationDate = "2027-12-31"

Instance: EncounterKPS
InstanceOf: ke-kps-encounter
Usage: #example
* status = #finished
* class.system = $V3ACT
* class.code = #AMB
* class.display = "ambulatory"
* subject = Reference(PatientKPS)
* period.start = "2026-05-20T08:00:00+03:00"
* period.end = "2026-05-20T08:30:00+03:00"
* location[0].location = Reference(LocationKPS)

Instance: EncounterKPSInvalid
InstanceOf: ke-kps-encounter
Usage: #example 
* status = #finished
* class.system = $V3ACT
* class.code = #AMB
* subject = Reference(PatientKPS)

Instance: ObservationKPS
InstanceOf: ke-kps-observation
Usage: #example
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

* status = #final
* code.text = "Travel period"
* subject = Reference(ExamplePatientKPS)
* performer = Reference(PractitionerKPS)
* valuePeriod.start = "2024-02-01"
* valuePeriod.end = "2024-03-15"

Instance: ObservationKPSInvalid
InstanceOf: Observation
Usage: #example
* meta.profile[0] = $KpsObservationProfile
* status = #final
* category[0] = $observation-category-cs#laboratory "Laboratory"
* code.text = "Hemoglobin result"
* subject = Reference(PatientKPS)
 
 
Instance: SpecimenKPS
InstanceOf: ke-kps-specimen
Usage: #example 
* status = #available
* type = $V20487#BLD "Whole blood"
* subject = Reference(PatientKPS)
* collection.collectedDateTime = "2026-05-20T08:10:00+03:00"

Instance: DiagnosticReportKPS
InstanceOf: ke-kps-diagnostic-report
Usage: #example
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
Usage: #example
* status = #available
* subject = Reference(PatientKPS)
* description = "Chest radiograph"
* started = "2026-05-20T10:00:00+03:00"
* series[0].uid = "2.16.840.1.113883.3.72.5.9.1001"
* series[0].modality = $kps-acquisition-modality-cs#CR "Computed Radiography"

Instance: ImmunizationKPS
InstanceOf: ke-kps-immunization
Usage: #example
* status = #completed
* vaccineCode = $kps-vaccine-atc-cs#J07CA02 "diphtheria-pertussis-poliomyelitis-tetanus"
* occurrenceDateTime = "2025-10-01"
* patient = Reference(PatientKPS)
* protocolApplied[0].targetDisease[0] = $kps-target-diseases-cs#A37 "Whooping cough"
* protocolApplied[0].series = "Kenya childhood immunization schedule"
* protocolApplied[0].doseNumberPositiveInt = 3

Instance: ImmunizationKPSInvalid
InstanceOf: Immunization
Usage: #example
* meta.profile[0] = $KpsImmunizationProfile
* status = #completed
* vaccineCode = $kps-vaccine-atc-cs#J07CA02 "diphtheria-pertussis-poliomyelitis-tetanus"
* occurrenceDateTime = "2025-10-01"
* patient = Reference(PatientKPS)
* protocolApplied[0].targetDisease[0] = $kps-target-diseases-cs#A37 "Whooping cough Invalidated"
* protocolApplied[0].series = "Kenya childhood immunization schedule"
* protocolApplied[0].doseNumberPositiveInt = 3

Instance: MedicationRequestKPS
InstanceOf: ke-kps-medication-request
Usage: #example
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* medicationReference = Reference(MedicationKPS)
* category[0] = $MEDREQCAT#community "Community"
* authoredOn = "2026-05-20"

Instance: MedicationStatementKPS
InstanceOf: ke-kps-medication-statement
Usage: #example
* status = #active
* medicationReference = Reference(MedicationKPS)
* subject = Reference(PatientKPS)
* effectivePeriod.start = "2026-05-01"

Instance: ProcedureKPS
InstanceOf: ke-kps-procedure
Usage: #example
* status = #completed
* code = $kps-procedures-cs#4365001
* subject = Reference(PatientKPS)
* performedDateTime = "2026-05-18T10:00:00+03:00"
* reasonCode[0] = $condition-codes-cs#171008 "Injury of ascending right colon without open wound into abdominal cavity"

Instance: ServiceRequestKPS
InstanceOf: ke-kps-service-request
Usage: #example
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* requester = Reference(PractitionerKPS)
* locationReference[0] = Reference(LocationKPS)
* occurrenceDateTime = "2026-05-20T10:30:00+03:00"
* reasonCode[0] = $KPSGReferral#emergency-referral "Emergency Referral"
* note[0].text = "Refer urgently for specialist review"

// -----------------------------------------------------------------------------
// Invalid examples for profile-level 
// Declared against the base resource with meta.profile to force conformance
// checking against the KPS profile.
// -----------------------------------------------------------------------------

Instance: PatientKPSInvalid
InstanceOf: Patient
Usage: #example
* meta.profile[0] = $KpsPatientProfile
* name[0].family = "Invalid"
* name[0].given[0] = "Patient"
* telecom[0].system = #email
* telecom[0].value = "invalid.patient@example.org"

Instance: AllergyIntoleranceKPSInvalid
InstanceOf: AllergyIntolerance
Usage: #example
* meta.profile[0] = $KpsAllergyProfile
* patient = Reference(PatientKPS)
* reaction[0].manifestation[0] = $LOINC#LA15701-8 "Urticaria (hives)"

Instance: ConditionKPSInvalid
InstanceOf: Condition
Usage: #example
* meta.profile[0] = $KpsConditionProfile
* code = $ICD10#I10 "Essential (primary) hypertension"
* subject = Reference(PatientKPS)

Instance: DiagnosticReportKPSInvalid
InstanceOf: DiagnosticReport
Usage: #example
* meta.profile[0] = $KpsDiagnosticReportProfile
* status = #final 
* effectiveDateTime = "2026-05-20T08:20:00+03:00"
* code = $ksp-investigation-cs#718-7 "Hemoglobin Measurement"



Instance: ImagingStudyKPSInvalid
InstanceOf: ImagingStudy
Usage: #example
* meta.profile[0] = $KpsImagingStudyProfile
* status = #available
* subject = Reference(PatientKPS)



Instance: LocationKPSInvalid
InstanceOf: Location
Usage: #example
* meta.profile[0] = $KpsLocationProfile
* description = "Location missing the required name"

Instance: MedicationKPSInvalid
InstanceOf: Medication
Usage: #example
* meta.profile[0] = $KpsMedicationProfile
* status = #active
* batch.lotNumber = "LOT-INVALID-001"

Instance: MedicationRequestKPSInvalid
InstanceOf: MedicationRequest
Usage: #example
* meta.profile[0] = $KpsMedicationRequestProfile
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* medicationReference = Reference(MedicationKPS)
* category[0] = $LOINC#718-7 "Hemoglobin [Mass/volume] in Blood"

Instance: MedicationStatementKPSInvalid
InstanceOf: MedicationStatement
Usage: #example
* meta.profile[0] = $KpsMedicationStatementProfile
* status = #active
* medicationReference = Reference(MedicationKPS)
* subject = Reference(PatientKPS)



Instance: OrganizationKPSInvalid
InstanceOf: Organization
Usage: #example
* meta.profile[0] = $KpsOrganizationProfile
* name = "Missing identifier organization"

Instance: PractitionerKPSInvalid
InstanceOf: Practitioner
Usage: #example
* meta.profile[0] = $KpsPractitionerProfile
* identifier[0].system = $practitioner-identifier
* identifier[0].value = "PRAC-INVALID-001"

Instance: PractitionerRoleKPSInvalid
InstanceOf: PractitionerRole
Usage: #example
* meta.profile[0] = $KpsPractitionerRoleProfile
* practitioner = Reference(PractitionerKPS)
* organization = Reference(OrganizationKPS)

Instance: ProcedureKPSInvalid
InstanceOf: Procedure
Usage: #example
* meta.profile[0] = $KpsProcedureProfile
* status = #completed
* code = $LOINC#718-7
* subject = Reference(PatientKPS)

Instance: ServiceRequestKPSInvalid
InstanceOf: ServiceRequest
Usage: #example
* meta.profile[0] = $KpsServiceRequestProfile
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* reasonCode[0] = $ICD10#I10 "Essential (primary) hypertension"

Instance: SpecimenKPSInvalid
InstanceOf: Specimen
Usage: #example
* meta.profile[0] = $KpsSpecimenProfile
* status = #available
* subject = Reference(PatientKPS)


