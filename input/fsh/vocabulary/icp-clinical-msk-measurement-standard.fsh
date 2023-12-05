ValueSet: ICPClinicalMskMeasurementStandard
Id: acc-icp-clinical-msk-measurement-standard
Title: "clinical-msk-measurement-standard"
Description: "The measurement standards applicable to site-specific clinical measures for ICPMSK."

* ^url = $icp-clinical-measurement-standard-msk-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-clinical-measurement-standard-msk-cs

CodeSystem: ICPClinicalMskMeasurementStandard
Id: acc-icp-clinical-msk-measurement-standard
Title: "clinical-msk-measurement-standard"
Description: "The measurement standards applicable to site-specific clinical measures for ICPMSK."


* ^url = $icp-clinical-measurement-standard-msk-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #shoulder-abduction-45deg-hand-held-dynamometer "Shoulder abduction 45deg hand held dynamometer"
* #lower-back-neutral-prone-extension-hand-held-dynamometer "Lower back neutral prone extension hand held dynamometer"
* #knee-extension-hand-held-dynamometer "Knee extension hand held dynamometer"
* #knee-extension-isokinetic-dynamometer "Knee extension isokinetic dynamometer"
