Alias: KPSDiagnosticsCodes = https://shr.tiberbuapps.com/fhir/CodeSystem/kpsc-diagnostics-codes
Alias: KPSDiagnosticsStatusVS = https://shr.tiberbuapps.com/fhir/ValueSet/kpsc-diagnostics-status-values

ValueSet: KPSDiagnosticsStatusValues
Id: kpsc-diagnostics-status-values
Title: "KPS.C Diagnostic Request Status"
Description: "Allowed values representing the status of a diagnostic request/report in the Kenya Patient Summary (KPS.C) standard."
* ^url = KPSDiagnosticsStatusVS
* ^status = #active

* KPSDiagnosticsCodes#registered "Registered"
* KPSDiagnosticsCodes#partial "Partial"
* KPSDiagnosticsCodes#preliminary "Preliminary"
* KPSDiagnosticsCodes#final "Final"
* KPSDiagnosticsCodes#amended "Amended/Corrected"
* KPSDiagnosticsCodes#cancelled "Cancelled/Aborted"
* KPSDiagnosticsCodes#enteredInError "Entered in Error"
