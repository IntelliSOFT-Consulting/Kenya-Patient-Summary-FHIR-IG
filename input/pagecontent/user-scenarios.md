<p>User scenarios are a narrative description of how the end user would interact with the digital system. The user scenario is provided to help the reader better understand how the system will be used and how it would fit into existing workflows. It is to provide context in a story telling format. Furthermore, within the user scenario, it is possible to derive the key components that are further elaborated in the rest of the DAK. This includes the core data elements, decision-support logic and core functionality of a digital system that would be needed. </p>

### How to interpret user scenarios
<p>User scenarios are helpful tools not only to better understand the context in which a digital tool would operate, but also for some insights into what key data elements would need to be recorded and accounted for in the database.</p>
<p>Additionally, the context in which the tool would operate, illuminated by the user scenarios, provides insight into some functional and non-functional requirements that the system would also need. Highlighted in yellow are key data elements that need to be recorded and/or calculated. Highlighted in blue is the decision-support logic that can be automated in the system. Highlighted in green are key functional and non-functional requirements that should be included in the system.</p>

#### User scenario for community screening and referral

<table border="1" class="dataframe table table-striped table-bordered">
   <thead>
<tr class="header">
                <th style="vertical-align: top;">Key Personas</th>
                <th colspan="2">
                <ul>
                <li>Client : Charity</li> 
                <li>Community Health Promoter: Lucy</li></ul>               

  </th></tr></thead> <tbody><tr><td colspan="3">
<p>On a routine door-to-door visit, Charity is contacted by a Community Health Promoter (CHP), Lucy, and she reports feeling unwell for a few days, having missed her last menstrual period and feeling nauseous. Lucy registers Charity into the community health system (eCHIS) using her ID, creating a unique patient identifier (UPI). Based on symptoms suggestive of pregnancy, Lucy refers her to the nearest Level 2 health facility. Basic patient information and a clinical summary are sent to the Shared Health Record (SHR) to support continuity of care.</p>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Corresponding business processes
</td>
<td colspan="2">
<p> This scenario refers to the following business processes:</p>
<ul>
<li>Registration</li>
<li>Referral</li> 
</ul>
</td>
</tr>
</tbody>
</table>

#### User scenario for health facility entry and client registration
<table border="1" class="dataframe table table-striped table-bordered">
<thead>
<tr class="header">
        <th style="vertical-align: top;">Key Personas</th>
        <th colspan="2">
                <ul>
                <li>Client : Charity</li> 
                <li>Clerk: Abraham</li>
                </ul>
        </th>
</tr>
</thead> 
  <tbody>
  <tr>
  <td colspan="3">
  <p> Charity heads to the nearby government health center where she was referred. This is Charity’s first time coming to this healthcare facility, and Abraham confirms they have no record of her on file. Abraham uses her ID to access and retrieve her demographic data from the Client Registry, including her date of birth, alternative contact information and address, and registers her in the facility’s EMR. The registration on the EMR includes a confirmation of the health insurance coverage that she is registered under: SHIF, PHIF, and ECCIF schemes. Charity is now fully registered and ready for clinical consultation. Charity waits for a nurse to call her into the counselling room. </p>
  </td>
  </tr>
  <tr>
<td style="vertical-align: top;">Corresponding business processes
</td>
<td colspan="2">
<p> This scenario refers to the following business processes:</p>
<ul>
<li>Registration</li> 
</ul>
</td>
</tr>
</tbody>
</table>


#### User scenario for clinical assessment and first antenatal encounter
<table border="1" class="dataframe table table-striped table-bordered">
<thead>
<tr class="header">
        <th style="vertical-align: top;">Key Personas</th>
        <th colspan="2">
                <ul>
                <li>Client: Charity</li> 
                <li>Nurse: Jane</li>
                </ul>
        </th>
</tr>
</thead> 
  <tbody>
  <tr>
  <td colspan="3"> 
  <p>Nurse Jane meets Charity for her first ANC visit. While Jane closes the door and lowers the shade on the window to provide privacy, Jane begins to ask questions regarding Charity’s reason for coming to the facility, as well as the date of her last menstrual period(LMP). Charity explained that she had been feeling unwell and  is unsure of the exact date but recalls that it was around the New Year holiday. Jane administers a test to confirm Charity’s pregnancy. After confirming pregnancy, Jane proceeds to ask more detailed questions on Charity’s occupation, lifestyle behaviours (such as smoking and alcohol intake), general health status and obstetric history. Charity informs Jane that this is her first pregnancy. Based on the information Charity provides regarding her LMP, Jane is not able to conclude the exact gestational age but estimates her to be between 12 and 15 weeks. Jane lets Charity know that she would need an ultrasound as soon as possible before her 24th week of pregnancy, to better estimate her gestational age and due date.</p>

