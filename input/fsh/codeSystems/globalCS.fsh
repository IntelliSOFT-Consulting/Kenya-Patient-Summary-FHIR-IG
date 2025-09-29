CodeSystem: KPSServiceTypeCS
Id: kps-service-type-cs
Title: "KPS Service Type"
Description: "Locally defined health service types used for scheduling, classification, or registration."
* #lab "Laboratory"
* #radiology "Radiology"
* #pharmacy "Pharmacy"
* #inpatient "Inpatient Care"
* #outpatient "Outpatient Care"
* #physio "Physiotherapy"
* #dental "Dental Services"
* #mental "Mental Health Services"

CodeSystem: KPSServiceAccessPointCS
Id: kps-service-access-point
Title: "Service Access Point"
Description: "Locally defined codes for health service access points"
* #IP "IP"
* #OP "OP"
* #OP_and_IP "OP and IP"
* #MR "MR"

CodeSystem: KPSFundChoicesCS
Id: fund-choices
Title: "Fund Choices"
Description: "Locally defined codes representing patient funding mechanisms"
* #SHIF_Only "SHIF Only"
* #PHC_Only "PCH Only"
* #ECCIF_Only "ECCIF Only"
* #PHC_and_SHIF "PHC and SHIF"
* #PMSF "Public Service Medical Services Fund"
* #ALL "All"


CodeSystem: KPSSchemesCS
Id: kps-schemes
Title: "Schemes"
Description: "Locally defined codes for scheme classifications"
* #PMF "Public Servant Medical Fund"
* #UHC "Universal Health Coverage"
* #ALL "All Schemes"


CodeSystem: PaymentMechanism
Id: payment-mechanism
Title: "Payment Mechanism"
Description: "Locally defined payment mechanisms for healthcare services"
* #FEE_FOR_SERVICE "Fee for Service"
* #FIXED_FEE_FOR_SERVICE "Fixed fee for service"
* #CAPITATION "Capitation"
* #PER_DIEM "Per Diem"
* #CASE_BASED "Case Based"

CodeSystem: UsageFrequency
Id: usage-frequency
Title: "Usage Frequency"
Description: "Locally defined frequencies for service or product usage"
* #WEEKLY "Weekly"
* #MONTHLY "Monthly"
* #QUARTERLY "Quarterly"
* #ANNUALLY "Annually"


CodeSystem: AnnualQuantityType
Id: annual-quantity-type
Title: "Annual Quantity Type"
Description: "Units of measurement for annual service quantities"
* #DAYS "Days"
* #INTERVENTION "Intervention"
* #KES "KES"


CodeSystem: AuthType
Id: auth-type
Title: "Authorization Type"
Description: "Types of authentication or authorization used for healthcare access"
* #FINGERPRINT "Fingerprint"
* #OTP "OTP"
* #GUARDIAN "GUARDIAN"
* #PAYER_AUTHORIZED "Authorisation from payer"
* #SHA "Social Health Authority"


CodeSystem: AuthorizationFailureReason
Id: authorization-failure-reason
Title: "Authorization Failure Reason"
Description: "Locally defined reasons for failed authorization attempts"
* #EMERGENCY "Emergency"
* #NO_SHA_DEVICE "No SHA device"
* #SHA_DEVICE_NOT_WORKING "SHA device not working"
* #FINGERPRINT_MISMATCH "Fingerprint mismatch"
* #GUARDIAN_UNAVAILABLE "Guardian unavailable"
* #OTP_DELAY "OTP delay"
* #MEDICAL_CONDITION "Medical condition"
* #SHA_DOWNTIME "SHA downtime"
* #PROVIDER_NETWORK_ISSUES "Provider network issues"
* #NO_CLAIM_OR_PREAUTH_ATTACHED "No claim or pre-auth attached"


CodeSystem: AuthorizationStatus
Id: authorization-status
Title: "Authorization Status"
Description: "Locally defined status values for authorization workflows"
* #AUTHORIZED "Authorized"
* #EXPIRED "Expired"
* #PENDING "Pending"
* #AUTHORIZED_PENDING_VISIT "Authorized pending visit"
* #AUTHORIZED_MULTISESSION "Authorized multisession"
* #EMERGENCY_AUTHORIZED "Emergency authorized"
* #REJECTED "Rejected"
* #CLOSED "Closed"
* #SUBMITTED_CLAIM "Submitted claim"


CodeSystem: ClaimsDepartments
Id: claims-departments
Title: "Claims Departments"
Description: "Locally defined healthcare service departments for claims"
* #OUTPATIENT "Outpatient"
* #INPATIENT "Inpatient"
* #DENTAL "Dental"
* #LAB "Lab"
* #RADIOLOGY "Radiology"
* #OPHTHALMOLOGY "Ophthalmology"
* #PHARMACY "Pharmacy"
* #CONSULTATION "Consultation"
* #CREDIT_NOTE "Credit Note"
* #MATERNITY "Maternity"
* #OPTICAL "Optical"
* #OTHER "Other"
* #DENTAL_AND_OPTICAL "Dental/Optical"
* #HIV_AIDS_AND_COVID "Hiv/Aids & Covid"
* #HIV_AIDS "Hiv/Aids"
* #COVID_19 "Covid-19"
* #VACCINES "Vaccines"
* #HEALTH_CHECKUPS "Health Checkups"
* #EMERGENCY "Emergency"
* #CAPITATION "Capitation"


CodeSystem: CopayType
Id: copay-type
Title: "Copay Types"
Description: "Locally defined types of copay sources"
* #NHIF "Nhif"
* #SELF_PAY "Self pay"
* #NHIF_PACKAGES "Nhif packages"
* #OTHER "Other"
CodeSystem: RemittanceChoice
Id: remittance-choice
Title: "Remittance Choice"
Description: "Locally defined remittance payment channels"
* #CHEQUE "Cheque"
* #RTGS "Real time gross settlement"
* #EFT "Electronic fund transfers"


CodeSystem: RemittanceStatus
Id: remittance-status
Title: "Remittance Status"
Description: "Locally defined remittance processing statuses"
* #INTERIM "Interim"
* #FINAL "Final"


CodeSystem: AdjustmentType
Id: adjustment-type
Title: "Adjustment Type"
Description: "Locally defined financial adjustment types"
* #SHORTFALL "Shortfall"
* #DISCOUNT "Discount"


CodeSystem: DiagnosisKind
Id: diagnosis-kind
Title: "Diagnosis Kind"
Description: "Levels or types of ICD diagnosis classifications"
* #CHAPTER "Chapter"
* #BLOCK "Block"
* #CATEGORY "Category"


CodeSystem: FlagType
Id: flag-type
Title: "Flag Types"
Description: "Local flag types for marking entities with special statuses"
* #SHA "Sha"
* #PAYER "Payer"
* #PROVIDER "Provider"
* #PAYER_REJECTION_REASON "Payer rejection reason"
* #STP "Stp"


CodeSystem: NonEDIClaimStatus
Id: non-edi-claim-status
Title: "Non-EDI Claim Status"
Description: "Status codes for non-EDI claim workflows"
* #PAID "Paid"
* #REJECTED "Rejected"
* #SUBMITTED_PAYER "Submitted payer"


CodeSystem: BulkRemittanceStatus
Id: bulk-remittance-status
Title: "Bulk Remittance Status"
Description: "Statuses used to track bulk remittance processing"
* #PENDING "Pending"
* #FAILED "Failed"
* #PROCESSED "Processed"
