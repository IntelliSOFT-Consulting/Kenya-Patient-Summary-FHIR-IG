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
      <td>[health domain abbreviation].FXNREQ.1</td>
      <td>[health domain abbreviation].A5. Search for client record</td>
      <td>Health worker</td>
      <td>To search to see whether client is already in the system (using at least 2 identifiers)</td>
      <td>I can check whether this is a new or existing client</td>
    </tr>
    <tr>
      <td>[health domain abbreviation].FXNREQ.2</td>
      <td>[health domain abbreviation].A5. Search for client record</td>
      <td>Health worker</td>
      <td>The system to be able to work offline</td>
      <td>I can carry on the TB care service provision regardless of internet connection. Once the system goes back online, the data is synchronized with the central system.</td>
    </tr>
    <tr>
      <td>[health domain abbreviation].FXNREQ.3</td>
      <td>[health domain abbreviation].A5. Search for client record</td>
      <td>Health worker</td>
      <td>The system to display sufficient data to identify the client</td>
      <td>I can confirm that it is the correct client</td>
    </tr>
    <tr>
      <td>[health domain abbreviation].FXNREQ.4</td>
      <td>[health domain abbreviation].A5. Search for client record</td>
      <td>Health worker</td>
      <td>The system to require me (a user) to search to see whether a client is already in the system prior to starting a new medical record entry</td>
      <td>I can avoid duplicates and update information as necessary</td>
    </tr>

    <!-- Business process B placeholder -->
    <tr>
      <td colspan="5"><strong>Business process [health domain abbreviation].B: [business process name]</strong></td>
    </tr>

    <!-- Business process C placeholder -->
    <tr>
      <td colspan="5"><strong>Business process [health domain abbreviation].C: [business process name]</strong></td>
    </tr>

    <!-- Referral Process -->
    <tr>
      <td>[health domain abbreviation].FXNREQ.44</td>
      <td>[health domain abbreviation].[X]2. Emergency referral</td>
      <td>Health worker (e.g. nurse)</td>
      <td>To be able to bypass the standard flow at any point if danger signs are present or emergency care is needed; urgent cases should be flagged and seen promptly</td>
      <td>The client can be referred, if needed.</td>
    </tr>
    <tr>
      <td>[health domain abbreviation].FXNREQ.45</td>
      <td>[health domain abbreviation].[X]3. Identify & discuss referral location options</td>
      <td>Health worker (e.g. nurse)</td>
      <td>To be able to find out in the system where the required service may be available</td>
      <td>I can refer my client to another facility to receive the appropriate services</td>
    </tr>
  </tbody>
</table>
