# Actors and Transactions

This section defines the system actors involved in Kenya Patient Summary data exchange and the transactions between them. These actors map to the roles and systems described in the Kenya Health Information Architecture.

---

### System Actors

#### Actor 1: Point-of-Service System (EMR / HMIS / eCHIS)

Health information systems operating at the facility or community level that capture clinical data and generate patient summary data.

**Examples:** KenyaEMR, Afya eCHIS, FunSoft HMIS, OpenMRS, proprietary hospital management systems.

**Responsibilities:**
- Register patients and generate or retrieve Unique Patient Identifiers (UPI) via the Client Registry
- Capture clinical data across KPS domains: registration, consultation, diagnostics, treatment, immunization, referral, and emergency care
- Generate conformant KPS FHIR resources (Patient, Condition, AllergyIntolerance, Observation, MedicationStatement, Immunization, Encounter, etc.)
- Push patient summary updates to the Shared Health Record (SHR) via the Kenya HIE at the end of each encounter
- Retrieve prior patient summaries from the SHR when a patient presents at a facility

**Required capabilities:**
- `POST /Bundle` to submit patient summary bundles
- `GET /Patient/$summary` or `GET /Bundle?patient={id}` to retrieve patient summaries
- `POST /Patient/$match` for patient identity resolution

---

#### Actor 2: Kenya Health Information Exchange (Kenya HIE)

The national interoperability middleware operated by the Digital Health Agency of Kenya (DHA). It serves as the central routing, validation, and coordination layer for all KPS data exchange.

**Responsibilities:**
- Receive and validate KPS FHIR Bundles submitted by Point-of-Service Systems
- Resolve patient identities against the national Client Registry (Master Patient Index)
- Route validated summaries to the Shared Health Record (SHR)
- Return structured FHIR OperationOutcome responses for invalid submissions
- Maintain an audit trail of all data exchange transactions per IHE ATNA profile

**Required capabilities:**
- Accept authenticated FHIR Bundle POST requests
- Validate resources against KPS profiles
- Return OperationOutcome for failed submissions

---

#### Actor 3: Shared Health Record (SHR)

The longitudinal health record repository maintained within the Kenya HIE that stores the accumulated patient summary data contributed by all Point-of-Service Systems.

**Responsibilities:**
- Persist KPS resources contributed by multiple facilities over time
- Serve consolidated patient summary data in response to authorized queries
- Maintain version history of clinical records
- Support FHIR document bundle generation for the complete patient summary

---

#### Actor 4: Client Registry (Master Patient Index)

The national identity resolution service that maintains Unique Patient Identifiers (UPI) and de-duplicates patient identities across systems.

**Responsibilities:**
- Assign and manage UPIs for all registered patients
- Resolve patient identity across systems using demographic matching (`$match`)
- Link facility-level patient IDs to the canonical national UPI
- Flag suspected duplicate records for administrative resolution

---

#### Actor 5: National Terminology Server

The Kenya Health Terminology Service, managed by DHA, that hosts all code systems and value sets used in this IG.

**Responsibilities:**
- Validate coded elements in submitted FHIR resources against registered code systems
- Serve ValueSet `$expand` and `CodeSystem $lookup` operations
- Maintain Kenya-specific local code systems (OCL-managed)

---

#### Actor 6: Analytics and Surveillance Platform

The national Monitoring & Evaluation (M&E) and disease surveillance platform that consumes de-identified or aggregated patient summary data.

**Responsibilities:**
- Receive de-identified, aggregated summary data from the SHR
- Generate health system performance indicators, disease burden reports, and utilization analytics
- Support national epidemic intelligence and public health surveillance

---

