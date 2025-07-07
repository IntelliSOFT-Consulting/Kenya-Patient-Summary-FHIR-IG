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
      <td>The pool assumes process control – in other words, it assigns the tasks. A pool consists of one or more “swim lanes” that depict all the individuals or types of users that are involved in carrying out the business process or workflow. Diagrams should be clear, neat and easy for all viewers to understand the relationships across the different swim lanes. For example, a pool would depict the business process of conducting an outreach activity, which involves multiple stakeholders represented by different lanes in that pool.<br><br>
      A business process diagram can contain two or more pools that connect through message flows (messages received from outside of the pool). This indicates different process owners collaborating and exchanging information.<br><br>
      For example, in the case of a referral, the health facility “A” (the referring facility) represents the process owner that assigns internally the tasks for the actors represented as swim lanes in the pool. The health facility “B” (the receiving facility) has allocated its own pool and it’s considered a different process owner, with the same role. These 2 facilities exchange information relevant for a referral (client history, referral details, etc.), represented as message flows, but each facility has control only over the internal activities, without directly impacting the activities of the other facility.</td>
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

REGISTRATION BUSINESS PROCESS NOTES AND ANNOTATIONS

General note
Registration may be conducted as a stand-alone process by a data entry clerk or administrative persona ahead of the clinical visit or it may be conducted directly by the health worker as part of the overall encounter. These activities can be performed either in the health-care facility or in the community (e.g. client’s home, workplace, mobile van), depending on where the encounter takes place.

 Was the visit initiated by the client or by the provider?
Depending on the reasons that triggered the encounter, the starting activity could be represented either by client’s arrival at the health-care facility or by the health worker’s arrival at the client’s location. 
Guidelines and guidance:
Ministry of Health: Primary Health Care Network Guidelines

Client arrives at facility
The client arrives at the health-care facility and notifies the outpatient department of their arrival to be further guided.
The client could already be registered at the health-care facility for another service, for example, HIV, diabetes.
When digital tools, such as video-supported treatment, are used for communicating with the client (e.g. follow-up checks) this activity could be represented by a video call, phone call or other appropriate digital interaction.

Arrive at the client’s location
The health worker arrives at the client’s location.

Gather the client’s details
Ask the client whether they have previously been issued with a unique identifier.
Does the client have a card, number or barcode?
Does the client say they are a returning or referred client?
If a referral, check for the referral slip or data from the community.
Determine whether the client is new to the health-care facility or health post.
For returning clients, details will be retrieved from the facility’s registry of clients or, if possible, from a central client registry.

Search for the client record
This search process can be done through several different means depending on what mechanisms are available in-country. For example, clients can be searched for by using their name, unique identifier, a quick response (QR) code or even biometrics.

Has the correct client record been identified?
If multiple records are found for the client, consider merging or deleting duplicate records, according to the HMIS guidelines.

Create a new client record
Issue a unique identifier if used and possible at the facility.

Validate the client details
Review and update client record.
8.1. Review the sociodemographic data with the client
Review the client’s non-clinical information, that is, name, address, contact information, etc.
8.2. Is an update needed?
Has the client moved? Have they changed their contact information or has any other sociodemographic information changed?
8.3. Update the client details
The client can provide updated information if they have moved or changed their details recently.
Merge or update client records.
This activity could also happen during other clinical encounters, for example, outreaches and medical camps.

Checking in the client
Record the client’s updated details in the client registry.
Add the client to the relevant queue for the specific clinical visit e.g outpatient consultation, special clinic consultation.
Send or share intake confirmation to or with the referring facility as warranted.



#### B. Business process for clinical consultation
<b>Objective: </b> To conduct a comprehensive clinical assessment and initiate appropriate care plan

CLINICAL CONSULTATION BUSINESS PROCESS NOTES AND ANNOTATIONS
Steps for clinical consultation process

Determine reason for visit					
• Search for client details in the record system and determine the reason for visit.
		 	 	 		
			
				
					
						
Initial screenings steps 2–4
Steps may be performed in parallel. One or more of these steps are often performed before meeting with the provider. 	

2. Take vital signs
• Also record weight, height, etc. For children, weight will be needed to determine dosage and to check for malnutrition.
3.  Check for signs of serious illness
• Any person who has signs of serious illness should be referred to the appropriate higher-level facility for management. Danger signs differ by age group.
• Decision logic: 
Check for signs for serious illness 
4. Seriously ill
• Any person who has signs of serious illness should be referred to the appropriate higher-lever facility for management or receive emergency care, depending on availability and policies.
5. Capture or update client history
• Discuss history with client and review available records.
• Include checking medications, symptoms, whether taking all the prescribed drugs, immunization history, use of contraception, signs that she may be pregnant, mental health screening, drug use and nutrition.
• Check other comorbidity lists.
6. Assess medical history and risk factors
7. Determine social and economic factors
• Capture information related to the client’s occupation, socioeconomic risk factors (e.g. homelessness, imprisonment) and other health-related risk factors such as:
– disorders due to alcohol use;
– HIV;
– smoking;
– undernutrition;
– disorders due to drug use;
– silica exposure, silicosis;
– viral hepatitis;
– other clinical risk factors, for example, treatment with anti-TNFα3, dialysis, organ or haematological transplantation.





