# Kenya Patient Summary FHIR Implementation guide

#### Revision History

<table class="table table-hover table-bordered table-striped">
    <thead>
        <tr>
            <th>Name</th>
            <th>Date</th>
            <th>Reason For Changes</th>
            <th>Version</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>KPS Team</td>
            <td>6th June 2025</td>
            <td>Initial Draft</td>
            <td>1.0</td>
        </tr>
    </tbody>
</table>

### Purpose of this Guide

This Implementation Guide defines the structure, constraints, and terminologies for a Kenya Patient Summary based on HL7 FHIR. It is intended for use by EMR vendors, system integrators, health information exchange platforms, and policymakers seeking to implement national-level health interoperability.

By adopting the KPS, Kenya takes a key step toward achieving patient-centered, digitally enabled, and data-driven healthcare—ensuring that every Kenyan’s core health data is accessible anywhere, anytime it's needed.

### Introduction

The Kenya Patient Summary (KPS) represents a foundational component of Kenya’s digital health transformation agenda, enabling secure, portable, and standardized summaries of essential patient health information. Modeled on the International Patient Summary (IPS), the KPS has been adapted to align with Kenya’s healthcare delivery context, regulatory frameworks, and digital health infrastructure—including integration with the Kenya Digital Health Superhighway.

As a critical building block in the architecture of Digital Public Infrastructure for Health (DPI-H), the KPS enables rapid access to a patient's core medical data at the point of care—whether in community clinics, county hospitals, referral centers, or emergency settings.

### Background

In line with the Digital Health Act 2023, Kenya is pursuing a unified and person-centered digital health ecosystem that ensures patient data is accessible across the continuum of care. The KPS addresses this need by defining a nationally-endorsed data specification that health systems can use to share key patient data in a consistent, interoperable, and privacy-respecting manner.

Designed to serve both routine care and cross-border emergency contexts, the KPS also enhances clinical safety, supports continuity of care, and facilitates smoother referrals between providers, facilities, and systems.

###   Project Vision & Objectives

<p>The Kenya Patient Summary aims to: </p>

<ul>
    <li>Provide a standardized, minimal dataset for summarizing essential patient health information.</li>
    <li>Enable interoperability across EMRs used in Kenya, including eCHIS, KenyaEMR, FunSoft, and others.</li>
    <li>Serve as a building block for referral systems, telemedicine, and cross-county or emergency medical exchanges.
    </li>
    <li>Ensure compliance with the Digital Health Act, particularly regarding patient data ownership, access rights, and data portability.</li>
</ul>

###   Technical Implementation

The KPS is built as a constrained FHIR Implementation Guide that adapts the International Patient Summary (IPS) to Kenya’s local:

Terminologies (e.g., use of SNOMED CT or CIEL for diagnoses, LOINC for labs)

Data governance requirements including consent, privacy, and role-based access

Clinical workflows relevant to both facility and community-based care

<p>Key components of the KPS include: </p>
<ul>
    <li>Patient demographics and identifiers (e.g., national ID, CHV registration number)</li>
    <li>Allergies, medications, problems, immunizations, recent observations</li>
    <li>Encounter summaries, diagnostic results, procedures, and referrals</li>
    <li>Support for data exchange via FHIR RESTful APIs or document-based formats (e.g., FHIR Bundle or CDA wrapper)</li>
</ul>