### Transaction Summary

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>ID</th>
      <th>Transaction Name</th>
      <th>Initiator</th>
      <th>Responder</th>
      <th>FHIR Operation</th>
      <th>Trigger</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>T-01</td>
      <td>Patient Identity Resolution</td>
      <td>Point-of-Service System</td>
      <td>Client Registry (MPI)</td>
      <td><code>POST /Patient/$match</code></td>
      <td>Patient arrives at facility; system queries MPI to retrieve UPI</td>
    </tr>
    <tr>
      <td>T-02</td>
      <td>Retrieve Patient Summary</td>
      <td>Point-of-Service System</td>
      <td>Kenya HIE / SHR</td>
      <td><code>GET /Patient/{id}/$summary</code></td>
      <td>Clinician opens patient record; prior summary is fetched from SHR</td>
    </tr>
    <tr>
      <td>T-03</td>
      <td>Submit Encounter Summary</td>
      <td>Point-of-Service System</td>
      <td>Kenya HIE → SHR</td>
      <td><code>POST /Bundle</code> (document type)</td>
      <td>Clinical encounter is completed; updated KPS resources are pushed to SHR</td>
    </tr>
    <tr>
      <td>T-04</td>
      <td>Submit Referral Summary</td>
      <td>Point-of-Service System (referring facility)</td>
      <td>Kenya HIE → SHR / Receiving facility</td>
      <td><code>POST /Bundle</code> (transaction type)</td>
      <td>Referral is initiated; structured clinical summary is sent to receiving facility</td>
    </tr>
    <tr>
      <td>T-05</td>
      <td>Emergency Patient Summary Access</td>
      <td>Point-of-Service System (emergency)</td>
      <td>Kenya HIE / SHR</td>
      <td><code>GET /Patient/{id}/$summary</code></td>
      <td>Patient presents in emergency without being able to provide history; SHR is queried using ID</td>
    </tr>
    <tr>
      <td>T-06</td>
      <td>Terminology Validation</td>
      <td>Point-of-Service System or Kenya HIE</td>
      <td>Kenya Terminology Server</td>
      <td><code>GET /CodeSystem/$lookup</code>, <code>GET /ValueSet/$validate-code</code></td>
      <td>Coded elements in resources are validated against registered terminology</td>
    </tr>
    <tr>
      <td>T-07</td>
      <td>Aggregate Data Reporting</td>
      <td>SHR</td>
      <td>Analytics Platform</td>
      <td>Batch extract (de-identified)</td>
      <td>Scheduled reporting cycle pushes aggregated, de-identified data to analytics platform</td>
    </tr>
  </tbody>
</table>

---

### Interaction Diagram

The diagram below illustrates the high-level interaction pattern for the two most common workflows: **patient encounter with SHR update** and **emergency patient summary access**.

**Encounter Workflow (T-01 → T-02 → T-03):**
1. Patient arrives → EMR queries Client Registry for UPI (T-01)
2. EMR retrieves prior patient summary from SHR (T-02)
3. Clinician completes encounter → EMR submits updated summary bundle to HIE/SHR (T-03)

**Emergency Access Workflow (T-05):**
1. Emergency team identifies patient via national ID
2. EMR queries HIE/SHR using UPI (T-05)
3. SHR returns consolidated summary: allergies, blood type, active conditions, medications

---

### Conformance Requirements per Actor

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Actor</th>
      <th>SHALL</th>
      <th>SHOULD</th>
      <th>MAY</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Point-of-Service System</td>
      <td>Support T-01 (patient identity resolution) and T-03 (submit encounter summary)</td>
      <td>Support T-02 (retrieve patient summary) and T-04 (referral summary)</td>
      <td>Support T-05 (emergency access) and T-06 (terminology validation)</td>
    </tr>
    <tr>
      <td>Kenya HIE</td>
      <td>Accept and validate Bundle submissions; return OperationOutcome for failures; route to SHR</td>
      <td>Log all transactions per IHE ATNA; support patient matching via MPI</td>
      <td>Support real-time terminology validation</td>
    </tr>
    <tr>
      <td>Shared Health Record</td>
      <td>Store and version all received KPS resources; serve <code>$summary</code> operation</td>
      <td>Support FHIR document bundle generation for complete patient summary</td>
      <td>Support subscription-based notifications to registered systems</td>
    </tr>
  </tbody>
</table>
