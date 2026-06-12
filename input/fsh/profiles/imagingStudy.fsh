// ============================================================
// KPS Imaging Study Profile
// Maps KPS.C imaging-related data elements (KPS.C.DE.18–21)
// to the FHIR R4 ImagingStudy resource.
// ============================================================

Profile: KpsImagingStudy
Parent: ImagingStudy
Id: ke-kps-imaging-study
Title: "Imaging Study Profile - KPS"
Description: "This profile defines constraints on the ImagingStudy resource for use within the Kenya Patient Summary. It captures details of radiology and other diagnostic imaging studies performed on a patient (KPS.C – Diagnostics, imaging sub-section), supporting continuity of care and data exchange within the national Health Information Exchange (HIE)."

* id 1..1 MS
* meta 1..1 MS
* meta.profile 1..*
* meta.profile ^fixedCanonical = $KpsImagingStudyProfileV

// ---------------------------------------------------------------
// KPS.C.DE.18 – Imaging Study Type (conditional)
// Maps to: ImagingStudy.description
// ---------------------------------------------------------------
* description 1..1 MS
  * ^short = "Type or description of the imaging study (KPS.C.DE.18)"
  * ^definition = "A narrative description or name of the imaging study requested or performed (e.g., X-ray lumbar spine, CT brain, ultrasound abdomen)."

// ---------------------------------------------------------------
// KPS.C.DE.19 – Imaging Date (conditional)
// Maps to: ImagingStudy.started
// ---------------------------------------------------------------
* started 0..1 MS
  * ^short = "Date imaging was performed (KPS.C.DE.19)"
  * ^definition = "The date and time the imaging study was started."

// ---------------------------------------------------------------
// KPS.C.DE.20 – Body Site (conditional)
// Maps to: ImagingStudy.series.bodySite
// ---------------------------------------------------------------
* series 0..* MS
  * ^short = "Series within the imaging study"
  * bodySite 0..1 MS
    * ^short = "Body site imaged (KPS.C.DE.20)"
    * ^definition = "The anatomical part of the body that was the focus of the imaging study."
  * modality 1..1 MS
  * modality from AcquisitionModalityVS (required)
  // ---------------------------------------------------------------
  // KPS.C.DE.21 – Images
  // Maps to: ImagingStudy.series.instance (DICOM SOP instance)
  // ---------------------------------------------------------------
  * instance 0..* MS
    * ^short = "Image instances (KPS.C.DE.21)"
    * ^definition = "One or more images or image objects obtained during this imaging study series."

// ---------------------------------------------------------------
// Subject – Patient reference (required)
// ---------------------------------------------------------------
* subject 1..1 MS
* subject only Reference(KpsPatient)
  * ^short = "Patient this imaging study is about"

// ---------------------------------------------------------------
// Encounter context
// ---------------------------------------------------------------
* encounter 0..1 MS
* encounter only Reference(KpsEncounter)
  * ^short = "Encounter during which this imaging study was performed"

// ---------------------------------------------------------------
// Referring clinician
// ---------------------------------------------------------------
* referrer 0..1 MS
* referrer only Reference(KpsPractitioner)
  * ^short = "Clinician who requested the imaging study"

// ---------------------------------------------------------------
// Status (required in base FHIR – available | unavailable | unknown | error)
// ---------------------------------------------------------------
* status 1..1 MS
  * ^short = "Availability status of the imaging study"
