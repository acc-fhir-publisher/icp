ValueSet: ICPDiagnosisSide
Id: acc-icp-diagnosis-side
Title: "Diagnosis Side"
Description: "New Zealand codes for Integrated Care Pathways Service Type"

* ^url = $icp-diagnosis-side-vs
* ^version = "0.1.0"
* ^experimental = false
* include codes from system $icp-diagnosis-side-cs


CodeSystem: ICPDiagnosisSide
Id: acc-icp-diagnosis-side
Title: "Diagnosis Side"
Description: "New Zealand codes for Integrated Care Pathways Diagnosis Side"

* ^url = $icp-diagnosis-side-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #left "Left"
* #right "Right"
* #na "N/A"