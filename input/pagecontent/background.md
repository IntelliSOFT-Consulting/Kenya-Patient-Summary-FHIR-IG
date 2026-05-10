# Background

### Kenya's Digital Health Transformation

Kenya serves a population of approximately 56 million people through a tiered, mixed-provider health system spanning community-level services, dispensaries, health centers, county hospitals, and national referral facilities. Over the past decade, Kenya has undertaken significant investments in digitizing health service delivery, including the rollout of the Kenya Health Information System (KHIS/DHIS2), the Kenya Electronic Medical Record (KenyaEMR) for HIV care, and the Afya Community Health Information System (ECHIS) for community-level services.

Despite this progress, patients' clinical data remains fragmented across disconnected systems. When a patient moves between facilities, receives emergency care, or is referred to a specialist, the receiving provider frequently has no access to prior clinical history—leading to repeated diagnostic workups, medication errors, and suboptimal care.

The **Kenya Patient Summary (KPS)** addresses this gap by defining a nationally standardized, minimal dataset that can be generated, shared, and consumed by any conformant health information system in Kenya, enabling clinicians at every care level to access the essential health information they need.

---

### Policy and Regulatory Framework

The KPS is developed in alignment with Kenya's national digital health strategy and legislative framework:

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Policy / Legislation</th>
      <th>Relevance to KPS</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Digital Health Act, 2023</strong></td>
      <td>Establishes the Digital Health Agency (DHA), mandates health data portability, defines patient rights over their health data, and requires all public health systems to adopt interoperability standards.</td>
    </tr>
    <tr>
      <td><strong>Social Health Insurance Act, 2023</strong></td>
      <td>Creates the Social Health Authority (SHA) and the Social Health Insurance Fund (SHIF). The KPS provides the clinical foundation for integrated care and supports the evidence base needed for SHA benefit verification.</td>
    </tr>
    <tr>
      <td><strong>Kenya Health Policy 2014–2030</strong></td>
      <td>Sets the strategic direction for a patient-centered, integrated health system. The KPS operationalizes continuity of care as a core health system function.</td>
    </tr>
    <tr>
      <td><strong>National eHealth Policy 2016–2030</strong></td>
      <td>Provides the enabling policy for digital health investments and mandates the adoption of global standards including FHIR for health data exchange.</td>
    </tr>
    <tr>
      <td><strong>Kenya Data Protection Act, 2019</strong></td>
      <td>Governs the collection, processing, storage, and sharing of personal data. All KPS implementations must comply with its provisions on consent, data minimization, purpose limitation, and data subject rights.</td>
    </tr>
    <tr>
      <td><strong>Kenya Medical Records Act</strong></td>
      <td>Establishes requirements for medical record creation, retention, and access. KPS records must be retained per its provisions.</td>
    </tr>
    <tr>
      <td><strong>WHO Global Digital Health Strategy 2020–2025</strong></td>
      <td>Provides the international framework within which the KPS is positioned, emphasizing people-centered digital health and standards-based interoperability.</td>
    </tr>
  </tbody>
</table>

---

### Role of the Digital Health Agency of Kenya

The **Digital Health Agency of Kenya (DHA)**, established under the Digital Health Act 2023, is the apex body responsible for:

- Maintaining the **National Health Information Interoperability Framework (NHIIF)**
- Operating the **Kenya Health Information Exchange (Kenya HIE)** — the national middleware for health data exchange
- Curating the **national health terminology repositories** aligned with SNOMED CT, ICD-11, LOINC, and Kenya-specific code systems
- Publishing **FHIR Implementation Guides** for priority health domains, including the KPS

The DHA works in partnership with the Ministry of Health (MOH), the Social Health Authority (SHA), county health departments, EMR vendors, and development partners to coordinate national health data standards.

---

### The Kenya Health Information Architecture

