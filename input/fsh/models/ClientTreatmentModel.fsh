Logical: ClientTreatmentModel 
Title: "KPS.D Treatment"
Description: "Logical model for documenting patient treatments under the Kenya Patient Summary (KPS.D) standard."

* medicationReason 1..1 string "Reason for prescribing or using the medication. May link to past/current conditions."
  * ^code = #KPS.D.DE.1

* intendedUse 1..1 string "Indication for use: prevention, treatment, diagnostic, anaesthesia, equipment care."
  * ^code = #KPS.D.DE.2

* medicationCode 1..1 CodeableConcept "Medication that was or is to be administered (coded)."
  * ^code = #KPS.D.DE.3

* medicationStatus 0..1 code "Current usage status of the medication."
* medicationStatus from MedicationStatusVS 

* medicationForm 0..1 code "Form of medication (tablet, capsule, liquid, etc.)."
* medicationForm from MedicationFormVS 

* activeIngredient 1..1 code "Active substance in the medication (e.g. paracetamol)."
* activeIngredient from MedicationVS
  * ^code = #KPS.D.DE.4 

* strength 1..1 Quantity "Content of active ingredient per dosage unit (e.g. 500 mg/tablet)."
  * ^code = #KPS.D.DE.5

* dosageRegimen 1..1 string "Dosage instructions: quantity, frequency, and duration (e.g. 1 tab every 24h for 10 days)."
  * ^code = #KPS.D.DE.7

* routeOfAdministration 1..1 string "Path of administration (e.g. oral, intravenous)."
  * ^code = #KPS.D.DE.8

* treatmentStartDate 1..1 date "Date to start the treatment or medication."
  * ^code = #KPS.D.DE.9

* planOfCare 1..1 string "Therapeutic recommendations excluding medication: diet, surgery, exercise, etc."
  * ^code = #KPS.D.DE.10

* externalReference 0..1 string "External reference to guidelines or other clinical knowledge."
  * ^code = #KPS.D.DE.11

* relatedWith 0..1 string "Link to related entries in the Patient Summary (e.g. rare disease)."
  * ^code = #KPS.D.DE.12