Is referral needed?
• If, during the evaluation, signs are identified requiring urgent medical care (e.g. gastrointestinal, circulatory, respiratory, neurological) and these cannot be offered at the current facility, a referral to the first referral level of care as per national guidelines, shall be considered. 

8. Laboratory diagnostics needed?
• Determine  based on the patient presentation if any tests are needed 
9. Determine treatment options
10. Make informed decision on treatment
The client will choose the treatment option after being advised by the clinician on all treatment options and what benefit/risks they present

Provide integrated services, steps 11–14
11. Offer voluntary partner and family services
12. Offer sexual and reproductive health services
13. Provide preventive treatment
14. Offer other services
Follow-up needed?


#### C. Business process for diagnostics
<b>Objective: </b> To investigate and obtain results through on-site or off-site diagnostics.

DIAGNOSTICS BUSINESS PROCESS NOTES AND ANNOTATIONS
General note
The clinician may order an investigation during an outpatient consultation or inpatient round. Investigations can include:
• An RDT performed by the healthcare provider.
• An order to perform the investigation at a laboratory or a diagnostic service at the current facility, if the service is available.
• An order to refer the client to another facility to perform the investigation there.
• An order to take a sample from the client and arrange to transport the sample to another facility.
• Other specialized diagnostic investigations.

Steps for Diagnostic process
Determine the diagnostics to perform
• Includes checking supply and prioritization based on urgency for the test.
• Check whether facility can accommodate the client and provide the needed services. If the facility is not able to perform the diagnostic or, alternatively, to collect and send the specimen, a referral may be required.
Referral needed?
An order to refer the client to another facility to perform the investigation may be needed if the facility cannot perform it.
Rapid or point-of-care diagnostic by provider?
Based on the types of diagnostics available at the facility, the providers’ skill set, facility processes and task sharing arrangements, a specimen may be taken by the provider, on-site or at an off-site lab.
If on-site, diagnostics may be performed at the end of the visit or else during the flow of steps and the client will return to a healthcare provider after diagnostics.
Collect specimen 
The healthcare provider briefs the client.
The provider collects a specimen for rapid or point-of-care diagnostic.
Perform rapid diagnostic or point-of-care diagnostic
Interpret results
Collect specimen for laboratory testing
The investigation performer, such as a health care worker, non-professional staff, or laboratory staff member, will brief the client and collect the specimen.
Facility can analyse
 Establish whether the specimen can be analysed at this facility or should be sent to another facility.
Analyse specimen
If the facility is able to analyse the specimen, this would include pre- analysis, analysis and post-analysis of the specimen.
Send specimen to off-site laboratory
If the specimen needs to be transferred to another facility for analysis, health facility staff will collect the sample and send it to another facility for investigation.
Update lab register
Notify provider of results
The results are communicated back to the ordering facility or health care worker. It is possible the client could also receive automated notification that the lab results have been returned.
Review lab results
The provider reviews lab results and identifies whether results require reaching out to the client.


#### D. Business process for treatment
<b>Objective: </b> To initiate the appropriate treatment and perform the necessary follow- up examinations to ensure that the correct treatment is followed and that the patient adheres to it.

TREATMENT BUSINESS PROCESS NOTES AND ANNOTATIONS

Steps for the treatment process

Determine eligibility for treatment regimen type
The health worker determines whether the client is eligible based on laboratory results and previous clinical evaluation, for a regimen designed to treat.
Capacity for treating exists
When treatment cannot be started or continued in the current facility (e.g. lack of skills, knowledge, stock of medicines), a referral is issued to transfer the patient to a new treatment facility.
Assess for comorbidities
There are some comorbidities and risk factors that increase the risk of poor treatment outcomes, or further transmission, which may require close clinical management. The assessment of comorbidities and risk factors (e.g. diabetes, disorders due to alcohol or drug use, HIV, smoking, undernutrition, coronavirus disease 2019, mental disorders, viral hepatitis) as part of the baseline clinical review is also important to determine additional needs for co-management, to correctly interpret adverse drug reactions. If such reactions are identified during or after the treatment ends, providing advice and counselling as necessary.
Perform other baseline clinical evaluations
Treatment often poses special issues in some subgroups of patients (pregnant women, people aged over 65 years, those with chronic kidney or liver disease). For patients belonging to these subgroups, a set of baseline examinations (clinical, electrocardiography, laboratory evaluations) are recommended before starting treatment.
Evaluate drug–drug interactions
For patients taking other medicines (older people, people with comorbidities), interaction between the drugs taken as part of the treatment regimen and other drugs taken by the patient must be evaluated.
Determine the dosages of medicines for  treatment
The health worker determines the dosage for the medicine part of the treatment regimen, based on age and weight band.

