A business process, or process, is a set of related activities or tasks performed together to achieve the objectives of the health Programme area, such as registration, counseling, and referrals. 
Workflows are a visual representation of the progression of activities (tasks, events, and interactions) that are performed within the business process. The workflow provides a story for the business process being diagrammed and is used to enhance communication and collaboration among users, stakeholders, and engineers.


<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
   
  <thead>
    <tr>
      <th>Letter</th>
      <th>Process Name</th>
      <th>Process ID</th>
      <th>Personas</th>
      <th>Objectives</th>
      <th>Task Set</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>A</td>
      <td>Client registration</td>
      <td>KPS.A</td>
      <td>Client, Clerk, Community Health Worker</td>
      <td>To identify and register or update the client’s personal details so that they can benefit from health-care services.  
        <br>Starting point: Client checks in at facility or is contacted by a health worker.</td>
      <td>
        <ul>
          <li>Search for client record</li>
          <li>Review and update client record</li>
          <li>Create a new client record</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>B</td>
      <td>Clinical Consultation</td>
      <td>KPS.B</td>
      <td>Client, Health-care provider (clinician, nurse, CHW)</td>
      <td>To conduct a comprehensive clinical assessment, document in SHR, support decision-making, and trigger follow-up care.  
        <br>Starting point: Client has been registered and is being seen for a clinical visit.</td>
      <td>
        <ul>
          <li>Take client history</li>
          <li>Review/update past history & allergies</li>
          <li>Clinically evaluate the client</li>
          <li>Request recommended tests</li>
          <li>Review results with client</li>
          <li>Record diagnostic decision & procedures</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>C</td>
      <td>Diagnostics</td>
      <td>KPS.C</td>
      <td>Client, Laboratory technologist, Health-care provider</td>
      <td>To investigate and obtain results via on-site or off-site diagnostics.  
        <br>Starting point: Provider identifies the need for testing.</td>
      <td>
        <ul>
          <li>Collect specimens</li>
          <li>Perform or send tests</li>
          <li>Communicate results to provider</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>D</td>
      <td>Treatment</td>
      <td>KPS.D</td>
      <td>Client, Health-care provider, Pharmacist</td>
      <td>To initiate treatment, monitor adherence, and prevent complications.  
        <br>Starting point: Client has a diagnosis.</td>
      <td>
        <ul>
          <li>Perform additional evaluations</li>
          <li>Determine care plan</li>
          <li>Set treatment regimen & dosage</li>
          <li>Discuss adherence & side effects</li>
          <li>Schedule follow-ups</li>
          <li>Initiate & record treatment</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>E</td>
      <td>Immunization</td>
      <td>KPS.E</td>
      <td>Client, Health-care provider, Pharmacist/Vaccine Coordinator</td>
      <td>To ensure timely vaccination based on guidelines and eligibility.  
        <br>Starting point: Client assessed as eligible for immunization.</td>
      <td>
        <ul>
          <li>Review immunization history</li>
          <li>Determine eligibility</li>
          <li>Counsel and obtain consent</li>
          <li>Prepare and administer vaccine</li>
          <li>Record vaccine data</li>
          <li>Schedule next dose</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>F</td>
      <td>Emergency care</td>
      <td>KPS.F</td>
      <td>Client, Health worker (clinician, CHW)</td>
      <td>To support rapid, informed emergency decisions and interventions using SHR data.  
        <br>Starting point: Client identified for emergency services.</td>
      <td>
        <ul>
          <li>Identify patient and retrieve SHR</li>
          <li>Review key history (e.g., allergies)</li>
          <li>Provide emergency interventions</li>
          <li>Record decisions, vitals, procedures</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>G</td>
      <td>Referral</td>
      <td>KPS.G</td>
      <td>Client, Health worker (clinician, CHW)</td>
      <td>To ensure timely referral to facilities offering unavailable services.  
        <br>Starting point: Clinician determines client needs services unavailable locally.</td>
      <td>
        <ul>
          <li>Determine if it's an emergency</li>
          <li>Discuss referral locations</li>
          <li>Contact destination facility</li>
          <li>Share info with destination</li>
          <li>Answer client questions</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>