<p>After recording Charity’s background information in the digital system, Jane asks additional questions about any current symptoms. Jane also records Charity's weight and height measurements and conducts a physical exam, including taking her blood pressure to check that it is within the normal range. As Jane is recording these results in the digital system, she receives prompts to make sure she is providing the appropriate counselling and action. These prompts can also include reminders such as treating all pregnant women respectfully and without judgement, regardless of background or health status. 
Jane also orders any required additional tests, such as those for diabetes, hepatitis and HIV, being sure to inform Charity about all the tests being done and to answer any questions she has about them. She sends Charity to have these tests done in the laboratory.</p>

<p>Jane receives a notification that the lab results are ready. She calls Charity back into the consultation room, reviews the results and notes that all values are within the normal range. She documents the findings, updates the care plan, and reassures Charity by explaining the test results to her </p>

<p>As Jane continued her antenatal checklist, the digital system prompts her to review Charity’s tetanus immunization history in line with the Kenya Expanded Programme on Immunization (KEPI).Under these guidelines, the Tetanus Toxoid-containing Vaccine (TTCV) is administered to pregnant women as part of maternal and neonatal tetanus elimination. Since this was Charity’s first recorded pregnancy and there was no previous record of TT vaccination in her shared health summary, Jane recommended the first dose be administered today, with a follow-up dose scheduled for her next ANC visit.</p>

<p>After receiving Charity’s informed consent, Jane proceeded to prepare the vaccine. She verified the cold chain status using the digital vaccine management module integrated into the EMR and administered the TT injection. The vaccination details including batch number, administration site, dose, and date  were recorded digitally. A reminder was set for the next dose during her next ANC visit.</p>

<p>Jane completes the visit by counselling and advises Charity to reduce her caffeine intake and use a condom as she is still at risk of sexually transmitted infections (STIs) while pregnant. Jane also provides Charity with a supply of iron and folic acid (IFA) tablets to take daily.  Jane also discusses different options for managing symptoms (e.g. nausea, lower back pain) as well as how to recognise danger signs that require contacting a health-care facility right away; Jane gives this information in a manner that encourages Charity to feel confident about making informed decisions about her and her baby’s health. After checking whether Charity has any questions, Jane schedules the next ANC contact based on the suggested dates proposed by the digital system. </p>
</td>
  </tr>
  <tr>
<td style="vertical-align: top;">Corresponding business processes
</td>
<td colspan="2">
<p> This scenario refers to the following business processes:</p>
<ul>
<li>Clinical visit</li>
<li>Diagnostics</li>
<li>Treatment</li>
<li>Immunisation</li> 
</ul>
</td>
</tr>
</tbody>
</table>

#### User scenario for diagnostic interventions and results feedback
<table border="1" class="dataframe table table-striped table-bordered">
<thead>
<tr class="header">
        <th style="vertical-align: top;">Key Personas</th>
        <th colspan="2">
                <ul>
                <li>Client : Charity</li>
                <li>Nurse: Jane</li>
                <li>Laboratory Technician: Brian</li>
                <li>Laboratory Technologist: Annete</li>
                </ul>
        </th>
</tr>
</thead> 
  <tbody>
  <tr>
  <td colspan="3">
  <p>Following the clinical assessment, Jane, the attending nurse, identified the need for routine antenatal diagnostic tests to ensure the safe progression of Charity’s pregnancy. She explained the purpose of the tests , including:  HIV screening, hepatitis B testing, and blood sugar analysis,  using simple, non-technical language. Jane obtained informed consent from Charity and documented this in the digital system.</p>

<p>Jane then entered test orders into the facility’s Electronic Medical Record (EMR), ensuring they were linked to Charity’s unique patient ID (UPI) and the antenatal care plan. Charity’s blood and urine samples were collected by Brian and labelled using standard specimen tracking protocols.</p>

<p>Annete received the samples, logged them into the Laboratory Information System (LIS), and began the required tests. Upon verification and validation of the results, they were published to the LIS and made available to Jane through a notification in the EMR.</p> </td>
  </tr>
  <tr>
<td style="vertical-align: top;">Corresponding business processes
</td>
<td colspan="2">
<p> This scenario refers to the following business processes:</p>
<ul>
<li>Diagnostics</li> 
</ul>
</td>
</tr>
</tbody>
</table>

