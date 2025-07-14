Logical: DiagnosticsModel 
Title: "KPS.C Diagnostics"
Description: "Logical model for representing diagnostic requests, specimens, imaging, and results under the Kenya Patient Summary (KPS.C) standard."

// Diagnostic Request
* requestDate 1..1 dateTime "Date and time of the diagnostic request"
  * ^code = #KPS.C.DE.1
* category 1..1 string "Diagnostics Category – clinical discipline, department, or diagnostic service"
  * ^code = #KPS.C.DE.2
* diagnosticName 1..1 string "Exact name or code of the diagnostic request/report (e.g. Lipid Profile)"
* justification 0..1 string "Reason for diagnostic request, including relevant clinical notes"
* status 1..1 code "Status of the diagnostic request"
  * ^binding.strength = #required
  * ^binding.description = "Status of the diagnostic request"
  * ^binding.valueSet = KPSDiagnosticsStatusVS

// Specimen
* specimen 0..1 BackboneElement "Specimen details"
  * type 1..1 string "Type of material collected for analysis"
  * availabilityStatus 0..1 code "Specimen availability status"
    * ^binding.strength = #required
    * ^binding.valueSet = KPSSpecimenAvailabilityVS

// Radiology
* imaging 0..1 BackboneElement "Radiology imaging information"
  * studyType 0..1 string "Type of imaging study requested (e.g. XR Lumbar spine)"
  * imagingDate 0..1 date "Date when imaging was performed"
  * bodySite 0..1 string "Body part observed"
  * images 0..* string "References or links to image series from imaging"

// Results
* resultsDate 0..1 dateTime "Date and time of result availability"
* performer 0..1 string "Name or code of diagnostics performer (originator of result)"
  * ^code = #KPS.C.DE.6
* interpreter 0..1 string "Interpreter of result or validator"
  * ^code = #KPS.C.DE.7
* diagnosticResults 0..* string "Results from the analysis, e.g. numeric value, boolean, or description"
* interpretation 0..1 code "Interpretation of diagnostic results (e.g. normal, high, low)"
* clinicalImpression 0..1 string "Working diagnosis or clinical hypothesis based on diagnostics"