### Overview of key processes
This section illustrates the workflows of the identified processes using standardized notations for business process mapping, based on the business process model and notation (BPMN) standard (11). Table below provides an overview of this notation.


<table border="1" class="dataframe table table-striped table-bordered"> 
  <thead>
    <tr>
      <th>Symbol</th>
      <th>Symbol Name</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td></td>
      <td>Pool</td>
      <td>
      <p> The pool assumes process control – in other words, it assigns the tasks. A pool consists of one or more “swim lanes” that depict all the individuals or types of users that are involved in carrying out the business process or workflow. Diagrams should be clear, neat and easy for all viewers to understand the relationships across the different swim lanes. For example, a pool would depict the business process of conducting an outreach activity, which involves multiple stakeholders represented by different lanes in that pool.<br><br>
      A business process diagram can contain two or more pools that connect through message flows (messages received from outside of the pool). This indicates different process owners collaborating and exchanging information.<br><br>
      For example, in the case of a referral, the health facility “A” (the referring facility) represents the process owner that assigns internally the tasks for the actors represented as swim lanes in the pool. The health facility “B” (the receiving facility) has allocated its own pool and it’s considered a different process owner, with the same role. These 2 facilities exchange information relevant for a referral (client history, referral details, etc.), represented as message flows, but each facility has control only over the internal activities, without directly impacting the activities of the other facility.</p></td>
    </tr>
    <tr>
      <td></td>
      <td>Swim lane</td>
      <td>Each individual or type of user is assigned to a swim lane, a designated area for noting the activities performed or expected by that specific actor.</td>
    </tr>
    <tr>
      <td></td>
      <td>Start event or trigger event</td>
      <td>The workflow diagram should contain both a start and an end event, defining the beginning and completion of the task, respectively.</td>
    </tr>
    <tr>
      <td></td>
      <td>Start event message</td>
      <td>This is a type of a start event. It can include information exchanged between two systems, like data, alerts, or notifications.</td>
    </tr>
    <tr>
      <td></td>
      <td>End event</td>
      <td>There can be multiple end events depicted across swim lanes, but for clarity only one per swim lane is recommended.</td>
    </tr>
    <tr>
      <td></td>
      <td>Activity, process, step or task</td>
      <td>Each activity should start with a verb, e.g., “register client”, “calculate risk”. Includes all actions in a swim lane.</td>
    </tr>
    <tr>
      <td></td>
      <td>Activity with subprocess</td>
      <td>Used when a task is too complex and must be detailed in another diagram. Represents a subprocess of the main activity.</td>
    </tr>
    <tr>
      <td></td>
      <td>Activity with business rule</td>
      <td>Denotes a task that involves decision-support or business rules. Typically supported by a separate decision logic table.</td>
    </tr>
    <tr>
      <td></td>
      <td>Sequence flow</td>
      <td>Shows the order from one task to another. Should not cross other flows and each task has one output (except gateways and end).</td>
    </tr>
    <tr>
      <td></td>
      <td>Message flow</td>
      <td>Represents information passed between two pools (e.g., different facilities or systems).</td>
    </tr>
    <tr>
      <td></td>
      <td>Exclusive gateway</td>
      <td>Shows a binary (e.g., yes/no) decision. Limited to two outputs. Complex logic should use “activity with business rule”.</td>
    </tr>
    <tr>
      <td></td>
      <td>Parallel gateway</td>
      <td>Used to perform tasks in parallel or join multiple incoming flows. It does not evaluate conditions.</td>
    </tr>
    <tr>
      <td></td>
      <td>Throw – link event</td>
      <td>Marks the end of a workflow that continues elsewhere (off-page connector). Should be followed by a catch – link.</td>
    </tr>
    <tr>
      <td></td>
      <td>Catch – link event</td>
      <td>Starts a new process on a different page from the throw – link or continues a subprocess. Must be paired with a throw – link.</td>
    </tr>
    <tr>
      <td></td>
      <td>Ad hoc subprocess</td>
      <td>Represents multiple activities that may run in any order, multiple times, or be skipped.</td>
    </tr>
    <tr>
      <td></td>
      <td>Loop activity</td>
      <td>Represents a repeating activity until a specified condition is met. Condition is noted as an annotation.</td>
    </tr>
  </tbody>
