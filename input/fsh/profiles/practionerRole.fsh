Profile: KpsPractitionerRole
Parent: PractitionerRole
Id: ke-kps-practitioner-role
Title: "Practitioner Role Profile - KPS"
Description : "This profile defines constraints on the PractitionerRole resource for use within the Kenya Patient Summary. It captures the roles, responsibilities, and organizational affiliations of healthcare professionals involved in a patient's care, supporting accurate provider context, continuity of care, and data exchange within the national Health Information Exchange (HIE)."
* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsPractitionerRoleProfileV
* identifier 1..1 MS
