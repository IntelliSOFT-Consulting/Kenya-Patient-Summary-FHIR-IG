Instance: KPSFHIRIGCapabilityStatement
InstanceOf: CapabilityStatement
Description: "Capability statement describing supported Kenya Patient Summary FHIR interactions, profiles, and system behaviors."
Usage: #definition
* id = "KPSFHIRIGCapabilityStatement"
* name = "KenyaPatientSummaryFHIRIGCapabilityStatement"
* title = "Kenya Patient Summary (KPS) FHIR IG Capability Statement"
* description = "This CapabilityStatement outlines the conformance requirements for systems implementing the Kenya Patient Summary (KPS) FHIR Implementation Guide. It specifies supported resources, profiles, interactions, and system behaviors necessary to enable standardized exchange of patient summary information for continuity of care across Kenya's digital health infrastructure."

* version = "0.1.0"
* status = #active
* date = "2025-07-22"
* publisher = "Safaricom & IntelliSOFT Kenya"
* kind = #requirements // #instance
* fhirVersion = #4.0.1
* format[0] = #json
* format[1] = #xml

* rest[0].mode = #server
* rest[0].resource[0].type = #Patient
* rest[0].resource[0].profile = Canonical(KpsPatient)
* rest[0].resource[0].interaction[0].code = #read
* rest[0].resource[0].interaction[1].code = #search-type

* rest[0].resource[1].type = #Practitioner
* rest[0].resource[1].profile = Canonical(KpsPractitioner)
* rest[0].resource[1].interaction[0].code = #read
* rest[0].resource[1].interaction[1].code = #search-type

* rest[0].resource[2].type = #Organization
* rest[0].resource[2].profile = Canonical(KpsOrganization)
* rest[0].resource[2].interaction[0].code = #read
* rest[0].resource[2].interaction[1].code = #search-type


* rest[0].resource[3].type = #AllergyIntolerance
* rest[0].resource[3].profile = Canonical(KpsAllergyIntolerance)
* rest[0].resource[3].interaction[0].code = #read
* rest[0].resource[3].interaction[1].code = #search-type
* rest[0].resource[3].interaction[2].code = #create
* rest[0].resource[3].interaction[3].code = #update

* rest[0].resource[4].type = #Immunization
* rest[0].resource[4].profile = Canonical(KpsImmunization)
* rest[0].resource[4].interaction[0].code = #read
* rest[0].resource[4].interaction[1].code = #search-type
* rest[0].resource[4].interaction[2].code = #create
* rest[0].resource[4].interaction[3].code = #update

* rest[0].resource[5].type = #Medication
* rest[0].resource[5].profile = Canonical(KpsMedication)
* rest[0].resource[5].interaction[0].code = #read
* rest[0].resource[5].interaction[1].code = #search-type
* rest[0].resource[5].interaction[2].code = #create
* rest[0].resource[5].interaction[3].code = #update

* rest[0].resource[6].type = #MedicationRequest
* rest[0].resource[6].profile = Canonical(KpsMedicationRequest)
* rest[0].resource[6].interaction[0].code = #read
* rest[0].resource[6].interaction[1].code = #search-type
* rest[0].resource[6].interaction[2].code = #create
* rest[0].resource[6].interaction[3].code = #update

* rest[0].resource[7].type = #Observation
* rest[0].resource[7].profile = Canonical(KpsObservation)
* rest[0].resource[7].interaction[0].code = #read
* rest[0].resource[7].interaction[1].code = #search-type
* rest[0].resource[7].interaction[2].code = #create
* rest[0].resource[7].interaction[3].code = #update

* rest[0].resource[8].type = #PractitionerRole
* rest[0].resource[8].profile = Canonical(KpsPractitionerRole)
* rest[0].resource[8].interaction[0].code = #read
* rest[0].resource[8].interaction[1].code = #search-type
* rest[0].resource[8].interaction[2].code = #create
* rest[0].resource[8].interaction[3].code = #update


* rest[0].resource[9].type = #Procedure
* rest[0].resource[9].profile = Canonical(KpsProcedure)
* rest[0].resource[9].interaction[0].code = #read
* rest[0].resource[9].interaction[1].code = #search-type
* rest[0].resource[9].interaction[2].code = #create
* rest[0].resource[9].interaction[3].code = #update




// * rest[0].interaction[0].code = #transaction
// * rest[0].interaction[1].code = #batch
// * rest[0].interaction[2].code = #history-system
// * rest[0].interaction[3].code = #search-system