#### User scenario for external referral 
<table border="1" class="dataframe table table-striped table-bordered">
<thead>
<tr class="header">
        <th style="vertical-align: top;">Key Personas</th>
        <th colspan="2">
                <ul>
                <li>Client : Charity</li>
                <li>Nurse: Jane</li>
                </ul>
        </th>
</tr>
</thead> 
  <tbody>
  <tr>
  <td colspan="3">
  <p>Since there is no ultrasound at Jane's facility, Jane also provides Charity with a referral slip so that she can get her ultrasound done at an imaging center by a radiographer before she returns for her next contact. Charity will also receive a text (SMS) reminder (assuming she has given consent during her registration) ahead of her next scheduled contact. Jane reassures Charity that the ultrasound is a routine and precautionary measure, and outlines the referral process:</p>

<p> Referral Letter: Jane prepares a detailed letter outlining Charity's case, including medical history, current concerns, and relevant findings. 
Hospital Selection: Jane identifies the nearest level 3 hospital equipped with radiography services and other diagnostic tools. 
Communication & Coordination: Jane contacts the hospital to inform them of Charity's referral and ensure a smooth handover of care.
Transportation Assistance: Depending on resources and Charity's situation, Jane explores options to assist with transportation to the hospital (e.g., ambulance, referral network program).</p>

<p> She provides Charity with the referral slip containing all necessary information (hospital address, appointment details, contact numbers). Jane reminds Charity about the importance of attending the appointment and encourages her to ask any questions or express any concerns. Jane provides educational materials or contacts for support groups to help Charity feel informed and empowered during this process. </p>
<p>Jane then asks Charity to head to the billing office, where the services are recorded and billed to facilitate the claim to be filed to SHIF, which then ends the encounter. Select details from this encounter are then sent to the SHR to facilitate Charity’s continuity of care. </p> </td>
  </tr>
  <tr>
<td style="vertical-align: top;">Corresponding business processes
</td>
<td colspan="2">
<p> This scenario refers to the following business processes:</p>
<ul>
<li>Referral</li> 
</ul>
</td>
</tr>
</tbody>
</table>

#### User scenario for emergency admission and continuity of care

<table border="1" class="dataframe table table-striped table-bordered">
<thead>
<tr class="header">
        <th style="vertical-align: top;">Key Personas</th>
        <th colspan="2">
                <ul>
                <li>Client : Charity</li>
               <li>Emergency team</li>
               <li>Emergency physician</li>
                </ul>
        </th>
</tr>
</thead> 
  <tbody>
  <tr>
  <td colspan="3"> <p>At seven months pregnant, Charity is involved in a car accident and unconscious, and is rushed by well-wishers to the A&E in a level 5 hospital. A quick assessment of her vital signs indicates that she has lost a lot of blood and is in a medical emergency needing urgent care. In the absence of a next of kin, the emergency team uses the ID in her belongings to access her unique patient ID, which the doctor uses to access Charity’s SHR, which reveals that Charity is a diabetic and hypertensive and of blood group B+. She is also allergic to penicillin. Further details of her previous pregnancy, which ended in a miscarriage, are accessed. It is also clear that Charity had been diagnosed with preeclampsia. </p>
<p>This information gives the emergency physician enough context to initiate Charity’s care plan, which includes stabilization, an obstetric ultrasound scan to assess the state of the foetus, and a blood transfusion for the blood loss. Charity is then admitted to the HDU. Five days later charity is well and ready to be discharged home. Her bill is prepared, and her relatives are asked to clear it with the finance team, after which she is given her discharge medication and allowed to go home. </p>
<p> This encounter is terminated, and information is sent to the SHR.</p></td>
  </tr>
  <tr>
<td style="vertical-align: top;">Corresponding business processes
</td>
<td colspan="2">
<p> This scenario refers to the following business processes:</p>
<ul>
<li>Emergency care</li> 
</ul>
</td>
</tr>
</tbody>
</table>

#### Table 4. Interpretation of the scenario community screening and referral


<table border="1" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Data Elements to Be Collected</th>
      <th>Decision Logic to Be Embedded</th>
      <th>Functional and Non-Functional Requirements</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Patient ID</td>
      <td>Fill patient details e.g. name, age, etc from patient ID</td>
      <td>
        - Ability to support generation of unique patient identifiers<br>
        - Ability to identify patient Unique ID based on the patient ID
      </td>
    </tr>
    <tr>
      <td>Basic demographic details (implied: name, age, contact)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Patient data (marital status, address, contact, next of kin details, preferred language)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Signs and symptoms (e.g. nausea)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Referred facility</td>
      <td></td>
      <td>SHR integration for data sharing</td>
    </tr>
    <tr>
      <td>CHW Identifier</td>
      <td></td>
      <td>Integration with CHW Registry</td>
    </tr>
  </tbody>
