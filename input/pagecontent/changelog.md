# Changelog

This page documents all changes to the Kenya Patient Summary FHIR Implementation Guide across versions. Changes are categorized as:

- **Breaking** — Changes that are not backwards compatible with prior versions
- **Non-breaking** — Additions or relaxations that do not break prior implementations
- **Fix** — Corrections to errors or inconsistencies in prior versions
- **Editorial** — Documentation or narrative improvements with no change to computable content

---

### Version 0.1.0 (June 2025) — Initial CI Build

**Status:** Draft  
**Release Label:** ci-build  
**Published:** June 6, 2025  
**Author:** KPS Team, IntelliSOFT Consulting / Digital Health Agency of Kenya

This is the first published draft of the Kenya Patient Summary FHIR Implementation Guide. All content in this release is initial and subject to change during the public comment and ballot process.

#### Profiles Added

| Profile | Base Resource | Description |
|---------|---------------|-------------|
| Client Registration Model | Patient | Kenya-specific patient demographics with UPI, national ID, county extension, and insurance scheme enrollment |
| Clinical Consultation Model | Encounter | Clinical encounter with attending provider, facility, and diagnosis references |
| KPS Condition | Condition | Active and resolved clinical conditions with ICD-11/SNOMED CT binding |
| KPS Allergy Intolerance | AllergyIntolerance | Allergy and intolerance records with substance and clinical status |
| Diagnostics Model | Observation | Laboratory results and diagnostic observations coded with LOINC |
| Client Treatment Model | MedicationStatement | Active and historical medication records |
| Immunization Record | Immunization | Vaccine administration records per Kenya KEPI schedule |

#### Extensions Added

| Extension | Applied To | Purpose |
|-----------|-----------|---------|
| Kenya Counties Extension | Patient, Location | Kenya 47-county administrative classification |
| Insurance Information Extension | Patient | SHIF, PHIF, ECCIF, and private insurance scheme enrollment |
| Collection Context Extension | Observation | Specimen collection context |

#### ValueSets Added

- KPS Clinical Status ValueSet
- KPS Verification Status ValueSet
- KPS Allergy Clinical Status ValueSet
- KPS Schemes ValueSet (insurance schemes)
- KPS Service Type ValueSet
- KPS Service Access Point ValueSet
- Kenya County ValueSet

#### CodeSystems Added

- KPSB Clinical Status Codes
- KPSB Verification Status Codes
- KPS Schemes CodeSystem
- KPS Service Type CodeSystem
- KPS Service Access Point CodeSystem
- KPSA Client Registration Codes
- KPSB Clinical Consultation Codes
- KPSC Diagnostics Codes
- KPSD Treatment Codes
- KPSE Immunization Codes

#### Examples Added

- `Patient/ExamplePatientKPS` — Example KPS patient with Kenya-specific identifiers
- `Encounter/ExampleEncounterKPS` — Example clinical encounter
- `AllergyIntolerance/example-allergy-patient-001` — Example allergy record
- `Condition/example-hypertension-condition` — Example chronic condition
- `Location/NairobiClinic` — Example facility location
- `Observation/ObservationPregnancyStatus` — Pregnancy status observation
- `Observation/ObservationSmokingStatus` — Smoking status observation
- `Observation/ObservationEDD` — Estimated date of delivery
- Multiple pregnancy-related observation examples

#### Narrative Pages Added (this release)

| Page | Status |
|------|--------|
| Home (index) | Initial draft |
| Background | Initial draft |
| Actors and Transactions | Initial draft |
| Business Requirements | Initial draft |
| Concepts (Abbreviations & Glossary) | Initial draft |
| Generic Personas | Initial draft |
| User Scenarios | Initial draft |
| Business Processes and Workflows | Initial draft |
| Decision Support Logic | Initial draft |
| Functional Requirements | Initial draft |
| Non-Functional Requirements | Initial draft |
| Security | Initial draft |
| Conformance | Initial draft |
| Downloads | Initial draft |
| Changelog | Initial draft |

#### Known Issues and Limitations (v0.1.0)

- **Decision support logic** tables are initial drafts; clinical review and validation against Kenya MOH guidelines is pending.
- **Functional requirements** are not yet fully traced to specific FHIR profiles; traceability matrix forthcoming.
- **Capability Statement** defines the overall conformance expectation but has not yet been tested against a reference server implementation.
- **Business processes F (Emergency Care) and G (Referral)** have workflow annotations that are incomplete; full annotations are planned for v0.2.0.
- **Terminology bindings** — Some ValueSets use local code systems pending formal registration with the Kenya Terminology Service. These will be updated to reference OCL-hosted canonical URLs in v0.2.0.

---

### Roadmap

The following improvements are planned for subsequent versions:

| Planned Version | Key Changes |
|----------------|-------------|
| **0.2.0** | Complete Emergency Care and Referral workflow annotations; add full functional requirement traceability matrix; update terminology to OCL-hosted canonical URLs; incorporate initial implementer feedback |
| **0.3.0** | Public comment incorporation; reference implementation testing against Kenya HIE sandbox; add support for cross-border IPS document generation |
| **1.0.0** | Ballot and publication as normative national standard, pending DHA approval and MOH endorsement |

---

### How to Provide Feedback

This guide is under active development. Feedback from implementers, clinicians, and health informatics professionals is essential to producing a high-quality standard.

To provide feedback:

- **GitHub Issues:** [https://github.com/IntelliSOFT-Consulting/Kenya-Patient-Summary-FHIR-IG/issues](https://github.com/IntelliSOFT-Consulting/Kenya-Patient-Summary-FHIR-IG/issues)
- **Email:** [interoperability@dha.go.ke](mailto:interoperability@dha.go.ke)

Please include the section or artifact you are commenting on, a description of the issue or suggestion, and (where applicable) a proposed resolution.
