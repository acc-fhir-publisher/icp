ValueSet: ICPDiagnosisSide
Id: acc-icp-diagnosis-side
Title: "Diagnosis Side"
Description: "The body side this diagnosis code relates to."

* ^url = $icp-diagnosis-side-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-diagnosis-side-cs


CodeSystem: ICPDiagnosisSide
Id: acc-icp-diagnosis-side
Title: "Diagnosis Side"
Description: "The body side this diagnosis code relates to."

* ^url = $icp-diagnosis-side-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #left "Left"
* #right "Right"
* #na "Not Applicable"
