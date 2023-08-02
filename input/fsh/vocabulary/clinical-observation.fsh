ValueSet: ClinicalObservation
Id: acc-icp-clinical-observation
Title: "clinical-observation"
Description: "clinical-observation"

* ^url = $icp-clinical-observation-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-clinical-observation-cs

CodeSystem: ICPClinicalObservation
Id: acc-icp-clinical-observation
Title: "ICP Code Clinical Observation"
Description: "ICP Code Clinical Observation"


* ^url = $icp-clinical-observation-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #shoulder-abduction-45deg-hand-held-dynamometer "Shoulder abduction 45deg hand held dynamometer"
* #lower-back-neutral-prone-extension-hand-held-dynamometer "Lower back neutral prone extension hand held dynamometer"
* #knee-extension-hand-held-dynamometer "Knee extension hand held dynamometer"
* #knee-extension-isokinetic-dynamometer "Knee extension isokinetic dynamometer"