Make an informed decision
All treatment delivered should align with WHO-recommended standards, including obtaining informed consent where necessary (signed or witnessed consent if the patient is illiterate, or signed or witnessed consent from a child’s parent or legal guardian).
Patients who refuse to consent to treatment should be counselled about the risks to both themselves and the community.
Initiate the treatment and discuss adherence
Once the appropriate treatment regimen is identified, the correct medicine dosages are determined and the consent from the patient (parent or legal guardian in case of children or adolescents) is obtained, treatment can be initiated.
The health worker should undertake the relevant measures to support adherence and ensure favourable treatment outcomes, such as:
– consider directly observed treatment;
– optimize access of the patient to social protection services;
– provide psychosocial support (psychosocial assessment should offer an opportunity to assess supportive factors for treatment adherence and should be directly linked to relevant interventions wherever possible, as per country-specific questionnaires);
– consider the use of digital technologies.
Is follow-up needed?
Perform the clinical assessment
Clinical assessment should focus on monitoring response to treatment and addressing common symptoms associated with treatment and long-term drug use, with the goal of supporting adherence.
Assess treatment adherence
The most common challenge in  care is when a patient discontinues taking medicines or misses treatment appointments. Measures to support patient adherence tailored to patient needs are important to retain patients on treatment and ensure good treatment outcomes. Support should be provided through an effective model of care and measures should include support in the community or at home, social support and digital health interventions for communication with the patient.
The following actions should be taken in case of poor adherence:
– home visit to engage with the patient;
– assess the reasons for discontinuing treatment;
– discuss the patient’s concerns that caused non-adherence;
– educate the patient about the need to continue treatment;
– counsel and support the patient to resume treatment promptly; and
– engage community health workers, family members and caregivers to ensure treatment adherence.
Evaluate the presence of adverse drug reactions (if any) and report
Active pharmacovigilance should be performed, as well as proper management of adverse events and prevention of complications from drug–drug interactions. An appropriate schedule of laboratory tests and clinical examinations should be included on the patient’s treatment chart to identify adverse events. All patients, their treatment supporters and health workers should ideally be instructed to report the appearance, persistence or reappearance of adverse drug reactions.
Adverse drug reactions should be reported to the spontaneous pharmacovigilance systems required by national regulations, as for other drug-related harms.
Perform the follow-up examinations
Examinations, according to the monitoring examination schedule (if available), should be performed to identify in a timely manner adverse events and to manage comorbidities appropriately.
Manage treatment interruptions
In clients who have had treatment interruption, the reason for the interruption should be addressed, such as medicine stock-outs, adverse events from medicines or need for additional patient or provider education.
The health worker should take the opportunity to express support for the patient and their family and to address any issues that may require referral or treatment. Counselling should be offered in a way that makes the client feel empowered in their choice to continue the treatment.
Reassess for comorbidities
Adjust the treatment
Based on the examination results, comorbidity assessment, adverse drug reaction evaluation and the patient’s medical condition, treatment composition or duration may require modifications. The health worker needs to assess treatment efficiency and adjust the treatment accordingly.
Changing the treatment regimen should also be considered. If the decision taken is to change the treatment regimen, then the health worker will assess the capacity for initiating and continuing the new regimen. When capacity exists, all (previously described) activities needed to identify and initiate the appropriate (new) treatment regimen should be performed.
A referral should be issued if capacity to further treat the patient does not exist. 
Issue a referral
Referrals may be needed for ongoing management of disability and comorbidities on completion of treatment. This may include referral to mental health or substance use services, preventive and rehabilitation services, and social protection services to improve the health and social outcomes. The preferences of the client should be considered, for example, separate services may be appropriate to maintain continuity of care for pre-existing comorbidities, to provide highly specialized medical care, or may be preferred among people who experience stigma in relation to comorbidities, such as injecting drug use.
Patients with systemic adverse events might require referral to specialized care.
Change of treatment regimen may lead to referrals if capacity to further treat the patient does not exist in the current health-care facility.
In the absence of co-located services, clear referral pathways should be ensured.
 Offer other clinical and support services
The health worker might offer other relevant clinical and support services to the client if the consent for initiating treatment is not given or treatment could not be started because of other reasons. 