</table>


#### Table 5. Interpretation of the scenario for health facility entry 


<table border="1" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Data Elements to Be Collected</th>
      <th>Decision Logic to Be Embedded</th>
      <th>Functional and Non-Functional Requirements</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Patient ID</td>
      <td>Fill patient details e.g. name, age, etc from patient ID</td>
      <td>Ability to support generation of unique patient identifiers</td>
    </tr>
    <tr>
      <td>Basic demographic details (implied: name, DOB, contact)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Patient data (marital status, address, contact, next of kin details, preferred language)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Health insurance coverage (SHIF, PHIF, ECCIF)</td>
      <td></td>
      <td>Billing and claims filing module</td>
    </tr>
    <tr>
      <td>Last menstrual period</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Billing details</td>
      <td></td>
      <td>Billing and claims filing module</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>
        Integration of facility EMR with client registry and SHR<br>
        Ability to send SMS reminders
      </td>
    </tr>
  </tbody>
</table>


#### Table 6. Interpretation of the scenario for clinical assessment and first antenatal encounter


<table border="1" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Data Elements to Be Collected</th>
      <th>Decision Logic to Be Embedded</th>
      <th>Functional and Non-Functional Requirements</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Patient ID</td>
      <td></td>
      <td>Integration of facility EMR with client registry</td>
    </tr>
    <tr>
      <td>Encounter type (e.g. OutPatient)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Signs and symptoms</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Triage (e.g. height, weight, blood pressure)</td>
      <td>Calculate BMI<br>Flag abnormal vitals (e.g. high blood pressure) for urgent care</td>
      <td></td>
    </tr>
    <tr>
      <td>Past medical history</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Conditions</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Allergies</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Obstetric history (e.g. Gestational age estimate, LMP)</td>
      <td>Calculate estimated gestational age</td>
      <td></td>
    </tr>
    <tr>
      <td>Social History (e.g. occupation, lifestyle behaviors)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Lab tests and results: diabetes, hepatitis, HIV</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Medication and care plan</td>
      <td>Prompt provider with respectful maternity care reminders</td>
      <td></td>
    </tr>
    <tr>
      <td>Next appointment date</td>
      <td>Schedule next visit based on gestation</td>
      <td>Ability to send SMS reminders</td>
    </tr>
    <tr>
      <td>Billing details</td>
      <td></td>
      <td>Billing and claims filing module</td>
    </tr>
    <tr>
      <td>Encounter summary</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Practitioner Identifier</td>
      <td></td>
      <td>Integration with Health Worker Registry</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>Integration with SHR (Shared Health Record)</td>
    </tr>
  </tbody>
</table>


#### Table 7. Interpretation of the scenario for external referral


<table border="1" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Data Elements to Be Collected</th>
      <th>Decision Logic to Be Embedded</th>
      <th>Functional and Non-Functional Requirements</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Referral reason</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Referral provider</td>
      <td></td>
      <td>Integration of facility EMR with Health Worker Registry</td>
    </tr>
    <tr>
      <td>Referral facility</td>
      <td></td>
      <td>Integration of facility EMR with Facility Registry</td>
    </tr>
    <tr>
      <td>Receiving facility</td>
      <td></td>
      <td>Integration of facility EMR with Facility Registry</td>
    </tr>
    <tr>
      <td>Referral instructions</td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>


#### Table 8. Interpretation of the scenario emergency admission and continuity of care

<table border="1" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
      <th>Data Elements to Be Collected</th>
      <th>Decision Logic to Be Embedded</th>
      <th>Functional and Non-Functional Requirements</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Patient ID</td>
      <td></td>
      <td>Integration of facility EMR with client registry</td>
    </tr>
    <tr>
      <td>Encounter type: Emergency</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Triage (e.g. vital signs)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Emergency Medical History (diabetes, hypertension, miscarriage, preeclampsia, allergy)</td>
      <td>Alert on medical contraindications due to allergy</td>
      <td></td>
    </tr>
    <tr>
      <td>Blood type</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Emergency diagnosis and procedures (e.g. blood transfusion, obstetric ultrasound)</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Admission and discharge dates</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Billing data</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>Discharge medication</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td>Integration of facility EMR with SHR (Shared Health Record)</td>
    </tr>
  </tbody>
</table>
