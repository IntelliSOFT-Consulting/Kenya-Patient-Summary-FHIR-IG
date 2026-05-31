// -----------------------------------------------------------------------------
// Valid examples for profile-level 
// -----------------------------------------------------------------------------

Instance: LocationKPS
InstanceOf: ke-kps-location
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* name = "Nairobi Referral Clinic"
* description = "Referral clinic used for  examples"

Instance: OrganizationKPS
InstanceOf: ke-kps-organization
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* identifier.system = "http://localhost:8085/fhir/NamingSystem/organization-identifier"
* identifier.value = "ORG-VAL-001"
* name = "Kenyatta National Hospital"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"

Instance: PractitionerKPS
InstanceOf: ke-kps-practitioner
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* identifier[0].system = "http://localhost:8085/fhir/NamingSystem/practitioner-identifier"
* identifier[0].value = "PRAC-VAL-001"
* name[0].family = "Njoroge"
* name[0].given[0] = "Anne"

Instance: PractitionerRoleKPS
InstanceOf: ke-kps-practitioner-role
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* identifier.system = "http://localhost:8085/fhir/NamingSystem/practitioner-role-identifier"
* identifier.value = "PROLE-VAL-001"
* practitioner = Reference(PractitionerKPS)
* organization = Reference(OrganizationKPS)
* code[0].text = "Consultant physician"

Instance: PatientKPS
InstanceOf: ke-kps-patient
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* identifier[NationalIDNo].system = "http://moh.kenya/identifier/nationalID-no"
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
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* code = $ATC#J07CA02

Instance: MedicationKPS
InstanceOf: ke-kps-medication
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #active
* code = $ATC#J07CA02
* batch.lotNumber = "LOT-VAL-001"
* batch.expirationDate = "2027-12-31"

Instance: EncounterKPS
InstanceOf: ke-kps-encounter
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
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
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #final
* category[0] = $OBSCAT#laboratory "Laboratory"
* code.text = "Hemoglobin result"
* subject = Reference(PatientKPS)
* effectiveDateTime = "2026-05-20T08:15:00+03:00"
* valueString = "13.2 g/dL"

Instance: ConditionKPS
InstanceOf: ke-kps-condition
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* clinicalStatus = $CONDITIONSTATUS#active "Active"
* verificationStatus = $CONDITIONVERIFY#confirmed "Confirmed"
* category[0] = $CONDITIONCAT#problem-list-item "Problem List Item"
* code = $ICD10#I10 "Essential (primary) hypertension"
* subject = Reference(PatientKPS)
* onsetDateTime = "2025-02-15"

Instance: AllergyIntoleranceKPS
InstanceOf: ke-kps-allergy-intolerance
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* patient = Reference(PatientKPS)
* clinicalStatus = $ALLERGYSTATUS#active "Active"
* verificationStatus = $ALLERGYVERIFY#confirmed "Confirmed"
* type = $ALLERGYTYPE#allergy "Allergy"
* reaction[0].manifestation[0] = $ICD10#T78.2
* note[0].text = "Rash after penicillin exposure"

Instance: SpecimenKPS
InstanceOf: ke-kps-specimen
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #available
* type = $V20487#BLD "Whole blood"
* subject = Reference(PatientKPS)
* collection.collectedDateTime = "2026-05-20T08:10:00+03:00"

Instance: DiagnosticReportKPS
InstanceOf: ke-kps-diagnostic-report
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #final
* category[0] = $DXSVC#LAB "Laboratory"
* code = $LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(PatientKPS)
* effectiveDateTime = "2026-05-20T08:20:00+03:00"
* issued = "2026-05-20T09:00:00+03:00"
* specimen[0] = Reference(SpecimenKPS)
* performer[0] = Reference(OrganizationKPS)
* result[0] = Reference(ObservationKPS)

Instance: ImagingStudyKPS
InstanceOf: ke-kps-imaging-study
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #available
* subject = Reference(PatientKPS)
* description = "Chest radiograph"
* started = "2026-05-20T10:00:00+03:00"
* series[0].uid = "2.16.840.1.113883.3.72.5.9.1001"
* series[0].modality = $DICOM#CR "Computed Radiography"

Instance: ImmunizationKPS
InstanceOf: ke-kps-immunization
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #completed
* vaccineCode = $ATC#J07CA02 "diphtheria-pertussis-poliomyelitis-tetanus"
* occurrenceDateTime = "2025-10-01"
* patient = Reference(PatientKPS)
* protocolApplied[0].targetDisease[0] = $ICD10#A37 "Whooping cough"
* protocolApplied[0].series = "Kenya childhood immunization schedule"
* protocolApplied[0].doseNumberPositiveInt = 3

