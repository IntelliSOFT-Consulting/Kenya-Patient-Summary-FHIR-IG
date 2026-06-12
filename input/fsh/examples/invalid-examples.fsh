// // -----------------------------------------------------------------------------
// // Invalid examples split from profile-examples.fsh
// // -----------------------------------------------------------------------------

// Instance: SubstanceKPSInvalid
// InstanceOf: Substance
// Usage: #example
// * code = $LOINC#718-7 "Hemoglobin [Mass/volume] in Blood"
// * status = #active

// Instance: EncounterKPSInvalid
// InstanceOf: ke-kps-encounter
// Usage: #example
// * meta.profile[0] = $KpsEncounterProfileV
// * status = #finished
// * class.system = $V3ACT
// * class.code = #AMB
// * subject = Reference(PatientKPS)

// Instance: ObservationKPSInvalid
// InstanceOf: Observation
// Usage: #example
// * meta.profile[0] = $KpsObservationProfileV
// * status = #final
// * category[0] = $observation-category-cs#laboratory "Laboratory"
// * code.text = "Hemoglobin result"
// * subject = Reference(PatientKPS)

// Instance: ImmunizationKPSInvalid
// InstanceOf: Immunization
// Usage: #example
// * meta.profile[0] = $KpsImmunizationProfileV
// * status = #completed
// * vaccineCode = $kps-vaccine-atc-cs#J07CA02 "diphtheria-pertussis-poliomyelitis-tetanus"
// * occurrenceDateTime = "2025-10-01"
// * patient = Reference(PatientKPS)
// * protocolApplied[0].targetDisease[0] = $kps-target-diseases-cs#A37 "Whooping cough Invalidated"
// * protocolApplied[0].series = "Kenya childhood immunization schedule"
// * protocolApplied[0].doseNumberPositiveInt = 3

// // -----------------------------------------------------------------------------
// // Invalid examples for profile-level
// // Declared against the base resource with meta.profile to force conformance
// // checking against the KPS profile.
// // -----------------------------------------------------------------------------

// Instance: PatientKPSInvalid
// InstanceOf: Patient
// Usage: #example
// * meta.profile[0] = $KpsPatientProfileV
// * name[0].family = "Invalid"
// * name[0].given[0] = "Patient"
// * telecom[0].system = #email
// * telecom[0].value = "invalid.patient@example.org"

// Instance: AllergyIntoleranceKPSInvalid
// InstanceOf: AllergyIntolerance
// Usage: #example
// * meta.profile[0] = $KpsAllergyProfileV
// * patient = Reference(PatientKPS)
// * reaction[0].manifestation[0] = $LOINC#LA15701-8 "Urticaria (hives)"

// Instance: ConditionKPSInvalid
// InstanceOf: Condition
// Usage: #example
// * meta.profile[0] = $KpsConditionProfileV
// * code = $ICD10#I10 "Essential (primary) hypertension"
// * subject = Reference(PatientKPS)

// Instance: DiagnosticReportKPSInvalid
// InstanceOf: DiagnosticReport
// Usage: #example
// * meta.profile[0] = $KpsDiagnosticReportProfileV
// * status = #final
// * effectiveDateTime = "2026-05-20T08:20:00+03:00"
// * code = $ksp-investigation-cs#718-7 "Hemoglobin Measurement"

// Instance: ImagingStudyKPSInvalid
// InstanceOf: ImagingStudy
// Usage: #example
// * meta.profile[0] = $KpsImagingStudyProfileV
// * status = #available
// * subject = Reference(PatientKPS)

// Instance: LocationKPSInvalid
// InstanceOf: Location
// Usage: #example
// * meta.profile[0] = $KpsLocationProfileV
// * description = "Location missing the required name"

// Instance: MedicationKPSInvalid
// InstanceOf: Medication
// Usage: #example
// * meta.profile[0] = $KpsMedicationProfileV
// * status = #active
// * batch.lotNumber = "LOT-INVALID-001"

// Instance: MedicationRequestKPSInvalid
// InstanceOf: MedicationRequest
// Usage: #example
// * meta.profile[0] = $KpsMedicationRequestProfileV
// * status = #active
// * intent = #order
// * subject = Reference(PatientKPS)
// * medicationReference = Reference(MedicationKPS)
// * category[0] = $LOINC#718-7 "Hemoglobin [Mass/volume] in Blood"

// Instance: MedicationStatementKPSInvalid
// InstanceOf: MedicationStatement
// Usage: #example
// * meta.profile[0] = $KpsMedicationStatementProfileV
// * status = #active
// * medicationReference = Reference(MedicationKPS)
// * subject = Reference(PatientKPS)

// Instance: OrganizationKPSInvalid
// InstanceOf: Organization
// Usage: #example
// * meta.profile[0] = $KpsOrganizationProfileV
// * name = "Missing identifier organization"

// Instance: PractitionerKPSInvalid
// InstanceOf: Practitioner
// Usage: #example
// * meta.profile[0] = $KpsPractitionerProfileV
// * identifier[0].system = $practitioner-identifier
// * identifier[0].value = "PRAC-INVALID-001"

// Instance: PractitionerRoleKPSInvalid
// InstanceOf: PractitionerRole
// Usage: #example
// * meta.profile[0] = $KpsPractitionerRoleProfileV
// * practitioner = Reference(PractitionerKPS)
// * organization = Reference(OrganizationKPS)

// Instance: ProcedureKPSInvalid
// InstanceOf: Procedure
// Usage: #example
// * meta.profile[0] = $KpsProcedureProfileV
// * status = #completed
// * code = $LOINC#718-7
// * subject = Reference(PatientKPS)

// Instance: ServiceRequestKPSInvalid
// InstanceOf: ServiceRequest
// Usage: #example
// * meta.profile[0] = $KpsServiceRequestProfileV
// * status = #active
// * intent = #order
// * subject = Reference(PatientKPS)
// * reasonCode[0] = $ICD10#I10 "Essential (primary) hypertension"

// Instance: SpecimenKPSInvalid
// InstanceOf: Specimen
// Usage: #example
// * meta.profile[0] = $KpsSpecimenProfileV
// * status = #available
// * subject = Reference(PatientKPS)
