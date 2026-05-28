CodeSystem: KPSDTreatmentCodesCS
Id: kpsd-treatment-codes
Title: "KPS.D Treatment Data Elements"
Description: "CodeSystem representing treatment and medication-related data elements under the Kenya Patient Summary (KPS.D)."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/kpsd-treatment-codes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true

// Medication Reason & Use
* #KPS.D.DE.1 "Medication Reason" "Clinical reason for prescribing or using the medication (linked to a health condition)"
* #KPS.D.DE.2 "Intended Use" "Purpose such as prevention, treatment, diagnostic, anaesthesia, or equipment care"

// Medication Details
* #KPS.D.DE.3 "Medication Name/Code" "Medication administered or intended for administration"
* #medicationStatus "Medication Status" "Availability status of the medication"
* #medicationStatusActive "Active" "The medication is currently in use"
* #medicationStatusInactive "Inactive" "The medication is not currently in use"
* #medicationStatusError "Entered in Error" "The medication was recorded by mistake"
* #medicationForm "Medication Form" "Form of the medication (e.g., tablet, capsule, powder)"
* #KPS.D.DE.3.4 "Tablet" "Solid dose form intended for oral administration."
* #KPS.D.DE.3.5 "Capsule" "Oral dosage form in a gelatin shell."
* #KPS.D.DE.3.6 "Liquid" "Oral or injectable solution/suspension dosage form."
* #KPS.D.DE.3.7 "Powder" "Dry substance that can be reconstituted or used directly."


// Composition
* #KPS.D.DE.4 "Active Ingredient List" "Substance(s) that produce therapeutic effect (e.g., paracetamol)"
* #KPS.D.DE.4.1 "Paracetamol" "Common analgesic and antipyretic agent."
* #KPS.D.DE.4.2 "Amoxicillin" "Broad-spectrum beta-lactam antibiotic."
* #KPS.D.DE.4.3 "Metronidazole" "Antibiotic and antiprotozoal medication."
* #KPS.D.DE.4.4 "Ibuprofen" "NSAID used for pain relief, fever, and inflammation."
* #KPS.D.DE.4.5 "Artemether + Lumefantrine" "Antimalarial combination therapy."

* #KPS.D.DE.5 "Strength" "Dosage strength of active ingredient (e.g., 500mg/tablet)"

// Dosage & Route
* #KPS.D.DE.7 "Dosage Regimen" "Dosing schedule: amount, frequency, duration (e.g., 1 tablet every 24h for 10 days)"
* #KPS.D.DE.8 "Route of Administration" "Pathway for administering the product (e.g., oral, intravenous)"

// Treatment Timing & Plan
* #KPS.D.DE.9 "Date of Onset of Treatment" "Start date for prescribed medication use"
* #KPS.D.DE.10 "Plan of Care" "Narrative of therapeutic plans including diet, exercise, surgery, goals, and follow-ups"

// Additional Information
* #KPS.D.DE.11 "External Reference" "Link to guidelines such as CPGs, emergency protocols, or other clinically relevant references"
* #KPS.D.DE.12 "Related With" "Indicates which Patient Summary entries this information relates to (e.g., link to a rare disease entry)"