</table>


### Overview of key KPS processes

### Workflows
<p>Workflows represent the progression of activities performed within the business process. They help users and stakeholders understand the relationship between activities, data elements and decision-support needs. The workflows shown depict processes that have been generalized and may not reflect variation and nuances across different settings. Also, the simplicity of the workflow may not adequately illustrate non-linear steps that may occur.</p>

#### A. Business process for registration
<b>Objective: </b> To identify and register or update the client’s personal details so that they can benefit from KPS-related services

<b>REGISTRATION BUSINESS PROCESS NOTES AND ANNOTATIONS</b>

<b>General note</b>
<p>Registration may be conducted as a stand-alone process by a data entry clerk or administrative persona ahead of the clinical visit or it may be conducted directly by the health worker as part of the overall encounter. These activities can be performed either in the health-care facility or in the community (e.g. client’s home, workplace, mobile van), depending on where the encounter takes place.</p>

1.<b>Was the visit initiated by the client or by the provider?</b>
<ul>
<li>Depending on the reasons that triggered the encounter, the starting activity could be represented either by client’s arrival at the health-care facility or by the health worker’s arrival at the client’s location. </li>
<li>Guidelines and guidance:</li>
<li>Ministry of Health: Primary Health Care Network Guidelines</li>
</ul>

2.<b>Client arrives at facility</b>
<ul>
<li>The client arrives at the health-care facility and notifies the outpatient department of their arrival to be further guided.</li>
<li>The client could already be registered at the health-care facility for another service, for example, HIV, diabetes.</li>
<li>When digital tools, such as video-supported treatment, are used for communicating with the client (e.g. follow-up checks) this activity could be represented by a video call, phone call or other appropriate digital interaction.</li>
</ul>

3.<b>Arrive at the client’s location</b>
<ul><li>The health worker arrives at the client’s location.</li></ul>

4.<b>Gather the client’s details</b>
<ul>
<li>Ask the client whether they have previously been issued with a unique identifier.</li>
<li>Does the client have a card, number or barcode?</li>
<li>Does the client say they are a returning or referred client?</li>
<li>If a referral, check for the referral slip or data from the community.</li>
<li>Determine whether the client is new to the health-care facility or health post.</li>
<li>For returning clients, details will be retrieved from the facility’s registry of clients or, if possible, from a central client registry.</li>
</ul>

5.<b>Search for the client record</b>
<ul><li>This search process can be done through several different means depending on what mechanisms are available in-country. For example, clients can be searched for by using their name, unique identifier, a quick response (QR) code or even biometrics.</li></ul>

6.<b>Has the correct client record been identified?</b>
<ul>
<li>If multiple records are found for the client, consider merging or deleting duplicate records, according to the HMIS guidelines.</li>
</ul>

7.<b>Create a new client record</b>
<ul>
<li>Issue a unique identifier if used and possible at the facility.</li>
</ul>

8.<b>Validate the client details</b>
<ul><li>Review and update client record.
<ul><li>8.1. Review the sociodemographic data with the client<br>
Review the client’s non-clinical information, that is, name, address, contact information, etc.</li>
<li>8.2. Is an update needed?<br>
Has the client moved? Have they changed their contact information or has any other sociodemographic information changed?</li>
<li>8.3. Update the client details</li>
The client can provide updated information if they have moved or changed their details recently.
</ul>
</li>
<li>Merge or update client records.</li>
<li>This activity could also happen during other clinical encounters, for example, outreaches and medical camps.</li></ul>

9.<b>Checking in the client</b>
<ul>
<li>Record the client’s updated details in the client registry.</li>
<li>Add the client to the relevant queue for the specific clinical visit e.g outpatient consultation, special clinic consultation.</li>
<li>Send or share intake confirmation to or with the referring facility as warranted.</li>
</ul>



#### B. Business process for clinical consultation
<b>Objective: </b> To conduct a comprehensive clinical assessment and initiate appropriate care plan

<b>CLINICAL CONSULTATION BUSINESS PROCESS NOTES AND ANNOTATIONS</b>
<b>Steps for clinical consultation process</b>

