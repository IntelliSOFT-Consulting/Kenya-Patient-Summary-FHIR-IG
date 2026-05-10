
<p>Provides the general attributes and features of the digital system to ensure usability, security, interoperability, and technical compliance. Non-functional requirements do not define what the system does, but rather how the system performs its functions.</p>

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <caption>Table 19. Non-functional Requirements</caption>
  <thead>
    <tr>
      <th>Requirement ID</th>
      <th>Category</th>
      <th>Non-functional Requirement</th>
    </tr>
  </thead>
  <tbody>

    <!-- Security: Confidentiality -->
    <tr>
      <td colspan="3"><strong>Security – Confidentiality</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.1</td>
      <td>Security – confidentiality</td>
      <td>Provide password-protected access for authorized users only.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.2</td>
      <td>Security – confidentiality</td>
      <td>Ensure confidentiality and privacy of personal health information in compliance with the Kenya Data Protection Act 2019.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.3</td>
      <td>Security – confidentiality</td>
      <td>Restrict access to patient data to only those users with the appropriate role-based permissions.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.4</td>
      <td>Security – confidentiality</td>
      <td>Encrypt all patient data at rest and in transit using AES-256 and TLS 1.2 or higher respectively.</td>
    </tr>

    <!-- Security: Authentication -->
    <tr>
      <td colspan="3"><strong>Security – Authentication</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.5</td>
      <td>Security – authentication</td>
      <td>Require multi-factor authentication (MFA) for all users accessing patient summary data outside of the facility network.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.6</td>
      <td>Security – authentication</td>
      <td>Notify the user to change their password upon first login.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.7</td>
      <td>Security – authentication</td>
      <td>Enforce complex password requirements: minimum 8 characters, including uppercase, lowercase, number, and special character.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.8</td>
      <td>Security – authentication</td>
      <td>Automatically lock inactive sessions after 15 minutes of inactivity.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.9</td>
      <td>Security – authentication</td>
      <td>Support OAuth 2.0 / SMART on FHIR for system-to-system and user-facing authentication.</td>
    </tr>

    <!-- Security: Audit Trail -->
    <tr>
      <td colspan="3"><strong>Security – Audit Trail and Logs</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.10</td>
      <td>Security – audit trail and logs</td>
      <td>Log all user logins and logouts with timestamp, user ID, and IP address.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.11</td>
      <td>Security – audit trail and logs</td>
      <td>Log all create, read, update, and delete (CRUD) operations on patient records, including the user who performed them.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.12</td>
      <td>Security – audit trail and logs</td>
      <td>Retain audit logs for a minimum of 7 years, in compliance with the Kenya Medical Records Act.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.13</td>
      <td>Security – audit trail and logs</td>
      <td>Ensure audit logs are immutable and accessible only to designated audit personnel and regulators.</td>
    </tr>

    <!-- Security: User Management -->
    <tr>
      <td colspan="3"><strong>Security – User Management</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.14</td>
      <td>Security – user management</td>
      <td>Implement role-based access control (RBAC) aligned to the KPS Generic Personas (e.g., nurse, clinician, clerical staff, pharmacist).</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.15</td>
      <td>Security – user management</td>
      <td>Allow system administrators to create, modify, suspend, and deactivate user accounts.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.16</td>
      <td>Security – user management</td>
      <td>Ensure that deactivated user accounts cannot access the system.</td>
    </tr>

    <!-- Interoperability -->
    <tr>
      <td colspan="3"><strong>Interoperability</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.17</td>
      <td>Interoperability</td>
      <td>Support data exchange using HL7 FHIR R4 APIs in conformance with this Implementation Guide.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.18</td>
      <td>Interoperability</td>
      <td>Integrate with the Kenya Health Information Exchange (HIE) for sharing of patient summary data across facilities.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.19</td>
      <td>Interoperability</td>
      <td>Integrate with the national Client Registry for patient identity resolution and de-duplication.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.20</td>
      <td>Interoperability</td>
      <td>Integrate with the Shared Health Record (SHR) to push and pull patient summary updates at the end of each encounter.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.21</td>
      <td>Interoperability</td>
      <td>Support terminology binding to SNOMED CT, ICD-11, LOINC, and Kenya-specific code systems as defined in this IG.</td>
    </tr>

    <!-- Availability and Reliability -->
    <tr>
      <td colspan="3"><strong>Availability and Reliability</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.22</td>
      <td>Availability</td>
      <td>Support offline functionality so health workers can continue recording data when internet connectivity is unavailable; data must sync automatically when connectivity is restored.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.23</td>
      <td>Availability</td>
      <td>Maintain system availability of at least 99.5% uptime during business hours, excluding planned maintenance windows.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.24</td>
      <td>Reliability</td>
      <td>Implement automated data backup at least once every 24 hours, with disaster recovery procedures documented and tested.</td>
    </tr>

    <!-- Performance -->
    <tr>
      <td colspan="3"><strong>Performance</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.25</td>
      <td>Performance</td>
      <td>Patient summary pages must load within 3 seconds on a standard 3G mobile connection.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.26</td>
      <td>Performance</td>
      <td>FHIR API responses must complete within 5 seconds for standard queries under typical load conditions.</td>
    </tr>

    <!-- Usability -->
    <tr>
      <td colspan="3"><strong>Usability</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.27</td>
      <td>Usability</td>
      <td>The system must be accessible on mobile devices (smartphones and tablets) used by community health workers.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.28</td>
      <td>Usability</td>
      <td>Support English and Swahili language interfaces.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.29</td>
      <td>Usability</td>
      <td>Comply with Web Content Accessibility Guidelines (WCAG) 2.1 Level AA for accessibility.</td>
    </tr>

    <!-- Data Integrity -->
    <tr>
      <td colspan="3"><strong>Data Integrity</strong></td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.30</td>
      <td>Data integrity</td>
      <td>Validate all mandatory fields before allowing record submission, with clear user-facing error messages.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.31</td>
      <td>Data integrity</td>
      <td>Prevent overwriting of historical clinical records; all updates must be versioned and traceable.</td>
    </tr>
    <tr>
      <td>KPS.NFXNREQ.32</td>
      <td>Data integrity</td>
      <td>All FHIR resources must include a <code>meta.lastUpdated</code> timestamp and source system identifier.</td>
    </tr>

  </tbody>
</table>