The KPS operates within Kenya's Digital Public Infrastructure for Health (DPI-H), which is organized into the following layers:

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Layer</th>
      <th>Component</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Point of Service</strong></td>
      <td>EMRs, HMIS, eCHIS</td>
      <td>Health facility and community systems that capture clinical data (KenyaEMR, FunSoft, Afya eCHIS, and others). These systems generate and consume KPS FHIR resources.</td>
    </tr>
    <tr>
      <td><strong>Identity &amp; Registry</strong></td>
      <td>Client Registry, Health Worker Registry, Facility Registry</td>
      <td>Foundational registries that provide unique, trusted identifiers for patients, providers, and facilities. The Client Registry maintains the Unique Patient Identifier (UPI).</td>
    </tr>
    <tr>
      <td><strong>Interoperability</strong></td>
      <td>Kenya HIE</td>
      <td>National middleware that routes, validates, and transforms health data between systems. The HIE manages the Shared Health Record (SHR) — the longitudinal patient record that the KPS populates and retrieves from.</td>
    </tr>
    <tr>
      <td><strong>Terminology</strong></td>
      <td>Kenya Terminology Server</td>
      <td>Hosts and validates the code systems and value sets used across all health systems, including those defined in this IG.</td>
    </tr>
    <tr>
      <td><strong>Analytics &amp; Intelligence</strong></td>
      <td>National M&amp;E Platform</td>
      <td>Aggregates de-identified data from the SHR for health system monitoring, disease surveillance, and policy planning.</td>
    </tr>
  </tbody>
</table>

---

### Relationship to the International Patient Summary (IPS)

The KPS is modeled on and profiled from the **HL7 International Patient Summary (IPS)** standard (HL7 FHIR Release 4, version 1.1.0). The IPS defines a minimal, specialty-agnostic patient summary intended for cross-border emergency care. The KPS adapts this standard to Kenya's context by:

- **Constraining** certain IPS elements to reflect Kenya's local clinical workflows and care pathways
- **Extending** IPS profiles with Kenya-specific data elements (e.g., insurance scheme enrollment, county of residence, CHW registry identifiers)
- **Binding** clinical coded elements to Kenya-specific and locally adopted terminology (Kenya OCL code systems, SNOMED CT, ICD-11, LOINC)
- **Profiling** additional clinical domains relevant to Kenya's burden of disease (e.g., maternal health, immunization, HIV, TB, malaria)

Implementations conforming to the KPS will also produce IPS-conformant documents, enabling cross-border care for Kenyan patients where IPS is recognized.

---

### The Problem the KPS Solves

Without the KPS, the following scenarios result in preventable harm and inefficiency:

| Scenario | Without KPS | With KPS |
|----------|-------------|----------|
| Emergency care for unconscious patient | Clinician has no medical history — guesses treatment | Clinician retrieves allergy list, blood type, active conditions via UPI |
| Patient referred between facilities | Referral letter is paper-based or absent | Structured clinical summary is electronically available at receiving facility |
| Antenatal care at a new facility | ANC history is unavailable — repeated screening done | Complete ANC history, immunizations, and lab results retrieved from SHR |
| Insurance claim adjudication | Claims lack supporting clinical evidence | Clinical encounters and diagnoses in the KPS support automated claim verification |
| Medication prescribing | Prescriber unaware of prior allergies or current medications | Drug–allergy and drug–drug interaction alerts based on complete medication list |

---

### Standards Used in This IG

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Standard</th>
      <th>Purpose in KPS</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HL7 FHIR R4 (4.0.1)</td>
      <td>Base specification for all resource definitions, profiles, and APIs</td>
    </tr>
    <tr>
      <td>HL7 IPS (1.1.0)</td>
      <td>Parent IG from which KPS profiles are derived</td>
    </tr>
    <tr>
      <td>ICD-11</td>
      <td>Diagnosis coding for conditions and clinical findings</td>
    </tr>
    <tr>
      <td>LOINC</td>
      <td>Laboratory and observation coding</td>
    </tr>
    <tr>
      <td>SNOMED CT</td>
      <td>Clinical terminology for procedures, findings, and substances (including allergens)</td>
    </tr>
    <tr>
      <td>Kenya OCL Code Systems</td>
      <td>Kenya-specific local code systems managed via the Open Concept Lab (OCL) instance maintained by DHA</td>
    </tr>
    <tr>
      <td>SMART on FHIR / OAuth 2.0</td>
      <td>Authorization framework for API access</td>
    </tr>
    <tr>
      <td>IHE ATNA</td>
      <td>Audit trail and node authentication for security logging</td>
    </tr>
  </tbody>
</table>
