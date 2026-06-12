// ============================================================
// KPS Diagnostic Report Profile
// Maps KPS.C Diagnostics data elements to the FHIR R4
// DiagnosticReport resource.
// ============================================================

Profile: KpsDiagnosticReport
Parent: DiagnosticReport
Id: ke-kps-diagnostic-report
Title: "Diagnostic Report Profile - KPS"
Description: "This profile defines constraints on the DiagnosticReport resource for use within the Kenya Patient Summary. It captures the results of diagnostic investigations (laboratory, radiology, and other diagnostic services), supporting continuity of care and data exchange within the national Health Information Exchange (HIE)."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsDiagnosticReportProfileV

// ---------------------------------------------------------------
// KPS.C.DE.1 – Diagnostics Category (required)
// Maps to: DiagnosticReport.category
// ---------------------------------------------------------------
* category 1..* MS
* category from KPSDiagnosticServiceSectionsVS (required)
  * ^short = "Diagnostic service category (KPS.C.DE.1)"
  * ^definition = "Classifies the clinical discipline, department, or diagnostic service that created the report (e.g., radiology, haematology, biochemistry)."

// ---------------------------------------------------------------
// KPS.C.DE.2 – Diagnostic Name (required)
// Maps to: DiagnosticReport.code
// ---------------------------------------------------------------
* code 1..1 MS
* code from KPSInvestigationVS (required)
  * ^short = "Diagnostic test or report name (KPS.C.DE.2)"
  * ^definition = "The exact name or code of the diagnostic request or report (e.g., Lipid Profile, Complete Blood Count)."

// ---------------------------------------------------------------
// KPS.C.DE.3 – Request / Effective Date (required)
// Maps to: DiagnosticReport.effectiveDateTime
// ---------------------------------------------------------------
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short = "Date of diagnostic request or observation (KPS.C.DE.3)"
  * ^definition = "Date and time when the diagnostic request was made or when results were collected."

// ---------------------------------------------------------------
// KPS.C.DE.4 – Justification / Reason for Request
// Maps to: DiagnosticReport.extension (note)
// Using conclusion field as narrative justification storage
// ---------------------------------------------------------------
* conclusion 0..1 MS
  * ^short = "Reason for request and clinical impression (KPS.C.DE.4, KPS.C.DE.27)"
  * ^definition = "The clinical context, reason for the request, and/or the working diagnosis or clinical impression based on diagnostic results."

// ---------------------------------------------------------------
// KPS.C.DE.5 – Diagnostic Status (required)
// Maps to: DiagnosticReport.status
// ---------------------------------------------------------------
* status 1..1 MS
  * ^short = "Diagnostic report status (KPS.C.DE.5)"
  * ^definition = "The status of the diagnostic report: registered, partial, preliminary, final, amended, corrected, appended, cancelled, or entered-in-error."

// ---------------------------------------------------------------
// KPS.C.DE.13 – Specimen
// Maps to: DiagnosticReport.specimen
// ---------------------------------------------------------------
* specimen MS
* specimen only Reference(KpsSpecimen)
  * ^short = "Specimen used for this diagnostic report (KPS.C.DE.13)"
  * ^definition = "Reference to the specimen(s) analyzed for this diagnostic report."

// ---------------------------------------------------------------
// KPS.C.DE.22 – Results Date
// Maps to: DiagnosticReport.issued
// ---------------------------------------------------------------
* issued 0..1 MS
  * ^short = "Date results were issued (KPS.C.DE.22)"
  * ^definition = "The date and time this version of the report was made available to providers."

// ---------------------------------------------------------------
// KPS.C.DE.23 – Diagnostics Performer
// Maps to: DiagnosticReport.performer
// ---------------------------------------------------------------
* performer 0..* MS
* performer only Reference(KpsPractitioner or KpsOrganization)
  * ^short = "Person or organization performing the diagnostic (KPS.C.DE.23)"
  * ^definition = "The diagnostic service or practitioner responsible for issuing the report."

// ---------------------------------------------------------------
// KPS.C.DE.24 – Interpreter / Results Interpreter
// Maps to: DiagnosticReport.resultsInterpreter
// ---------------------------------------------------------------
* resultsInterpreter 0..* MS
* resultsInterpreter only Reference(KpsPractitioner)
  * ^short = "Person responsible for interpreting results (KPS.C.DE.24)"
  * ^definition = "The practitioner or organization responsible for interpreting and/or validating the diagnostic results."

// ---------------------------------------------------------------
// KPS.C.DE.25 – Diagnostic Results
// Maps to: DiagnosticReport.result (references to Observations)
// ---------------------------------------------------------------
* result 0..* MS
* result only Reference(KpsObservation)
  * ^short = "Observations that are part of this diagnostic report (KPS.C.DE.25)"
  * ^definition = "Observations (results) that are part of this report, including numeric, coded, or narrative findings."

// ---------------------------------------------------------------
// KPS.C.DE.26 – Diagnostic Interpretation
// Maps to: DiagnosticReport.conclusionCode
// ---------------------------------------------------------------
* conclusionCode 0..* MS
* conclusionCode from ConditionCodeVS (required)
  * ^short = "Coded clinical impression from diagnostic findings (KPS.C.DE.26)"
  * ^definition = "One or more coded conclusions or clinical impressions drawn from the diagnostic results."

// ---------------------------------------------------------------
// Subject – Patient reference (required)
// ---------------------------------------------------------------
* subject 1..1 MS
* subject only Reference(KpsPatient)
  * ^short = "Patient this diagnostic report is about"

// ---------------------------------------------------------------
// Encounter context – link to clinical encounter
// ---------------------------------------------------------------
* encounter 0..1 MS
* encounter only Reference(KpsEncounter)
  * ^short = "Encounter during which this diagnostic report was requested"
