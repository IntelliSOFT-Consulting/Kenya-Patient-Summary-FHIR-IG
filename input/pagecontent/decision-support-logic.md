Decision support logic (also called decision tables or decision-support tables, or DTs) are structured representations of clinical rules that can be embedded in a digital system to guide health workers in delivering evidence-based care. 

This section presents key decision tables derived from Kenya's clinical guidelines and the WHO Digital Adaptation Kit methodology. Each table maps input conditions to recommended actions and links to the corresponding business process.

---

### DT.01 – Determine Whether a Client is New or Returning

**Trigger:** Health worker begins the registration process (KPS.A).

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Input Condition</th>
      <th>Condition Values</th>
      <th>Action</th>
      <th>Annotations</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Client has existing record in system (by ID, name, or biometric)</td>
      <td>Yes</td>
      <td>Retrieve and display existing client record for verification</td>
      <td>Prompt health worker to confirm record belongs to the correct client before updating</td>
    </tr>
    <tr>
      <td>Client has existing record in system</td>
      <td>No</td>
      <td>Create a new client record and issue a Unique Patient Identifier (UPI)</td>
      <td>Check client registry before creating; de-duplicate where possible</td>
    </tr>
    <tr>
      <td>Multiple matching records found</td>
      <td>Yes</td>
      <td>Display all matches and prompt health worker to select the correct one</td>
      <td>Flag suspected duplicates for administrative review</td>
    </tr>
  </tbody>
</table>

---

### DT.02 – Triage and Danger Sign Detection

**Trigger:** Health worker records vital signs during clinical consultation (KPS.B).

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Input Condition</th>
      <th>Condition Values</th>
      <th>Action</th>
      <th>Annotations</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Systolic blood pressure (mmHg)</td>
      <td>≥ 160</td>
      <td>Flag as danger sign – escalate to clinician immediately</td>
      <td>Severe hypertension threshold per Kenya MOH ANC guidelines</td>
    </tr>
    <tr>
      <td>Oxygen saturation (SpO2 %)</td>
      <td>&lt; 92%</td>
      <td>Flag as danger sign – initiate oxygen therapy assessment</td>
      <td>Applicable in all care settings</td>
    </tr>
    <tr>
      <td>Body temperature (°C)</td>
      <td>≥ 38.5</td>
      <td>Flag as fever – initiate fever management protocol</td>
      <td>Prompt evaluation for malaria, sepsis in endemic regions</td>
    </tr>
    <tr>
      <td>Respiratory rate (breaths/min)</td>
      <td>≥ 30 (adult)</td>
      <td>Flag as danger sign – evaluate for respiratory distress</td>
      <td>Different thresholds apply for paediatric patients</td>
    </tr>
    <tr>
      <td>MUAC (cm) – children 6–59 months</td>
      <td>&lt; 11.5</td>
      <td>Flag severe acute malnutrition – initiate SAM protocol</td>
      <td>Per Kenya National IMAM Guidelines</td>
    </tr>
    <tr>
      <td>All vitals within normal range</td>
      <td>Yes</td>
      <td>Proceed with standard clinical consultation workflow</td>
      <td></td>
    </tr>
  </tbody>
</table>

---

### DT.03 – Allergy Alert at Point of Prescribing

**Trigger:** Clinician initiates a prescription or treatment order (KPS.D).

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Input Condition</th>
      <th>Condition Values</th>
      <th>Action</th>
      <th>Annotations</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Prescribed drug matches a recorded allergy in the patient summary</td>
      <td>Yes – same substance or same drug class</td>
      <td>Block prescription and display allergy alert to clinician</td>
      <td>Clinician must document clinical override with justification if overriding</td>
    </tr>
    <tr>
      <td>Prescribed drug is in the same class as a recorded allergen</td>
      <td>Yes – cross-reactive class</td>
      <td>Display warning (non-blocking) and request clinician confirmation</td>
      <td>E.g., penicillin allergy → flag cephalosporins</td>
    </tr>
    <tr>
      <td>No allergy record found for the patient</td>
      <td>Unknown / Not recorded</td>
      <td>Prompt health worker to capture allergy status before prescribing</td>
      <td>Allergy status must be marked as "unknown" or "no known allergy" if not assessed</td>
    </tr>
    <tr>
      <td>No drug–allergy conflict</td>
      <td>No conflict found</td>
      <td>Allow prescription to proceed</td>
      <td></td>
    </tr>
  </tbody>