Instance: MedicationRequestKPS
InstanceOf: ke-kps-medication-request
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* medicationReference = Reference(MedicationKPS)
* category[0] = $MEDREQCAT#community "Community"
* authoredOn = "2026-05-20"

Instance: MedicationStatementKPS
InstanceOf: ke-kps-medication-statement
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #active
* medicationReference = Reference(MedicationKPS)
* subject = Reference(PatientKPS)
* effectivePeriod.start = "2026-05-01"

Instance: ProcedureKPS
InstanceOf: ke-kps-procedure
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* status = #completed
* code = $LNC#718-7
* subject = Reference(PatientKPS)
* performedDateTime = "2026-05-18T10:00:00+03:00"
* reasonCode[0] = $ICD10#Z34.9 "Supervision of normal pregnancy, unspecified"

Instance: ServiceRequestKPS
InstanceOf: ke-kps-service-request
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
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
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsPatientProfile
* name[0].family = "Invalid"
* name[0].given[0] = "Patient"
* telecom[0].system = #email
* telecom[0].value = "invalid.patient@example.org"

Instance: AllergyIntoleranceKPSInvalid
InstanceOf: AllergyIntolerance
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsAllergyProfile
* patient = Reference(PatientKPS)
* reaction[0].manifestation[0] = $LNC#LA15701-8 "Urticaria (hives)"

Instance: ConditionKPSInvalid
InstanceOf: Condition
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsConditionProfile
* code = $ICD10#I10 "Essential (primary) hypertension"
* subject = Reference(PatientKPS)

Instance: DiagnosticReportKPSInvalid
InstanceOf: DiagnosticReport
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsDiagnosticReportProfile
* status = #final
* code = $LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* effectiveDateTime = "2026-05-20T08:20:00+03:00"

Instance: EncounterKPSInvalid
InstanceOf: Encounter
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsEncounterProfile
* status = #finished
* class.system = $V3ACT
* class.code = #AMB

Instance: ImagingStudyKPSInvalid
InstanceOf: ImagingStudy
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsImagingStudyProfile
* status = #available
* subject = Reference(PatientKPS)

Instance: ImmunizationKPSInvalid
InstanceOf: Immunization
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsImmunizationProfile
* status = #completed
* vaccineCode = $LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* occurrenceDateTime = "2025-10-01"
* patient = Reference(PatientKPS)

Instance: LocationKPSInvalid
InstanceOf: Location
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsLocationProfile
* description = "Location missing the required name"

Instance: MedicationKPSInvalid
InstanceOf: Medication
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsMedicationProfile
* status = #active
* batch.lotNumber = "LOT-INVALID-001"

Instance: MedicationRequestKPSInvalid
InstanceOf: MedicationRequest
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsMedicationRequestProfile
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* medicationReference = Reference(MedicationKPS)
* category[0] = $LNC#718-7 "Hemoglobin [Mass/volume] in Blood"

Instance: MedicationStatementKPSInvalid
InstanceOf: MedicationStatement
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsMedicationStatementProfile
* status = #active
* medicationReference = Reference(MedicationKPS)
* subject = Reference(PatientKPS)

Instance: ObservationKPSInvalid
InstanceOf: Observation
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsObservationProfile
* status = #final
* category[0] = $OBSCAT#laboratory "Laboratory"
* code.text = "Hemoglobin result"
* subject = Reference(PatientKPS)

Instance: OrganizationKPSInvalid
InstanceOf: Organization
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsOrganizationProfile
* name = "Missing identifier organization"

Instance: PractitionerKPSInvalid
InstanceOf: Practitioner
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsPractitionerProfile
* identifier[0].system = "http://localhost:8085/fhir/NamingSystem/practitioner-identifier"
* identifier[0].value = "PRAC-INVALID-001"

Instance: PractitionerRoleKPSInvalid
InstanceOf: PractitionerRole
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsPractitionerRoleProfile
* practitioner = Reference(PractitionerKPS)
* organization = Reference(OrganizationKPS)

Instance: ProcedureKPSInvalid
InstanceOf: Procedure
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsProcedureProfile
* status = #completed
* code = $LNC#718-7
* subject = Reference(PatientKPS)

Instance: ServiceRequestKPSInvalid
InstanceOf: ServiceRequest
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsServiceRequestProfile
* status = #active
* intent = #order
* subject = Reference(PatientKPS)
* reasonCode[0] = $ICD10#I10 "Essential (primary) hypertension"

Instance: SpecimenKPSInvalid
InstanceOf: Specimen
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsSpecimenProfile
* status = #available
* subject = Reference(PatientKPS)

Instance: SubstanceKPSInvalid
InstanceOf: Substance
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Test</div>"
* meta.profile[0] = $KpsSubstanceProfile
* code = $LNC#718-7 "Hemoglobin [Mass/volume] in Blood"
* status = #active
