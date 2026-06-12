Profile: KpsPractitioner
Parent: Practitioner
Id: ke-kps-practitioner
Title: "Practitioner Profile - KPS"
Description: "This profile defines constraints on the Practitioner resource for use within the Kenya Patient Summary. It captures information about healthcare professionals involved in a patient's care, supporting provider identification, accountability, and data exchange within the national Health Information Exchange (HIE)."
* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsPractitionerProfileV
