ValueSet: ICPDiagnosisSide
Id: acc-icp-diagnosis-side
Title: "Diagnosis Side"
Description: "The body side this diagnosis code relates to."

* ^url = $icp-diagnosis-side-vs
* ^version = "0.1.0"
* ^experimental = false
* include codes from system $icp-diagnosis-side-cs


CodeSystem: ICPDiagnosisSide
Id: acc-icp-diagnosis-side
Title: "Diagnosis Side"
Description: "The body side this diagnosis code relates to."

* ^url = $icp-diagnosis-side-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #left "Left"
* #right "Right"
* #na "N/A"