1.<b>Determine reason for visit</b>		
<ul><li>Search for client details in the record system and determine the reason for visit.</li></ul>
<p><b>Initial screenings steps 2–4</b></p>
<p>Steps may be performed in parallel. One or more of these steps are often performed before meeting with the provider.</p>

2.<b>Take vital signs</b>
<ul><li>Also record weight, height, etc. For children, weight will be needed to determine dosage and to check for malnutrition.</li></ul>
3.<b>Check for signs of serious illness</b>
<ul>
<li>Any person who has signs of serious illness should be referred to the appropriate higher-level facility for management. Danger signs differ by age group.</li> 
<li>Decision logic: 
<ul><li>Check for signs for serious illness </li></ul>
</li>
</ul>
4.<b>Seriously ill<b>
<ul><li>Any person who has signs of serious illness should be referred to the appropriate higher-lever facility for management or receive emergency care, depending on availability and policies.</li></ul>
5.<b>Capture or update client history</b>
<ul><li>Discuss history with client and review available records.</li>
<li>Include checking medications, symptoms, whether taking all the prescribed drugs, immunization history, use of contraception, signs that she may be pregnant, mental health screening, drug use and nutrition.</li>
<li>Check other comorbidity lists.</li></ul>
6.<b>Assess medical history and risk factors</b>
7.<b>Determine social and economic factors</b>
<ul><li>Capture information related to the client’s occupation, socioeconomic risk factors (e.g. homelessness, imprisonment) and other health-related risk factors such as:</li></ul>
<p>– disorders due to alcohol use;</p>
<p>– HIV;</p>
<p>– smoking;</p>
<p>– undernutrition;</p>
<p>– disorders due to drug use;</p>
<p>– silica exposure, silicosis;</p>
<p>– viral hepatitis;</p>
<p>– other clinical risk factors, for example, treatment with anti-TNFα3, dialysis, organ or haematological transplantation.</p>

<b>Is referral needed?</b>
<ul><li>If, during the evaluation, signs are identified requiring urgent medical care (e.g. gastrointestinal, circulatory, respiratory, neurological) and these cannot be offered at the current facility, a referral to the first referral level of care as per national guidelines, shall be considered. </li></ul>

8.<b>Laboratory diagnostics needed?</b>
<ul><li>Determine  based on the patient presentation if any tests are needed </li></ul>
9.<b>Determine treatment options</b>
10.<b>Make informed decision on treatment</b>
<ul><li>The client will choose the treatment option after being advised by the clinician on all treatment options and what benefit/risks they present</li></ul>

<p>Provide integrated services, steps 11–14 </p>

11 <b>Offer voluntary partner and family services</b><br>
12 <b>Offer sexual and reproductive health services</b><br>
13 <b>Provide preventive treatment</b><br>
14 <b>Offer other services</b><br>
<b>Follow-up needed?</b>


#### C. Business process for diagnostics
<b>Objective: </b> To investigate and obtain results through on-site or off-site diagnostics.

<p><b>DIAGNOSTICS BUSINESS PROCESS NOTES AND ANNOTATIONS</b> </p>
<p><b>General note</b></p> 
 
<p>The clinician may order an investigation during an outpatient consultation or inpatient round. Investigations can include:</p>
<ul>
  <li>An RDT performed by the healthcare provider.</li>
  <li>An order to perform the investigation at a laboratory or diagnostic service at the current facility, if available.</li>
  <li>An order to refer the client to another facility for the investigation.</li>
  <li>An order to collect a sample from the client and transport it to another facility.</li>
  <li>Other specialized diagnostic investigations.</li>
</ul>

