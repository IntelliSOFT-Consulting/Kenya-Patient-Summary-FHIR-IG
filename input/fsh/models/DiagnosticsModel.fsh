Logical: DiagnosticsModel 
Title: "KPS.C Diagnostics"
Description: "Logical model for representing diagnostic requests, specimens, imaging, and results under the Kenya Patient Summary (KPS.C) standard."

// Diagnostic Request
* category 1..1 string "Diagnostics Category – clinical discipline, department, or diagnostic service"
  * ^code = $KPSDataElements#KPS.C.DE.1
* diagnosticName 1..1 string "Exact name or code of the diagnostic request/report (e.g. Lipid Profile)"
  * ^code = $KPSDataElements#KPS.C.DE.2
* requestDate 1..1 dateTime "Date and time of the diagnostic request"
  * ^code = $KPSDataElements#KPS.C.DE.3
* justification 0..1 string "Reason for diagnostic request, including relevant clinical notes"
  * ^code = $KPSDataElements#KPS.C.DE.4
* status 1..1 code "Status of the diagnostic request"
* status from DiagnosticReportStatusVS (required)
  * ^code = $KPSDataElements#KPS.C.DE.5

// Specimen
* specimen 0..1 BackboneElement "Specimen details"
  * type 1..1 string "Type of material collected for analysis"
    * ^code = $KPSDataElements#KPS.C.DE.13
  * availabilityStatus 0..1 code "Specimen availability status"
  * availabilityStatus from http://hl7.org/fhir/ValueSet/specimen-status (required)
    * ^code = $KPSDataElements#KPS.C.DE.14

// Radiology
* imaging 0..1 BackboneElement "Radiology imaging information"
  * studyType 0..1 string "Type of imaging study requested (e.g. XR Lumbar spine)"
    * ^code = $KPSDataElements#KPS.C.DE.18
  * imagingDate 0..1 date "Date when imaging was performed"
    * ^code = $KPSDataElements#KPS.C.DE.19
  * bodySite 0..1 string "Body part observed"
    * ^code = $KPSDataElements#KPS.C.DE.20
  * images 0..* string "References or links to image series from imaging"
    * ^code = $KPSDataElements#KPS.C.DE.21

// Results
* resultsDate 0..1 dateTime "Date and time of result availability"
  * ^code = $KPSDataElements#KPS.C.DE.22
* performer 0..1 string "Name or code of diagnostics performer (originator of result)"
  * ^code = $KPSDataElements#KPS.C.DE.23
* interpreter 0..1 string "Interpreter of result or validator"
  * ^code = $KPSDataElements#KPS.C.DE.24
* diagnosticResults 0..* string "Results from the analysis, e.g. numeric value, boolean, or description"
  * ^code = $KPSDataElements#KPS.C.DE.25
* interpretation 0..1 code "Interpretation of diagnostic results (e.g. normal, high, low)"
  * ^code = $KPSDataElements#KPS.C.DE.26
* clinicalImpression 0..1 string "Working diagnosis or clinical hypothesis based on diagnostics"
  * ^code = $KPSDataElements#KPS.C.DE.27