#### E. Business process for immunisation 
<b>Objective: </b> To ensure timely administration of vaccines in line with national guidelines and patient eligibility, especially during pregnancy.


IMMUNISATION BUSINESS PROCESS AND ANNOTATIONS 

Check Vaccine eligibility
The clinician assesses whether the patient is due for any vaccines based on gestational age, immunization history, and national guidelines (e.g., KEPI). This may be triggered by clinical workflow or decision support.
Review immunisation history
The clinician or nurse reviews existing immunization records pulled from EMR and SHR to avoid duplication and verify whether this is the first, second, or booster dose.
Counsel patient
The patient is informed of the rationale, expected benefits, and any possible side effects of the vaccine. Risks are contextualized (e.g., neonatal tetanus).
Makes an informed decision
The patient listens to the clinician’s explanation and may ask clarifying questions. The patient formally agrees to proceed, documented either digitally (checkbox or e-signature) or in writing.
Verify vaccine stock and cold chain
The nurse checks that the vaccine is available, unexpired, and stored under proper cold chain conditions (monitored via VVM/barcode in stock system).
Record vaccine details
The provider enters vaccine data: date, dose, manufacturer, batch number, administration site, route, adverse events (if any), provider ID.
Administer vaccine
The vaccine is administered according to national protocols — route (e.g., intramuscular), site (e.g., upper arm), and dose (e.g., 0.5 mL TT).
Set reminder for the next dose
If it’s a multi-dose schedule (e.g., TT2), a reminder is scheduled in the EMR. This is tied to milestones and national guidelines.


#### F. Business process for emergency care
<b>Objective: </b> To initiate the appropriate treatment and perform the necessary follow- up examinations to ensure that the correct treatment is followed and that the patient adheres to it.

EMERGENCY CARE  BUSINESS PROCESS NOTES AND ANNOTATIONS

General note


#### G. Business process for referral
<b>Objective: </b> To provide timely and appropriate referrals to another health-care facility that can provide services unavailable within this facility 

REFERRAL BUSINESS PROCESS NOTES AND ANNOTATIONS
General notes
Examples of reasons for referral include:
the health worker cannot provide the service because of a lack of training and skills;
the facility does not have the supplies needed to provide the service;
the facility cannot perform the service for other reasons;
there is an emergency and the client needs immediate referral.

1. Emergency referral?
If the client needs immediate referral due to an emergency situation, bypass standard referral steps.
In an emergency, a referral can be made at any time, including during diagnosis and treatment encounters.

2. Emergency referral
2.1 Stabilize the client and give pre-referral treatment
The client is assumed to need emergency referral if their condition requires immediate medical attention. Stabilize the client’s condition and provide any necessary treatment.
2.2 Is the client stable enough to transport?
Once the client is stable enough to transport, immediately organize it. If the client is still not stable, provide pre-referral treatment for stabilization.
2.3 Organize transport
For emergency referrals, the health-care facility usually arranges for an ambulance or other vehicle.

3. Identify and discuss referral location options
In discussion with the client and their relatives, decide where the client will be referred to. Discussions include:
how to get to the referral facility, including location and transportation options;
who to see and what is likely to happen;
whether to follow up on return.
Either the client or the client’s relatives should decide on a referral location based on their preferences.

4. Contact referral facility
Health workers should contact the referral facility to determine whether that facility can accommodate such a referral.

5. Can the facility accommodate?
Check whether facility can accommodate the client and provide the services needed.
If the facility can accommodate the client, move on to step 6.
Otherwise, find a different facility that is able to accommodate the client.
A system can be set up to catalogue referral facilities, and what type of referral needs they can handle to accommodate a referral.

6. Provide information to the receiving facility
Make an appointment, if needed.
If not an emergency referral, the client or family arranges transport.
For emergency referrals, the health-care facility arranges transport, usually by phoning the district for an ambulance or other vehicle, and informing the receiving facility that the emergency client is on the way.
Fill out a referral form, which can include notification of the referral destination.
Provide the necessary clinical, sociodemographic and identity information to the referral facility. This can be done digitally if the appropriate systems are in place.

7. Discuss any questions with the client
Discuss any of the client’s questions or concerns.

8. Check whether the client can be accommodated
The receiving facility evaluates the needs and assesses if the client can receive the services needed.

9. Is it possible to accommodate the client?
If the receiving facility cannot accommodate the client, it will inform the source facility. If accommodation for the client is possible, move on to step

10. Receive the client
The receiving health-care facility receives the client, along with all the necessary clinical, sociodemographic and identification information, and provides the services. If both facilities use digital systems with interoperability standards in place, the information can be exchanged digitally in a faster and more reliable way