<b>Steps for Diagnostic Process</b>
<ol>
  <li>
    <p><strong>Determine the diagnostics to perform</strong></p>
    <ul>
      <li>Check supplies and prioritize based on urgency.</li>
      <li>Confirm if the facility can accommodate and perform the required diagnostic services.</li>
      <li>If the facility cannot perform or collect the sample for diagnostics, a referral may be required.</li>
    </ul>
  </li>

  <li>
    <p><strong>Referral needed?</strong><br>
    An order to refer the client to another facility may be issued if the current facility cannot perform or collect the required diagnostics.</p>
  </li>

  <li>
    <p><strong>Rapid or point-of-care diagnostic by provider?</strong><br>
    Based on available diagnostics, provider skill, and facility processes, the provider may take a specimen on-site or refer for off-site testing. Diagnostics may be performed during the visit or after, with the client returning to the provider for follow-up.</p>
  </li>

  <li>
    <p><strong>Collect specimen (Rapid/Point-of-care)</strong></p>
    <ul>
      <li>Provider briefs the client.</li>
      <li>Specimen is collected by the healthcare provider for rapid or point-of-care diagnostic testing.</li>
    </ul>
  </li>

  <li>
    <p><strong>Perform rapid diagnostic or point-of-care diagnostic</strong></p>
  </li>

  <li>
    <p><strong>Interpret results</strong></p>
  </li>

  <li>
    <p><strong>Collect specimen for laboratory testing</strong></p>
    <ul>
      <li>The provider or lab personnel briefs the client and collects the specimen for lab-based diagnostics.</li>
    </ul>
  </li>

  <li>
    <p><strong>Facility can analyse?</strong><br>
    Determine if the specimen can be processed at the current facility or needs to be referred.</p>
  </li>

  <li>
    <p><strong>Analyse specimen</strong><br>
    If analysis is possible on-site, conduct pre-analysis, analysis, and post-analysis procedures.</p>
  </li>

  <li>
    <p><strong>Send specimen to off-site laboratory</strong><br>
    If off-site testing is needed, the facility collects and sends the specimen to another laboratory for analysis.</p>
  </li>

  <li>
    <p><strong>Update lab register</strong><br>
    Record the test and sample information in the laboratory register for tracking and documentation.</p>
  </li>

  <li>
    <p><strong>Notify provider of results</strong><br>
    Results are returned to the ordering facility or provider. The client may also receive automated result notifications.</p>
  </li>

  <li>
    <p><strong>Review lab results</strong><br>
    The provider reviews results and determines if client follow-up is needed based on findings.</p>
  </li>
</ol>

#### D. Business process for treatment

<b>Objective: </b> To initiate the appropriate treatment and perform the necessary follow- up examinations to ensure that the correct treatment is followed and that the patient adheres to it.

<b>TREATMENT BUSINESS PROCESS NOTES AND ANNOTATIONS</b>

<p>Steps for the treatment process</p>
<ol>
  <li>
    <p><strong>Determine eligibility for treatment regimen type</strong><br>
    The health worker determines whether the client is eligible based on laboratory results and previous clinical evaluation, for a regimen designed to treat.</p>
  </li>

  <li>
    <p><strong>Capacity for treating exists</strong><br>
    When treatment cannot be started or continued in the current facility (e.g. lack of skills, knowledge, stock of medicines), a referral is issued to transfer the patient to a new treatment facility.</p>
  </li>

  <li>
    <p><strong>Assess for comorbidities</strong><br>
    Assess comorbidities and risk factors (e.g. diabetes, HIV, smoking, COVID-19) to guide treatment decisions and interpret adverse reactions.</p>
  </li>

  <li>
    <p><strong>Perform other baseline clinical evaluations</strong><br>
    For subgroups (e.g. pregnant women, elderly), perform clinical, ECG, and lab evaluations before starting treatment.</p>
  </li>

  <li>
    <p><strong>Evaluate drug–drug interactions</strong><br>
    Evaluate for interactions between treatment drugs and other medications the patient is taking.</p>
  </li>

  <li>
    <p><strong>Determine the dosages of medicines for treatment</strong><br>
    Determine medicine dosages based on age and weight band.</p>
  </li>

  <li>
    <p><strong>Make an informed decision</strong><br>
    Align treatment with WHO standards. Obtain informed consent. Counsel patients who refuse treatment.</p>
  </li>

  <li>
    <p><strong>Initiate the treatment and discuss adherence</strong><br>
    Once consent is obtained and dosages determined, begin treatment and support adherence through:</p>
    <ul>
      <li>Directly observed therapy</li>
      <li>Social protection services</li>
      <li>Psychosocial support</li>
      <li>Digital health tools</li>
    </ul>
  </li>

  <li>
    <p><strong>Is follow-up needed?</strong><br>
    Monitor clinical response and symptoms related to long-term drug use.</p>
  </li>

  <li>
    <p><strong>Assess treatment adherence</strong><br>
    If adherence is poor:</p>
    <ul>
      <li>Make a home visit</li>
      <li>Discuss reasons for discontinuation</li>
      <li>Counsel and support the patient</li>
      <li>Engage caregivers/community health workers</li>
    </ul>
  </li>

  <li>
    <p><strong>Evaluate the presence of adverse drug reactions (if any) and report</strong><br>
    Actively monitor and report any adverse reactions to the national pharmacovigilance system.</p>
  </li>

  <li>
    <p><strong>Perform the follow-up examinations</strong><br>
    Conduct examinations as per the monitoring schedule to identify and address issues early.</p>
  </li>

  <li>
    <p><strong>Manage treatment interruptions</strong><br>
    Address reasons for interruption (e.g. stock-outs, side effects), counsel the client, and resume treatment as needed.</p>
  </li>

  <li>
    <p><strong>Reassess for comorbidities</strong><br>
    Repeat assessments and adjust the treatment approach if new or unresolved conditions are identified.</p>
  </li>

  <li>
    <p><strong>Adjust the treatment</strong><br>
    Based on evaluation results, adjust composition/duration or change the regimen. Refer if necessary.</p>
  </li>

  <li>
    <p><strong>Issue a referral</strong><br>
    Refer for continued care of comorbidities or adverse events. Ensure patient preferences and clear referral pathways.</p>
  </li>

  <li>
    <p><strong>Offer other clinical and support services</strong><br>
    If treatment cannot be started, provide other clinical or social support services tailored to the patient’s needs.</p>
  </li>
