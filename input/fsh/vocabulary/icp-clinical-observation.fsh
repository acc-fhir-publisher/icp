ValueSet: ICPClinicalMeasurementStandard
Id: acc-icp-clinical-measurement-standard
Title: "clinical-measurement-standard"
Description: "The measurement standards applicable to site-specific clinical measures for ICPMSK."

* ^url = $icp-clinical-measurement-standard-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-clinical-measurement-standard-cs

CodeSystem: ICPClinicalMeasurementStandard
Id: acc-icp-clinical-measurement-standard
Title: "clinical-measurement-standard"
Description: "The measurement standards applicable to site-specific clinical measures for ICPMSK."


* ^url = $icp-clinical-measurement-standard-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #shoulder-abduction-45deg-hand-held-dynamometer "Shoulder abduction 45deg hand held dynamometer"
* #lower-back-neutral-prone-extension-hand-held-dynamometer "Lower back neutral prone extension hand held dynamometer"
* #knee-extension-hand-held-dynamometer "Knee extension hand held dynamometer"
* #knee-extension-isokinetic-dynamometer "Knee extension isokinetic dynamometer"
