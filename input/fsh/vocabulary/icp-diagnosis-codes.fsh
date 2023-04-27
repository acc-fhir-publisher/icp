ValueSet: IcpDiagnosisCodesVS
Id: icp-diagnosis-codes-vs
Title: "ICP Diagnosis Codes"
Description: "New Zealand codes for Integrated Care Pathways Diagnosis Codes"

* ^url = $icp-diagnosis-codes-vs
* ^version = "0.1.0"

* include $SCT#45326000 "Shoulder pain"
* include codes from system $SCT
* include codes from system $ICD-9CM-diagnosiscodes
* include codes from system $icd9
* include codes from system $ICD10CM
* include codes from system $ICD10PCS
* include codes from system $icd10ae