</ol>



#### E. Business process for immunisation 
<b>Objective: </b> To ensure timely administration of vaccines in line with national guidelines and patient eligibility, especially during pregnancy.


<b>IMMUNISATION BUSINESS PROCESS AND ANNOTATIONS </b>
 
<ol>
  <li>
    <p><strong>Check vaccine eligibility</strong><br>
    The clinician assesses whether the patient is due for any vaccines based on gestational age, immunization history, and national guidelines (e.g., KEPI). This check may be triggered by clinical workflow or decision support systems.</p>
  </li>

  <li>
    <p><strong>Review immunisation history</strong><br>
    The clinician or nurse reviews the patient’s immunization records retrieved from EMR and SHR to avoid duplication and determine whether the vaccine is the first dose, a second dose, or a booster.</p>
  </li>

  <li>
    <p><strong>Counsel patient</strong><br>
    The patient is briefed on the importance of the vaccine, its expected benefits, and any potential side effects. Risks are contextualized, such as the prevention of neonatal tetanus.</p>
  </li>

  <li>
    <p><strong>Make an informed decision</strong><br>
    The patient engages in discussion, may ask questions, and gives formal consent to proceed. Consent is documented digitally (e.g., checkbox or e-signature) or in writing.</p>
  </li>

  <li>
    <p><strong>Verify vaccine stock and cold chain</strong><br>
    The nurse checks that the required vaccine is available, within expiry date, and stored properly under cold chain conditions. Verification may include checking VVM (Vaccine Vial Monitor) or barcodes in the stock system.</p>
  </li>

  <li>
    <p><strong>Record vaccine details</strong><br>
    The provider records all relevant data, including:</p>
    <ul>
      <li>Date of administration</li>
      <li>Dose given</li>
      <li>Manufacturer</li>
      <li>Batch/lot number</li>
      <li>Administration site and route</li>
      <li>Adverse events (if any)</li>
      <li>Provider ID</li>
    </ul>
  </li>

  <li>
    <p><strong>Administer vaccine</strong><br>
    The vaccine is given following national protocols — route (e.g., intramuscular), site (e.g., upper arm), and dose (e.g., 0.5 mL TT).</p>
  </li>

  <li>
    <p><strong>Set reminder for the next dose</strong><br>
    For multi-dose schedules (e.g., TT2), a reminder is entered into the EMR. The reminder aligns with scheduled milestones and national immunization guidelines.</p>
  </li>
</ol>


#### F. Business process for emergency care
<b>Objective: </b> To initiate the appropriate treatment and perform the necessary follow- up examinations to ensure that the correct treatment is followed and that the patient adheres to it.

