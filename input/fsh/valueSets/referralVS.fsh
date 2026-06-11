// ============================================================
// KPS.G – Referral ValueSets
// These ValueSets correspond to the coded data elements
// defined in the KPS.G Referral section of the data dictionary.
// ============================================================



ValueSet: ReferralDirectionVS
Id: kps-referral-direction-vs
Title: "Referral Direction ValueSet"
Description: "Indicates whether a client was referred into or out of the current facility (KPS.G.DE.1)."
* ^status = #active
* ^experimental = false
* $KPSGReferral#referral-in "In"
* $KPSGReferral#referral-out "Out"


ValueSet: ReferralReasonVS
Id: kps-referral-reason-vs
Title: "Reason for Referral ValueSet"
Description: "Coded reasons for referring a client to another facility or care level (KPS.G.DE.7)."
* ^status = #active
* ^experimental = false
* $KPSGReferral#emergency-referral "Emergency Referral"
* $KPSGReferral#adverse-drug-reaction "Management of Adverse Drug Reactions"
* $KPSGReferral#medication-unavailable "Medication Not Available"
* $KPSGReferral#client-wish "Client's Wish"
* $KPSGReferral#other-general-services "Referral for Other General Services"


ValueSet: ReferralSourceVS
Id: kps-referral-source-vs
Title: "Source of Referral ValueSet"
Description: "Indicates the source from which the client was referred (KPS.G.DE.17)."
* ^status = #active
* ^experimental = false
* $KPSGReferral#community "Community"
* $KPSGReferral#health-provider "Health Provider"
* $KPSGReferral#self-referral "Self"


ValueSet: CommunicationPreferenceVS
Id: kps-communication-preference-vs
Title: "Communication Preference ValueSet"
Description: "Coded communication preferences for contacting the client regarding referral follow-up (KPS.G.DE.25)."
* ^status = #active
* ^experimental = false
* $KPSGReferral#sms "Text Message / SMS"
* $KPSGReferral#voice-call "Voice Call"
* $KPSGReferral#email-comm "Email"
* $KPSGReferral#no-communication "Communication Consent Declined"
