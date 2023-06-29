ValueSet: IcpDiagnosisCodesVS
Id: acc-icp-diagnosis-codes
Title: "Diagnosis Codes"
Description: "The diagnosis codes for the injury being treated."

* ^url = $icp-diagnosis-codes-vs
* ^version = "0.1.0"
* ^experimental = false

* include $SCT#45326000 "Shoulder pain"
* include codes from system $SCT
* include codes from system $ICD-9CM-diagnosiscodes
* include codes from system $icd9
* include codes from system $ICD10CM
* include codes from system $ICD10PCS
* include codes from system $icd10ae