</table>

---

### DT.04 – Immunization Eligibility Check

**Trigger:** Clinician reviews immunization history during clinical visit (KPS.E).

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Input Condition</th>
      <th>Condition Values</th>
      <th>Action</th>
      <th>Annotations</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Pregnant woman with no prior TT vaccination record</td>
      <td>True</td>
      <td>Recommend TT1 dose – administer at current visit</td>
      <td>Per Kenya KEPI – Tetanus Toxoid-containing Vaccine (TTCV) schedule</td>
    </tr>
    <tr>
      <td>Pregnant woman with TT1 recorded; interval since TT1 ≥ 4 weeks</td>
      <td>True</td>
      <td>Recommend TT2 dose – administer and record</td>
      <td>Minimum 4-week interval between TT1 and TT2</td>
    </tr>
    <tr>
      <td>Child under 1 year: BCG not recorded</td>
      <td>True</td>
      <td>Recommend BCG – administer at birth contact or next visit</td>
      <td>Per Kenya KEPI infant immunization schedule</td>
    </tr>
    <tr>
      <td>Vaccine contraindicated (e.g., severe allergic reaction to prior dose)</td>
      <td>True</td>
      <td>Do not administer; document contraindication in immunization record</td>
      <td>Alert clinician to review alternative options</td>
    </tr>
    <tr>
      <td>Vaccine already administered and schedule complete for age group</td>
      <td>True</td>
      <td>No action needed – confirm schedule is complete in record</td>
      <td></td>
    </tr>
  </tbody>
</table>

---

### DT.05 – Referral Decision

**Trigger:** Clinician evaluates whether a referral is needed (KPS.B, KPS.G).

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Input Condition</th>
      <th>Condition Values</th>
      <th>Action</th>
      <th>Annotations</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Danger sign detected AND facility cannot manage condition</td>
      <td>True</td>
      <td>Initiate emergency referral – stabilize patient and arrange transport</td>
      <td>Bypass standard referral steps; use emergency referral pathway (KPS.G Step 2)</td>
    </tr>
    <tr>
      <td>Required diagnostic test or procedure not available at current facility</td>
      <td>True</td>
      <td>Initiate planned referral with complete clinical summary</td>
      <td>Share patient summary to receiving facility via HIE or referral form</td>
    </tr>
    <tr>
      <td>Specialist consultation required</td>
      <td>True</td>
      <td>Arrange specialist referral and share patient summary with receiving clinician</td>
      <td>Document referral reason, receiving facility, and expected follow-up date</td>
    </tr>
    <tr>
      <td>Condition manageable at current facility</td>
      <td>True</td>
      <td>Continue management at current facility; no referral needed</td>
      <td></td>
    </tr>
  </tbody>
</table>

---

### DT.06 – Gestational Age Estimation

**Trigger:** Clinician records last menstrual period (LMP) date during antenatal care consultation (KPS.B).

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Input Condition</th>
      <th>Condition Values</th>
      <th>Action</th>
      <th>Annotations</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>LMP date is known and reliable</td>
      <td>True</td>
      <td>Calculate gestational age (GA) from LMP using Naegele's rule; display estimated due date (EDD)</td>
      <td>GA = (Current date – LMP) in weeks; EDD = LMP + 280 days</td>
    </tr>
    <tr>
      <td>LMP date is unknown or uncertain</td>
      <td>True</td>
      <td>Flag for ultrasound confirmation; record GA as estimated range if clinically assessed</td>
      <td>Recommend first-trimester ultrasound (before 24 weeks) for accurate dating</td>
    </tr>
    <tr>
      <td>Gestational age &lt; 12 weeks (first trimester)</td>
      <td>True</td>
      <td>Schedule next ANC visit and first-trimester screening</td>
      <td>Per Kenya MOH ANC schedule</td>
    </tr>
    <tr>
      <td>Gestational age ≥ 28 weeks with no ultrasound on record</td>
      <td>True</td>
      <td>Recommend urgent ultrasound if not yet performed</td>
      <td>Late presentation increases risk; flag for clinician follow-up</td>
    </tr>
  </tbody>
</table>
