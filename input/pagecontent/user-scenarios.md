User scenarios are narratives that describe how the different personas may interact with each other and are intended to give an illustrative idea of a typical workflow.  This section is intended to provide an understanding of how the system would be used, and how it would fit into existing workflows.

### User scenario for Antenatal care contact

<table border="1" class="dataframe table table-striped table-bordered">
   <thead>
<tr class="header">
                <th style="vertical-align: top;">Key Personas</th>
                <th colspan="2">
                <ul>
                <li>Clerk : Abraham</li>
                <li>Nurse : Jane</li>
                <li>Health worker: Lucy</li></ul>               

  </th></tr></thead> <tbody><tr><td colspan="3">
<p>Charity was contacted by a community health promoter on a routine door-to-door visit and was found to have been unwell for a few days, having missed her last menstrual period and feeling nauseous. 

The CHP registered her on eCHIS and initiated a referral to the nearest level 2 facility.  


Some of the health data from this encounter is saved to the SHR. The data elements to be submitted from the community to the health facility are:
Patient.identifier
Problem List
Organization.identifier.source
Organization.identifier.destination
Practitioner.identifier

</p>
<p>The next day, Charity heads to the nearby government health center where she was referred. This is Charity’s first time coming to this health-care facility, and the clerk (Abraham) confirms that they have no record of her on file. He asks her to provide him with her ID, which he uses to access and retrieve her basic demographic information, including her date of birth, alternative contact information, and address, from the client registry to register Charity into the system. The registration on the EMR will include a confirmation of the insurance that she is registered on PHIF, SHIF, ECCIF.
</p>
<p>Once Charity is fully registered, she waits for a nurse (Jane) to call her into the counselling room. While Jane closes the door and lowers the shade on the window to provide privacy, Jane begins to ask questions regarding Charity’s reason for coming to the facility, as well as the date of her last normal menstrual period (LNMP). Charity is unsure of the exact date but recalls that it was around the New Year holiday. Jane administers a test to confirm Charity’s pregnancy. Upon confirming the positive pregnancy test, Jane proceeds to ask more detailed questions on Charity’s occupation, behaviours (such as smoking and alcohol intake), general health status, and obstetric history.  
</p>
<p>Based on the information Charity provides regarding her LNMP, Jane is not able to conclude the exact gestational age but estimates her to be between 12 and 15 weeks. Jane lets Charity know that she would need an ultrasound as soon as possible, before her 24th week of pregnancy, to better estimate her gestational age and due date.</p>
<p>After recording Charity’s background information in the digital system, Jane asks additional questions about any current symptoms. Jane also records Charity's weight and height measurements and conducts a physical exam, including taking her blood pressure to check that it is within the normal range. As Jane is recording these results in the digital system, she receives prompts to make sure she is providing the appropriate counselling and action. These prompts can also include reminders such as treating all pregnant women respectfully and without judgement, regardless of background or health status. Jane also orders any required additional tests, such as those for diabetes, hepatitis and HIV, being sure to inform Charity about all the tests being done and to answer any questions she has about them.</p>
<p>After recording Charity’s background information in the digital system, Jane asks additional questions about any current symptoms. Jane also records Charity's weight and height measurements and conducts a physical exam, including taking her blood pressure to check that it is within the normal range. As Jane is recording these results in the digital system, she receives prompts to make sure she is providing the appropriate counselling and action. These prompts can also include reminders such as treating all pregnant women respectfully and without judgement, regardless of background or health status. Jane also orders any required additional tests, such as those for diabetes, hepatitis and HIV, being sure to inform Charity about all the tests being done and to answer any questions she has about them.</p>
<p>Jane completes the counselling and advises Charity to reduce her caffeine intake and use a condom as she is still at risk of sexually transmitted infections (STIs) while pregnant. Jane also provides Charity with a supply of iron and folic acid (IFA) tablets to take daily. Jane also discusses different options for managing symptoms (e.g. nausea, lower back pain) as well as how to recognise danger signs that require contacting a health-care facility right away; Jane gives this information in a manner that encourages Charity to feel confident about making
informed decisions about her and her baby’s health. After checking whether Charity has any questions, Jane schedules the next ANC contact based on the suggested dates proposed by the digital system.
</p>
<p>Since there is no ultrasound at Jane's facility, Jane also provides Charity with a referral slip so that she can get her ultrasound done at an imaging center by a radiographer before she returns for her next contact. Charity will also receive a text (SMS) reminder (assuming she has given consent during her registration) ahead of her next scheduled contact. </p>
<p>She reassures Charity that the ultrasound is a routine and precautionary measure, and outlines the referral process:
Referral Letter: Jane prepares a detailed letter outlining Charity's case, including medical history, current concerns, and relevant findings. 
Hospital Selection: Jane identifies the nearest level 3 hospital equipped with radiography services and other diagnostic tools. 
Communication & Coordination: Jane contacts the hospital to inform them of Charity's referral and ensure a smooth handover of care.
Transportation Assistance: Depending on resources and Charity's situation, Jane explores options to assist with transportation to the hospital (e.g., ambulance, referral network program).
</p>
<p>She provides Charity with the referral slip containing all necessary information (hospital address, appointment details, contact numbers).
Jane reminds Charity about the importance of attending the appointment and encourages her to ask any questions or express any concerns. Jane provides educational materials or contacts for support groups to help Charity feel informed and empowered during this process. 
</p>
<p>Billing: Jane then asks Charity to head to the billing office, where the services are recorded and billed to facilitate the claim to be filed to SHIF, which then ends the encounter. 


SHR: Select details from this encounter are then sent to the SHR to facilitate Charity’s continuity of care. </p>
<p>At seven months pregnant, Charity is involved in a car accident and unconscious, and is rushed by well-wishers to the A&E in a level 5 hospital. A quick assessment of her vital signs indicates that she has lost a lot of blood and is in a medical emergency needing urgent care. In the absence of a next of Kin, the emergency team uses the ID in her belongings to access her unique patient ID, which the doctor uses to access Charity’s SHR, which reveals that Charity is a diabetic and hypertensive and of blood group B+. She is also allergic to penicillin. Further details of her previous pregnancy, which ended in a miscarriage, are accessed. It is also clear that Charity had been diagnosed with preeclampsia. </p>

<p>This information gives the emergency physician enough context to initiate Charity’s care plan, which includes stabilization, an obstetric ultrasound scan to assess the state of the foetus, and a blood transfusion for the blood loss. Charity is then admitted to the HDU. Five days later charity is well and ready to be discharged home. Her bill is prepared, and her relatives are asked to clear it with the finance team, after which she is given her discharge medication and allowed to go home. 
</p>
<p>This encounter is terminated, and information is sent to the SHR. </p>


</td>        </tr>
        <tr>
        <td style="vertical-align: top;">Business Processes

</td>
<td>
<ul>
<li>Registration</li>
<li>Administer vaccine</li>
<li>AEFI monitoring</li>
<li>Client reminder</li>
</ul>
</td>
</tr></tbody> </table>
