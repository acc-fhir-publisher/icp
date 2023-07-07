ValueSet: IcpDiagnosisCodeVS
Id: acc-icp-diagnosis-code
Title: "Diagnosis Codes"
Description: "The diagnosis codes for the injury being treated."

* ^url = $icp-diagnoses-code-vs
* ^version = "0.1.0"
* ^experimental = false

* include codes from system $acc-readcode-cs
* include codes from system $SCT
* include codes from system $icd9
* include codes from system $icd10ae
