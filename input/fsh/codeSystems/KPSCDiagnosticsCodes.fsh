CodeSystem: KPSCDiagnosticsCodesCS
Id: kpsc-diagnostics-codes
Title: "KPS.C Diagnostics Data Elements"
Description: "CodeSystem representing diagnostic data elements under the Kenya Patient Summary (KPS.C)."
* ^url = "https://nshr-uat.sha.go.ke/fhir/CodeSystem/kpsc-diagnostics-codes"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true

// Core Elements
* #KPS.C.DE.1 "Request Date" "Date and time when the diagnostic request was made"
* #justification "Justification for Request" "Reason for diagnostics request, including clinical notes"
* #KPS.C.DE.2 "Diagnostics Category" "Discipline or service area performing the diagnostics (e.g., hematology, radiology)"
* #diagnosticName "Diagnostic Name" "Name or code of the requested diagnostic test/report (e.g., CBC, Lipid Profile)"

// Diagnostic Status
* #diagnosticStatus "Diagnostic Status" "Current status of the diagnostic process"
* #registered "Registered" "Report is acknowledged but no results are available yet"
* #partial "Partial" "Initial or unverified results available"
* #preliminary "Preliminary" "Some verified results are available"
* #final "Final" "Final verified results are available"
* #amended "Amended/Corrected" "Report modified after being final"
* #cancelled "Cancelled/Aborted" "Measurement not completed"
* #enteredInError "Entered in Error" "Record was mistakenly created"

// Specimen Information
* #specimen "Specimen" "Material collected for analysis (e.g., blood, urine)"
* #specimenStatus "Specimen Availability Status" "Availability status of specimen"
* #specimenAvailable "Available" "Specimen present and usable"
* #specimenUnavailable "Unavailable" "Specimen lost, destroyed or used"
* #specimenUnsatisfactory "Unsatisfactory" "Specimen condition prevents valid analysis"

// Radiology / Imaging
* #imagingType "Imaging Study Type" "Requested imaging modality or study (e.g., XR Lumbar Spine)"
* #imagingDate "Imaging Date" "Date when imaging was conducted"
* #bodySite "Body Site" "Anatomical region observed"
* #images "Images" "One or more image sets obtained"

// Results
* #resultsDate "Results Date" "Date and time when the results were recorded"
* #KPS.C.DE.6 "Diagnostics Performer" "Who performed or authored the diagnostics"
* #KPS.C.DE.7 "Interpreter" "Person validating or interpreting results"
* #diagnosticResult "Diagnostic Result" "Outcome of diagnostic analysis (string, boolean, quantity, or code)"
* #diagnosticInterpretation "Diagnostic Interpretation" "Assessment such as high, low, or normal"
* #clinicalImpression "Clinical Impression" "Working diagnosis or hypothesis based on results"
