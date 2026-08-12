// ============================================================
// KPS Composition Profile
// Defines the Kenya Patient Summary document structure, bundling
// the sections and clinical resources that make up a patient
// summary for exchange within the national Health Information
// Exchange (HIE).
// ============================================================

Profile: KpsComposition
Parent: Composition
Id: ke-kps-composition
Title: "Composition Profile - KPS"
Description: "This profile defines constraints on the Composition resource for use within the Kenya Patient Summary. It represents the document header binding together the sections and clinical resources (problems, allergies, medications, immunizations, results, and procedures) that constitute a patient summary exchanged within the national Health Information Exchange (HIE)."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsCompositionProfileV

* status 1..1 MS
  * ^short = "Status of this composition (preliminary | final | amended | entered-in-error)"

* type 1..1 MS
* type = $LNC#60591-5 "Patient summary Document"
  * ^short = "Kind of composition (Patient Summary)"

* subject 1..1 MS
* subject only Reference(KpsPatient)
  * ^short = "The patient this summary is about"

* encounter 0..1 MS
* encounter only Reference(KpsEncounter)
  * ^short = "Encounter associated with this summary, if any"

* date 1..1 MS
  * ^short = "Date and time the summary was generated"

* author 1..* MS
* author only Reference(KpsPractitioner or KpsPractitionerRole or KpsOrganization)
  * ^short = "Who produced this patient summary"

* title 1..1 MS
  * ^short = "Human-readable title, e.g. patient name and generation date"

* custodian 0..1 MS
* custodian only Reference(KpsOrganization)
  * ^short = "Organization responsible for maintaining this summary"

* attester 0..* MS
* attester.mode 1..1 MS
* attester.time 0..1 MS
* attester.party 0..1 MS
* attester.party only Reference(KpsPractitioner or KpsOrganization)

// ---------------------------------------------------------------
// Sections
// Sliced by section.code so each clinical section of the summary
// can be individually constrained and bound to the appropriate
// KPS resource profile(s).
// ---------------------------------------------------------------
* section 1..* MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false

* section contains
    problems 1..1 MS and
    allergies 1..1 MS and
    medications 1..1 MS and
    immunizations 0..1 MS and
    results 0..1 MS and
    procedures 0..1 MS

// --- Problems ---
* section[problems].title 1..1 MS
* section[problems].code = $LNC#11450-4 "Problem list"
* section[problems].text 0..1 MS
* section[problems].entry 0..* MS
* section[problems].entry only Reference(KpsCondition)
* section[problems].emptyReason 0..1 MS

// --- Allergies and Intolerances ---
* section[allergies].title 1..1 MS
* section[allergies].code = $LNC#48765-2 "Allergies and adverse reactions"
* section[allergies].text 0..1 MS
* section[allergies].entry 0..* MS
* section[allergies].entry only Reference(KpsAllergyIntolerance)
* section[allergies].emptyReason 0..1 MS

// --- Medications ---
* section[medications].title 1..1 MS
* section[medications].code = $LNC#10160-0 "History of Medication use"
* section[medications].text 0..1 MS
* section[medications].entry 0..* MS
* section[medications].entry only Reference(KpsMedicationStatement or KpsMedicationRequest)
* section[medications].emptyReason 0..1 MS

// --- Immunizations ---
* section[immunizations].title 1..1 MS
* section[immunizations].code = $LNC#11369-6 "History of immunization"
* section[immunizations].text 0..1 MS
* section[immunizations].entry 0..* MS
* section[immunizations].entry only Reference(KpsImmunization)
* section[immunizations].emptyReason 0..1 MS

// --- Results (Observations / Diagnostic Reports) ---
* section[results].title 1..1 MS
* section[results].code = $LNC#30954-2 "Relevant diagnostic tests/laboratory data"
* section[results].text 0..1 MS
* section[results].entry 0..* MS
* section[results].entry only Reference(KpsObservation or KpsDiagnosticReport)
* section[results].emptyReason 0..1 MS

// --- Procedures ---
* section[procedures].title 1..1 MS
* section[procedures].code = $LNC#47519-4 "History of Procedures"
* section[procedures].text 0..1 MS
* section[procedures].entry 0..* MS
* section[procedures].entry only Reference(KpsProcedure)
* section[procedures].emptyReason 0..1 MS
