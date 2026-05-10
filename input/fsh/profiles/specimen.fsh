Profile: KpsSpecimen
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips
Id: kps-specimen
Title: "Specimen Profile - KPS"
Description: "This profile defines constraints on the Specimen resource for use within the Kenya Patient Summary. It captures information about biological samples collected from a patient, supporting diagnostic procedures, continuity of care, and data exchange within the national Health Information Exchange (HIE)."



* status 1..1 MS
* type 1..1 MS
* type from specimen-type (required)
* subject 1..1 MS
* collection MS
* collection.collected[x] 0..1 MS
* collection.collected[x] only dateTime or Period
* collection.collector MS 
* receivedTime 0..1 MS
* note MS
* processing MS
* processing.time[x] only dateTime or Period
* processing.description MS

// Optional Kenyan-specific extensions
* extension contains
    SpecimenPriority named priority 0..1 MS and
    CollectionContext named collectionContext 0..1 MS

Extension: SpecimenPriority
Id: specimen-priority
Title: "Specimen Priority"
Description: "Urgency or priority with which the specimen was collected (e.g., STAT, routine)."
* value[x] only CodeableConcept
* valueCodeableConcept from KPSUnitOfMeasureVS (required)

Extension: CollectionContext
Id: collection-context
Title: "Collection Context"
Description: "Specifies the context of collection (e.g., surveillance, diagnostic, research)."
* value[x] only CodeableConcept
* valueCodeableConcept from KPSServiceTypeVS (required)
