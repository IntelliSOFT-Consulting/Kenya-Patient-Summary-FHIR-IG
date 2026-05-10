# Security

Implementers of this guide must consider security at every layer of their implementation. The Kenya Patient Summary (KPS) contains highly sensitive personal health information governed by the **Kenya Data Protection Act 2019** and the **Digital Health Act 2023**. All systems exchanging KPS data must implement appropriate technical and organizational safeguards.

This section provides normative and recommended security guidance for production implementations. Implementers should additionally refer to the [HL7 FHIR Security specification](http://hl7.org/fhir/R4/security.html) and the [SMART App Launch Framework](http://hl7.org/fhir/smart-app-launch/).

---

### Transport Security

All KPS FHIR API endpoints **SHALL** enforce the following transport-level controls:

- **HTTPS only** — All API endpoints must be served exclusively over HTTPS. HTTP endpoints are prohibited in any environment beyond local development.
- **TLS 1.2 minimum** — TLS 1.2 is the minimum acceptable version; TLS 1.3 is strongly recommended.
- **Valid certificates** — TLS certificates must be issued by a recognized Certificate Authority (CA). Self-signed certificates are prohibited in production.
- **HTTP Strict Transport Security (HSTS)** — All servers must include the `Strict-Transport-Security` header.
- **Forward secrecy cipher suites** — Implementations must use cipher suites that support perfect forward secrecy (e.g., `ECDHE-RSA-AES256-GCM-SHA384`).

---

### Authentication

#### OAuth 2.0 / SMART on FHIR (Preferred)

Point-of-Service Systems **SHALL** use OAuth 2.0 as the authentication framework, following the SMART on FHIR App Launch specification:

| Flow | Use Case | Access Token Lifetime |
|------|----------|----------------------|
| Client Credentials | System-to-system (EMR → HIE → SHR) | Maximum 1 hour |
| Authorization Code | User-facing applications requiring patient context | Maximum 1 hour (session); refresh token maximum 24 hours |

**Minimum required SMART scopes:**

| Actor | Required Scopes |
|-------|----------------|
| EMR submitting summaries | `system/Patient.read`, `system/Bundle.write`, `system/Encounter.write` |
| EMR retrieving summaries | `system/Patient.read`, `system/Bundle.read` |
| Emergency access (clinician) | `user/Patient.read`, `user/Bundle.read` |

#### Mutual TLS (mTLS)

System-to-system integrations between the Kenya HIE and the SHR **SHOULD** use Mutual TLS in addition to OAuth 2.0 for double authentication assurance.

---

### Authorization

#### Role-Based Access Control (RBAC)

Access to KPS data **SHALL** be controlled using role-based access aligned to the [Generic Personas](generic-personas.html) defined in this guide:

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Role / Persona</th>
      <th>Read Own Patients</th>
      <th>Read Other Facility Patients</th>
      <th>Write / Update</th>
      <th>Emergency Override</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Clinician (Doctor, Nurse)</td>
      <td>Yes</td>
      <td>Yes (via HIE with audit)</td>
      <td>Yes</td>
      <td>Yes (documented)</td>
    </tr>
    <tr>
      <td>Clerical Staff</td>
      <td>Demographics only</td>
      <td>No</td>
      <td>Demographics only</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Pharmacist</td>
      <td>Medication list, allergies</td>
      <td>No</td>
      <td>Medication dispensing records</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Community Health Promoter</td>
      <td>Assigned patients only</td>
      <td>No</td>
      <td>Community-level observations</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Laboratory Technologist</td>
      <td>Ordered tests and results</td>
      <td>No</td>
      <td>Test results</td>
      <td>No</td>
    </tr>
    <tr>
      <td>System Administrator</td>
      <td>Audit logs and system config</td>
      <td>Audit logs only</td>
      <td>System configuration</td>
      <td>No</td>
    </tr>
    <tr>
      <td>Analytics / M&amp;E Platform</td>
      <td>De-identified data only</td>
      <td>De-identified data only</td>
      <td>No</td>
      <td>No</td>
    </tr>
  </tbody>
</table>

**Emergency override:** When a clinician invokes emergency access (e.g., for an unconscious patient), the override event **SHALL** be logged with the clinician's identity, timestamp, and clinical justification. Emergency overrides must be reviewed by a designated clinical governance officer.

---

### Data Privacy

All implementations **SHALL** comply with the Kenya Data Protection Act 2019 and the Digital Health Act 2023, including:

- **Purpose limitation** — KPS data may only be used for the clinical or public health purposes for which it was collected.
- **Data minimization** — Only data elements necessary for the clinical purpose **SHALL** be included in any KPS resource exchange.
- **Patient consent** — Implementations must capture and honor patient consent for data sharing across facilities, where required by national consent policy.
- **Data subject rights** — Patients have the right to access, correct, and request deletion of their health data. Systems must implement mechanisms to support Data Subject Access Requests (DSAR).
- **Retention** — KPS data must be retained per the Kenya Medical Records Act. Clinical records must not be deleted except in accordance with authorized data governance procedures.

---

### Audit Logging

All KPS FHIR operations **SHALL** generate audit events conforming to the **IHE Audit Trail and Node Authentication (ATNA)** profile. Each audit record **SHALL** include:

- **Timestamp** — Date and time of the event (UTC)
- **Actor identity** — User or system ID performing the operation
- **Patient identity** — UPI or national ID of the patient whose data was accessed
- **Resource(s) affected** — Resource type and ID (e.g., `Patient/12345`, `Bundle/abc`)
- **Action type** — Create (C), Read (R), Update (U), Delete (D), or Execute (E)
- **Outcome** — Success or failure (with error code)
- **Source** — Facility or system identifier

**Retention:** Audit logs **SHALL** be retained for a minimum of **7 years**, per the Kenya Medical Records Act.

**Access control:** Audit logs **SHALL** be immutable and accessible only to designated audit personnel and authorized regulators (e.g., DHA, Office of the Data Protection Commissioner).

---

### Data Integrity

- All submitted FHIR resources **SHALL** include a `meta.lastUpdated` timestamp.
- Bundle identifiers **SHALL** be globally unique within the submitting system's namespace.
- Digital signatures are **RECOMMENDED** for referral bundles and emergency patient summaries to support non-repudiation.
- Receiving systems **SHALL** reject duplicate Bundle submissions with the same `Bundle.identifier` within the same facility in the same calendar day.

---

### Incident Response

In the event of a suspected data breach involving KPS data:

1. The affected system operator **SHALL** notify the **DHA Security Operations Centre** within **24 hours** of discovery.
2. DHA **SHALL** notify the **Office of the Data Protection Commissioner (ODPC)** within **72 hours**, as required by the Kenya Data Protection Act 2019.
3. Affected patients **SHALL** be notified if the breach poses a high risk to their rights and freedoms.
4. A post-incident report **SHALL** be submitted to DHA within **30 days**, documenting the nature of the breach, data affected, remediation actions taken, and preventive measures implemented.

---

### Summary of Normative Requirements

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Requirement</th>
      <th>Conformance Verb</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>All API endpoints served over HTTPS with TLS 1.2+</td>
      <td><strong>SHALL</strong></td>
    </tr>
    <tr>
      <td>OAuth 2.0 / SMART on FHIR for authentication</td>
      <td><strong>SHALL</strong></td>
    </tr>
    <tr>
      <td>Role-based access control aligned to KPS personas</td>
      <td><strong>SHALL</strong></td>
    </tr>
    <tr>
      <td>IHE ATNA-conformant audit logging for all FHIR operations</td>
      <td><strong>SHALL</strong></td>
    </tr>
    <tr>
      <td>Audit log retention for minimum 7 years</td>
      <td><strong>SHALL</strong></td>
    </tr>
    <tr>
      <td>Compliance with Kenya Data Protection Act 2019</td>
      <td><strong>SHALL</strong></td>
    </tr>
    <tr>
      <td>DHA breach notification within 24 hours</td>
      <td><strong>SHALL</strong></td>
    </tr>
    <tr>
      <td>Mutual TLS for system-to-system HIE/SHR integration</td>
      <td><strong>SHOULD</strong></td>
    </tr>
    <tr>
      <td>Digital signatures on referral and emergency bundles</td>
      <td><strong>SHOULD</strong></td>
    </tr>
    <tr>
      <td>Multi-factor authentication for external network access</td>
      <td><strong>SHALL</strong></td>
    </tr>
  </tbody>
</table>
