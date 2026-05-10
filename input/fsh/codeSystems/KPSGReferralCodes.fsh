CodeSystem: KPSGReferralCodes
Id: kpsg-referral-codes
Title: "KPS.G Referral Data Elements"
Description: "CodeSystem representing referral-related data elements under the Kenya Patient Summary (KPS.G)."
* ^url = "https://shr.tiberbuapps.com/fhir/CodeSystem/kpsg-referral-codes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true

// Referral direction
* #referral-in "In" "The client has been received into the care of this facility"
* #referral-out "Out" "The client has been referred out to another facility"

// Reason for referral
* #emergency-referral "Emergency Referral" "The client requires urgent emergency care"
* #adverse-drug-reaction "Management of Adverse Drug Reactions" "Referral due to adverse drug reaction requiring specialist management"
* #medication-unavailable "Medication Not Available" "Medication required by the client is not available at this facility"
* #client-wish "Client's Wish" "The client has expressed a preference to be seen at another facility"
* #other-general-services "Referral for Other General Services" "Referral to access general services not available at the current facility"

// Source of referral
* #community "Community" "The client was referred from the community level (e.g., CHW)"
* #health-provider "Health Provider" "The client was referred from another health provider or facility"
* #self-referral "Self" "The client self-referred without a formal referral from a health worker"

// Communication preference
* #sms "Text Message / SMS" "Client prefers to be contacted via SMS"
* #voice-call "Voice Call" "Client prefers to be contacted via phone call"
* #email-comm "Email" "Client prefers to be contacted via email"
* #no-communication "Communication Consent Declined" "Client has declined consent for communications"
