# Business Requirements

This section presents the business requirements for the Kenya Patient Summary (KPS) Digital Adaptation Kit (DAK). These requirements describe what the digital system must be able to do in order to support the workflows and use cases defined for the KPS.

The business requirements are organized into the following subsections:

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Section</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="concepts.html">Concepts</a></td>
      <td>Key abbreviations and glossary terms used throughout this guide.</td>
    </tr>
    <tr>
      <td><a href="generic-personas.html">Generic Personas</a></td>
      <td>Descriptions of the health worker roles and stakeholders involved in KPS workflows.</td>
    </tr>
    <tr>
      <td><a href="user-scenarios.html">User Scenarios</a></td>
      <td>Narrative descriptions of how end users interact with the digital system across different care contexts.</td>
    </tr>
    <tr>
      <td><a href="business-processes.html">Business Processes &amp; Workflows</a></td>
      <td>Visual and textual representations of the core clinical and administrative processes supported by the KPS.</td>
    </tr>
    <tr>
      <td><a href="decision-support-logic.html">Decision Support Logic</a></td>
      <td>Structured decision tables that encode the clinical rules and logic to be embedded in digital systems.</td>
    </tr>
    <tr>
      <td><a href="functional-requirements.html">Functional Requirements</a></td>
      <td>Capabilities the system must have to meet end-user needs and support tasks within the business process.</td>
    </tr>
    <tr>
      <td><a href="non-functional-requirements.html">Non-Functional Requirements</a></td>
      <td>General attributes ensuring the system's usability, security, performance, and technical constraints.</td>
    </tr>
  </tbody>
</table>

### Scope of Business Requirements

The business requirements documented in this DAK are scoped to the following KPS-supported clinical domains and processes:

- **Client Registration (KPS.A)** — Identification and demographic registration of patients across facilities and community settings.
- **Clinical Consultation (KPS.B)** — Comprehensive clinical assessment, including history, vitals, diagnosis, and care plan documentation.
- **Diagnostics (KPS.C)** — Ordering, performing, and recording laboratory and diagnostic investigations.
- **Treatment (KPS.D)** — Prescribing, administering, and monitoring therapeutic interventions.
- **Immunization (KPS.E)** — Recording and scheduling vaccines per national immunization guidelines (KEPI).
- **Emergency Care (KPS.F)** — Rapid clinical decision-making using shared patient summary data in emergency settings.
- **Referral (KPS.G)** — Facilitating safe and informed patient transfers between facilities and care levels.

### Alignment with Kenya Digital Health Strategy

All business requirements in this guide are grounded in Kenya's national health policy and digital health frameworks, including:

- **Kenya Digital Health Act, 2023** — Governing data ownership, portability, access rights, and interoperability standards.
- **Social Health Insurance Act, 2023** — Establishing the Social Health Authority (SHA) and requirements for integrated health records.
- **Kenya Health Policy 2014–2030** — Setting the strategic direction for a patient-centered, integrated health system.
- **National eHealth Policy 2016–2030** — Providing the policy foundation for digital health investments and standards adoption.
- **Kenya Data Protection Act, 2019** — Regulating the handling of personal health data including consent, retention, and access.

### Relationship to FHIR Profiles

Each business requirement maps to one or more FHIR profiles defined in this Implementation Guide. The traceability matrix between requirements and profiles is documented in the [Conformance](conformance.html) section.
