// ============================================================
// KPS Referral Extensions
// Defined before the Profile so SUSHI processes them first.
// ============================================================

Extension: ReferralDirectionExtension
Id: referral-direction
Title: "Referral Direction"
Description: "Indicates whether the client is being referred into (received) or out of (transferred) the current facility (KPS.G.DE.1)."
* value[x] only CodeableConcept
* valueCodeableConcept from ReferralDirectionVS (required)


Extension: ReferralSourceExtension
Id: referral-source
Title: "Source of Referral"
Description: "Indicates the origin from which the client was referred: community, health provider, or self-referral (KPS.G.DE.17)."
* value[x] only CodeableConcept
* valueCodeableConcept from ReferralSourceVS (required)


Extension: CommunicationPreferenceExtension
Id: communication-preference
Title: "Communication Preference"
Description: "The client's preferred mode(s) of communication for referral follow-up (KPS.G.DE.25)."
* value[x] only CodeableConcept
* valueCodeableConcept from CommunicationPreferenceVS (required)


// ============================================================
// KPS Service Request Profile (Referral)
// Maps KPS.G Referral data elements to the FHIR R4
// ServiceRequest resource.
// ============================================================

Profile: KpsServiceRequest
Parent: ServiceRequest
Id: ke-kps-service-request
Title: "Service Request Profile - KPS (Referral)"
Description: "This profile defines constraints on the ServiceRequest resource for use within the Kenya Patient Summary to represent clinical referrals (KPS.G). It captures the source facility, destination facility, referral reason, clinical summary, and communication preferences required for safe patient transfer."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^fixedCanonical = $KpsServiceRequestProfileV

// Extensions applied to this profile
* extension contains
    ReferralDirectionExtension named referralDirection 0..1 MS and
    ReferralSourceExtension named referralSource 0..1 MS and
    CommunicationPreferenceExtension named communicationPreference 0..* MS

// KPS.G.DE.7 – Reason for Referral (conditional, multi-select)
* reasonCode 0..* MS
* reasonCode from ReferralReasonVS (required)
  * ^short = "Reason(s) for the referral (KPS.G.DE.7)"
  * ^definition = "One or more coded reasons for referring the client."

// KPS.G.DE.4/DE.13 – Referring clinician / source facility
* requester 0..1 MS
* requester only Reference(KpsPractitioner or KpsOrganization)
  * ^short = "Referring clinician or source facility (KPS.G.DE.4, KPS.G.DE.13)"

// KPS.G.DE.5 – Destination facility
* locationReference 0..* MS
* locationReference only Reference(KpsLocation)
  * ^short = "Destination facility for the referral (KPS.G.DE.5)"

// KPS.G.DE.6 – Referral Date
* occurrence[x] 0..1 MS
* occurrence[x] only dateTime
  * ^short = "Referral date (KPS.G.DE.6)"

// KPS.G.DE.14/DE.15 – Referral Notes + Client History Summary
* note 0..* MS
  * ^short = "Referral notes and clinical history summary (KPS.G.DE.14, KPS.G.DE.15)"

// KPS.G – Subject (required)
* subject 1..1 MS
* subject only Reference(KpsPatient)
  * ^short = "Patient being referred"

// Encounter context
* encounter 0..1 MS
* encounter only Reference(KpsEncounter)
  * ^short = "Encounter that triggered the referral"

// intent – always 'order' for a referral
* intent 1..1 MS
* intent = #order

// status
* status 1..1 MS

// priority – for emergency referral flagging
* priority 0..1 MS

// code – type of service requested at destination
* code 0..1 MS
  * ^short = "Service being requested at the destination facility"

// Supporting clinical information (e.g., KPS Bundle)
* supportingInfo 0..* MS
  * ^short = "Supporting clinical documents shared with the receiving facility"
