Profile: KpsOrganization
Parent: Organization
Id: ke-kps-organization
Title: "Organization Profile - KPS"
Description: "This profile defines constraints on the Organization resource for use within the Kenya Patient Summary. It identifies healthcare facilities or organizations involved in the provision or management of patient care, supporting national HIE and continuity of care."
* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^patternCanonical = $KpsOrganizationProfileV
* identifier 1..1 MS