<b>EMERGENCY CARE  BUSINESS PROCESS NOTES AND ANNOTATIONS</b>

<b>General note </b>


#### G. Business process for referral
<b>Objective: </b> To provide timely and appropriate referrals to another health-care facility that can provide services unavailable within this facility 

<b>REFERRAL BUSINESS PROCESS NOTES AND ANNOTATIONS </b>

<b>General notes</b>

<p>Examples of reasons for referral include:</p>

<ul>
  <li>the health worker cannot provide the service because of a lack of training and skills;</li>
  <li>the facility does not have the supplies needed to provide the service;</li>
  <li>the facility cannot perform the service for other reasons;</li>
  <li>there is an emergency and the client needs immediate referral.</li>
</ul>

  <ol>
  <li>
    <p><strong>Emergency referral?</strong><br>
    If the client needs immediate referral due to an emergency situation, bypass standard referral steps.<br>
    In an emergency, a referral can be made at any time, including during diagnosis and treatment encounters.</p>
  </li>

  <li>
    <p><strong>Emergency referral</strong></p>
    <ol type="a">
      <li>
        <strong>2.1 Stabilize the client and give pre-referral treatment</strong><br>
        The client is assumed to need emergency referral if their condition requires immediate medical attention. Stabilize the client’s condition and provide any necessary treatment.
      </li>
      <li>
        <strong>2.2 Is the client stable enough to transport?</strong><br>
        Once the client is stable enough to transport, immediately organize it. If the client is still not stable, provide pre-referral treatment for stabilization.
      </li>
      <li>
        <strong>2.3 Organize transport</strong><br>
        For emergency referrals, the health-care facility usually arranges for an ambulance or other vehicle.
      </li>
    </ol>
  </li>

  <li>
    <p><strong>Identify and discuss referral location options</strong><br>
    In discussion with the client and their relatives, decide where the client will be referred to. Discussions include:</p>
    <ul>
      <li>how to get to the referral facility, including location and transportation options;</li>
      <li>who to see and what is likely to happen;</li>
      <li>whether to follow up on return.</li>
    </ul>
    <p>Either the client or the client’s relatives should decide on a referral location based on their preferences.</p>
  </li>

  <li>
    <p><strong>Contact referral facility</strong><br>
    Health workers should contact the referral facility to determine whether that facility can accommodate such a referral.</p>
  </li>

  <li>
    <p><strong>Can the facility accommodate?</strong><br>
    Check whether facility can accommodate the client and provide the services needed.<br>
    If the facility can accommodate the client, move on to step 6.<br>
    Otherwise, find a different facility that is able to accommodate the client.<br>
    A system can be set up to catalogue referral facilities, and what type of referral needs they can handle to accommodate a referral.</p>
  </li>

  <li>
    <p><strong>Provide information to the receiving facility</strong><br>
    Make an appointment, if needed.<br>
    If not an emergency referral, the client or family arranges transport.<br>
    For emergency referrals, the health-care facility arranges transport, usually by phoning the district for an ambulance or other vehicle, and informing the receiving facility that the emergency client is on the way.<br>
    Fill out a referral form, which can include notification of the referral destination.<br>
    Provide the necessary clinical, sociodemographic and identity information to the referral facility. This can be done digitally if the appropriate systems are in place.</p>
  </li>

  <li>
    <p><strong>Discuss any questions with the client</strong><br>
    Discuss any of the client’s questions or concerns.</p>
  </li>

  <li>
    <p><strong>Check whether the client can be accommodated</strong><br>
    The receiving facility evaluates the needs and assesses if the client can receive the services needed.</p>
  </li>

  <li>
    <p><strong>Is it possible to accommodate the client?</strong><br>
    If the receiving facility cannot accommodate the client, it will inform the source facility. If accommodation for the client is possible, move on to step 10.</p>
  </li>

  <li>
    <p><strong>Receive the client</strong><br>
    The receiving health-care facility receives the client, along with all the necessary clinical, sociodemographic and identification information, and provides the services. If both facilities use digital systems with interoperability standards in place, the information can be exchanged digitally in a faster and more reliable way.</p>
  </li>
</ol>
