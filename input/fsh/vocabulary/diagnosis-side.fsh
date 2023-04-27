ValueSet: ICPDiagnosisSide
Id: icp-diagnosis-side
Title: "ICP Diagnosis Side"
Description: "New Zealand codes for Integrated Care Pathways Service Type"

* ^url = $icp-diagnosis-side-vs
* ^version = "0.1.0"

* include codes from system $icp-diagnosis-side-cs


CodeSystem: ICPDiagnosisSide
Id: icp-diagnosis-side
Title: "ICP Diagnosis Side"
Description: "New Zealand codes for Integrated Care Pathways Diagnosis Side"

* ^url = $icp-diagnosis-side-cs
* ^caseSensitive = true
* ^version = "0.1.0"

* #left "Left"
* #right "Right"
* #na "N/A"