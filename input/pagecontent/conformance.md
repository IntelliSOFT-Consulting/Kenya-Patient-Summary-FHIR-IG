# Conformance

This page defines how implementers determine and declare conformance to this Implementation Guide. It specifies conformance verbs, Must Support semantics, profile conformance rules, and actor-specific requirements.

---

### Conformance Verbs

This guide uses the following conformance verbs, derived from [RFC 2119](https://www.ietf.org/rfc/rfc2119.txt):

| Verb | Meaning |
|------|---------|
| **SHALL** | Absolute requirement. Non-conformance constitutes a conformance failure. |
| **SHALL NOT** | Absolute prohibition. |
| **SHOULD** | Recommended. Non-conformance must be justified and documented. |
| **SHOULD NOT** | Not recommended. May be done with justification. |
| **MAY** | Optional. Implementers may choose to include or omit. |

---

### Must Support

Elements marked with **Must Support** (MS) in this guide carry the following obligations:

#### Data Senders (Point-of-Service Systems submitting data)

- **SHALL** populate a Must Support element if the information is captured in the sending system.
- **SHALL** honor the minimum cardinality of any Must Support element.
- **SHALL NOT** omit a Must Support element if the data is available, even if the element is optional in the base FHIR specification.

#### Data Receivers (Systems consuming KPS data)

- **SHALL** process and store Must Support elements without error.
- **SHALL NOT** alter clinical behavior solely because an optional Must Support element is absent.
- **SHOULD** display Must Support elements to end users when the data is present and clinically relevant.

> **Note:** Must Support does not mean the data is always present. It means that if the data exists in the source system, it must be included and processed.

---

### Profile Conformance Rules

For a FHIR resource instance to claim conformance to a KPS profile, it **SHALL**:

1. **Declare the profile** in `meta.profile` referencing the KPS StructureDefinition canonical URL.
2. **Populate all required elements** (minimum cardinality > 0) defined in the profile.
3. **Use codes from bound ValueSets** at the required binding strength (see terminology bindings in each profile).
4. **Reference conformant profiles** — Any resource referenced by a KPS profile (e.g., a Patient referenced from an AllergyIntolerance) must itself conform to the applicable KPS profile.
5. **Submit within a conformant Bundle** — KPS resources must be submitted inside a FHIR Bundle of type `document` or `transaction`, as defined in the [Capability Statement](CapabilityStatement-KPSFHIRIGCapabilityStatement.html).

---

### Terminology Binding Strengths

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Binding Strength</th>
      <th>Requirement</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Required</strong></td>
      <td>The element <strong>SHALL</strong> use a code from the specified ValueSet. No other codes are permitted.</td>
    </tr>
    <tr>
      <td><strong>Extensible</strong></td>
      <td>The element <strong>SHALL</strong> use a code from the specified ValueSet if an applicable code exists. A local code may be used only when the ValueSet does not cover the concept.</td>
    </tr>
    <tr>
      <td><strong>Preferred</strong></td>
      <td>Implementers are <strong>SHOULD</strong>-level encouraged to use a code from the specified ValueSet where clinically appropriate.</td>
    </tr>
    <tr>
      <td><strong>Example</strong></td>
      <td>The bound ValueSet provides illustrative examples only; any code may be used.</td>
    </tr>
  </tbody>
</table>

---

### Profile Overview

The following profiles are defined in this Implementation Guide. Each profile constrains a base FHIR R4 resource for use in the Kenya Patient Summary context.

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Profile</th>
      <th>Base Resource</th>
      <th>KPS Domain</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="StructureDefinition-ClientRegistrationModel.html">Client Registration Model</a></td>
      <td>Patient</td>
      <td>KPS.A – Registration</td>
      <td>Patient demographics for client registration, including national ID, UPI, insurance scheme enrollment, county of residence, and next-of-kin details.</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ClinicalConsultationModel.html">Clinical Consultation Model</a></td>
      <td>Encounter</td>
      <td>KPS.B – Consultation</td>
      <td>Clinical encounter record including visit type, attending provider, facility, diagnoses, and care plan.</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ke-kps-condition.html">KPS Condition</a></td>
      <td>Condition</td>
      <td>KPS.B – Consultation</td>
      <td>Active and resolved clinical conditions, coded with ICD-11 or SNOMED CT.</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ke-kps-allergy-intolerance.html">KPS Allergy Intolerance</a></td>
      <td>AllergyIntolerance</td>
      <td>KPS.B – Consultation</td>
      <td>Recorded allergies and intolerances, including substance, severity, and clinical status.</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-DiagnosticsModel.html">Diagnostics Model</a></td>
      <td>Observation / DiagnosticReport</td>
      <td>KPS.C – Diagnostics</td>
      <td>Laboratory test results and diagnostic observations, coded with LOINC.</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ClientTreatmentModel.html">Client Treatment Model</a></td>
      <td>MedicationStatement / MedicationRequest</td>
      <td>KPS.D – Treatment</td>
      <td>Prescribed and active medications, including drug, dose, route, frequency, and duration.</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-ImmunizationRecord.html">Immunization Record</a></td>
      <td>Immunization</td>
      <td>KPS.E – Immunization</td>
      <td>Vaccine administration records including dose, batch, site, and schedule adherence.</td>
    </tr>
  </tbody>
</table>

---

### Extension Overview

The following extensions are defined in this IG to capture Kenya-specific clinical and administrative data not present in base FHIR R4:

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Extension</th>
      <th>Applied To</th>
      <th>Purpose</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="StructureDefinition-kenya-counties-extension.html">Kenya Counties Extension</a></td>
      <td>Patient, Location</td>
      <td>Captures the patient's county of residence using Kenya's 47-county administrative classification.</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-insurance-information.html">Insurance Information Extension</a></td>
      <td>Patient</td>
      <td>Records the patient's active health insurance scheme enrollment (SHIF, PHIF, ECCIF, or private).</td>
    </tr>
    <tr>
      <td><a href="StructureDefinition-collection-context.html">Collection Context Extension</a></td>
      <td>Observation</td>
      <td>Provides context for specimen or observation collection including collection site and method.</td>
    </tr>
  </tbody>
</table>

---

### Capability Statement

The normative Capability Statement for this IG is available at:

- [KPS FHIR IG Capability Statement](CapabilityStatement-KPSFHIRIGCapabilityStatement.html)

Implementers **SHALL** declare their own Capability Statement (via `GET /metadata`) that references the KPS profiles they support, specifying which operations (`read`, `search`, `create`, `update`) they implement per resource type.

---

### Actor Conformance Requirements

#### Point-of-Service System (EMR / HMIS / eCHIS)

To claim conformance as a KPS data sender, a Point-of-Service System **SHALL**:

- Implement the KPS CapabilityStatement operations for `POST Bundle` (submit) and `GET /Patient/{id}/$summary` (retrieve)
- Generate resources that validate against the KPS profiles declared in this guide
- Populate patient identifiers using the national UPI or national ID in `Patient.identifier`
- Use terminology codes from the KPS-defined ValueSets for all coded elements at required binding strength
- Submit resources within a conformant FHIR Bundle containing all transitively referenced resources

#### Kenya HIE

To claim conformance as the interoperability layer, the Kenya HIE **SHALL**:

- Accept and validate KPS FHIR Bundles from authenticated Point-of-Service Systems
- Return a structured `OperationOutcome` resource for any invalid or rejected submission
- Route validated Bundle submissions to the Shared Health Record
- Maintain an IHE ATNA-conformant audit trail of all received and processed transactions

---

### Validation

Implementers are strongly encouraged to validate their FHIR resources against this IG before submission to the Kenya HIE. See the [Downloads](downloads.html) page for validator tools and instructions.
