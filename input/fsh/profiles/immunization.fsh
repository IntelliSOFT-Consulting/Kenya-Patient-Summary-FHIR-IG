Profile: KpsImmunization
Parent: http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips
Id: kps-immunization
Title: "Immunization Profile - KPS"
Description : "This profile defines constraints on the Immunization resource for use within the Kenya Patient Summary. It captures details of vaccines administered to a patient, supporting immunization history tracking, clinical decision-making, and data exchange within the national Health Information Exchange (HIE)."

* status 1..1 MS
* status from immunization-status (required)
  * ^short = "Status of Vaccine"
  * ^definition = "Current status of the immunization against the disease"

* vaccineCode 1..1 MS
* vaccineCode from immunization-vaccinecode (required)
  * ^short = "Vaccine Code"
  * ^definition = "The vaccine product administered, coded using WHO ATC J07 vaccine classification."

* lotNumber 0..1 MS
  * ^short = "Lot Number of Vaccine"
  * ^definition = "A distinctive combination of numbers and/or letters which specifically identifies a batch "

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime
  * ^short = "Date of Immunization"
  * ^definition = "The date when the immunization was administered to the patient"

* patient 1..1 MS
* patient only Reference(KpsPatient)
  * ^short = "The Age of the Patient"
  * ^definition = "Age at which the vaccination was administered"

* protocolApplied 0..*
  * targetDisease 1..1 MS
  * targetDisease from immunization-targetdisease (required)
    * ^short = "Target Disease of Immunization"
    * ^definition = "Disease or agent that the vaccination provides protection against, coded using ICD-10."
  * series 1..1 MS
    * ^short = "Name of Vaccine Series"
  * doseNumber[x] 1..1 MS
  * doseNumber[x] only positiveInt
    * ^short = "Dose Number in Series"

* location 0..1 MS
  * ^short = "Location of Immunization"
  * ^definition = "Name/code of administering centre or a health authority responsible for the vaccination event"

* performer.actor 1..1 MS
  * ^short = "Performer of Immunization"
  * ^definition = "Name or health professional code responsible for administering the vaccine or prophylaxis"
