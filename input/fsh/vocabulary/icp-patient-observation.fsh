ValueSet: ICPPatientObservation
Id: acc-icp-patient-observation
Title: "patient-observation"
Description: "Patient-observation"

* ^url = $icp-patient-observation-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-patient-observation-cs

CodeSystem: ICPPatientObservation
Id: acc-icp-patient-observation
Title: "ICP Code Patient Observation"
Description: "ICP Code Patient Observation"

* ^url = $icp-patient-observation-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #koos "KOOS"
* #quickdash "QuickDASH"
* #oswestry "Oswestry"
