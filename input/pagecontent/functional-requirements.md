<p>Functional requirements describe the capabilities a digital tracking and decision-support system must have to meet end-users’ needs and support tasks within the business process. These requirements define essential system functions such as user management, data collection, patient tracking, decision support, reporting, system integration, and inventory management. They ensure the system facilitates accurate data entry, automates workflows, provides actionable insights, and integrates with relevant healthcare systems for seamless operations.</p>


<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
   
  <thead>
    <tr>
      <th>Requirement ID</th>
      <th>Activity ID and name</th>
      <th>As a…</th>
      <th>I want…</th>
      <th>So that…</th>
    </tr>
  </thead>
  <tbody>
    <!-- Registration Process -->
    <tr>
      <td colspan="5"><strong>Business process KPS.A: Client Registration</strong></td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.1</td>
      <td>KPS.A5. Search for client record</td>
      <td>Health worker</td>
      <td>To search to see whether a client is already in the system (using at least 2 identifiers)</td>
      <td>I can check whether this is a new or existing client</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.2</td>
      <td>KPS.A5. Search for client record</td>
      <td>Health worker</td>
      <td>The system to be able to work offline</td>
      <td>I can carry on service provision regardless of internet connectivity. Once the system is back online, data is synchronized with the central system.</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.3</td>
      <td>KPS.A5. Search for client record</td>
      <td>Health worker</td>
      <td>The system to display sufficient data to identify the client</td>
      <td>I can confirm that the record belongs to the correct client</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.4</td>
      <td>KPS.A5. Search for client record</td>
      <td>Health worker</td>
      <td>The system to require me to search whether a client already exists before starting a new medical record entry</td>
      <td>I can avoid duplicate records and update information as necessary</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.5</td>
      <td>KPS.A7. Create a new client record</td>
      <td>Health worker</td>
      <td>To generate a Unique Patient Identifier (UPI) for new clients</td>
      <td>Each patient is uniquely identified across facilities and systems</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.6</td>
      <td>KPS.A8. Validate the client details</td>
      <td>Health worker</td>
      <td>To verify and update sociodemographic details including name, ID, address, and contact information</td>
      <td>The patient’s record is accurate and up to date</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.7</td>
      <td>KPS.A8. Validate the client details</td>
      <td>Health worker</td>
      <td>The system to integrate with the national Client Registry to pre-populate demographic data from a national ID</td>
      <td>Data entry is faster and more accurate</td>
    </tr>

    <!-- Clinical Consultation Process -->
    <tr>
      <td colspan="5"><strong>Business process KPS.B: Clinical Consultation</strong></td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.8</td>
      <td>KPS.B1. Determine reason for visit</td>
      <td>Health worker</td>
      <td>To document the reason for visit (chief complaint) for each encounter</td>
      <td>A clear and traceable clinical record is maintained</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.9</td>
      <td>KPS.B2. Take vital signs</td>
      <td>Nurse</td>
      <td>To record vital signs (blood pressure, temperature, weight, height, SpO2, MUAC) and have the system auto-calculate BMI</td>
      <td>Clinical assessments are standardized and decision support can be triggered</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.10</td>
      <td>KPS.B3. Check for signs of serious illness</td>
      <td>Health worker</td>
      <td>The system to automatically flag danger signs based on vital sign thresholds</td>
      <td>Urgent cases are escalated immediately</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.11</td>
      <td>KPS.B5. Capture or update client history</td>
      <td>Health worker</td>
      <td>To retrieve and update the patient’s allergy list, medication history, past medical history, and immunization records from the Shared Health Record (SHR)</td>
      <td>Clinical decisions are informed by complete, current history</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.12</td>
      <td>KPS.B10. Make informed decision on treatment</td>
      <td>Clinician</td>
      <td>To receive drug–allergy conflict alerts when prescribing medications</td>
      <td>Adverse drug events are prevented</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.13</td>
      <td>KPS.B – Encounter summary</td>
      <td>Health worker</td>
      <td>The system to automatically push a structured encounter summary to the Shared Health Record (SHR) upon encounter completion</td>
      <td>Continuity of care is enabled across facilities</td>
    </tr>

    <!-- Diagnostics Process -->
    <tr>
      <td colspan="5"><strong>Business process KPS.C: Diagnostics</strong></td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.14</td>
      <td>KPS.C1. Determine diagnostics to perform</td>
      <td>Clinician</td>
      <td>To order laboratory and diagnostic tests directly from the clinical consultation screen, linked to the patient’s UPI and encounter</td>
      <td>Test orders are traceable and results are matched to the correct patient and encounter</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.15</td>
      <td>KPS.C11. Update lab register</td>
      <td>Laboratory technologist</td>
      <td>To receive and record specimen details electronically in the Laboratory Information System (LIS)</td>
      <td>Specimen tracking and result reporting are accurate</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.16</td>
      <td>KPS.C12. Notify provider of results</td>
      <td>Health worker</td>
      <td>To receive in-system notifications when laboratory results are available</td>
      <td>Results are reviewed and actioned promptly</td>
    </tr>

    <!-- Treatment Process -->
    <tr>
      <td colspan="5"><strong>Business process KPS.D: Treatment</strong></td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.17</td>
      <td>KPS.D6. Determine dosages</td>
      <td>Clinician / Pharmacist</td>
      <td>The system to assist with dosage calculation based on patient weight, age, and clinical criteria</td>
      <td>Accurate and safe dosing is supported for all age groups</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.18</td>
      <td>KPS.D8. Initiate treatment and discuss adherence</td>
      <td>Health worker</td>
      <td>To document the prescribed medication regimen including drug, dose, frequency, duration, and route</td>
      <td>A complete medication record is maintained in the patient summary</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.19</td>
      <td>KPS.D11. Evaluate adverse drug reactions</td>
      <td>Health worker</td>
      <td>To record and report adverse drug reactions within the system</td>
      <td>Pharmacovigilance data is captured for national reporting</td>
    </tr>

    <!-- Immunization Process -->
    <tr>
      <td colspan="5"><strong>Business process KPS.E: Immunization</strong></td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.20</td>
      <td>KPS.E1. Check vaccine eligibility</td>
      <td>Health worker</td>
      <td>The system to display recommended vaccines based on patient age, pregnancy status, and immunization history</td>
      <td>All eligible patients receive vaccines per national guidelines (KEPI)</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.21</td>
      <td>KPS.E6. Record vaccine details</td>
      <td>Health worker</td>
      <td>To record vaccine administration details including date, dose, batch number, site, route, and administering provider</td>
      <td>A complete and auditable immunization record is maintained</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.22</td>
      <td>KPS.E8. Set reminder for next dose</td>
      <td>Health worker</td>
      <td>The system to automatically schedule a reminder for the next vaccine dose based on recommended intervals</td>
      <td>Multi-dose schedules are completed on time</td>
    </tr>

    <!-- Emergency Care Process -->
    <tr>
      <td colspan="5"><strong>Business process KPS.F: Emergency Care</strong></td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.23</td>
      <td>KPS.F1. Identify patient and retrieve SHR</td>
      <td>Emergency health worker</td>
      <td>To access a patient’s summary (allergies, conditions, blood type, medications) using a national ID or UPI in an emergency, even without the patient’s cooperation</td>
      <td>Emergency clinicians have the information they need to provide safe care</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.24</td>
      <td>KPS.F2. Review key history</td>
      <td>Emergency physician</td>
      <td>The system to prominently display allergy alerts and critical medical history at the top of the emergency patient view</td>
      <td>High-risk clinical decisions in emergencies are supported</td>
    </tr>

    <!-- Referral Process -->
    <tr>
      <td colspan="5"><strong>Business process KPS.G: Referral</strong></td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.25</td>
      <td>KPS.G2. Emergency referral</td>
      <td>Health worker (e.g. nurse)</td>
      <td>To be able to initiate an emergency referral at any point in a clinical workflow when danger signs are detected</td>
      <td>The patient is transferred safely and without delay</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.26</td>
      <td>KPS.G3. Identify and discuss referral location options</td>
      <td>Health worker</td>
      <td>To search for available referral facilities offering the required service via integration with the national Facility Registry</td>
      <td>I can refer my client to the nearest appropriate facility</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.27</td>
      <td>KPS.G6. Provide information to receiving facility</td>
      <td>Health worker</td>
      <td>To generate and electronically share a structured referral summary containing the patient’s clinical history, reason for referral, and current medications</td>
      <td>The receiving facility has the information needed for seamless continuity of care</td>
    </tr>
    <tr>
      <td>KPS.FXNREQ.28</td>
      <td>KPS.G – SMS reminders</td>
      <td>Health worker / System</td>
      <td>The system to send SMS reminders to patients with upcoming referral appointments (where consent is given)</td>
      <td>Patient attendance at referral appointments is improved</td>
    </tr>
  </tbody>
</table>
