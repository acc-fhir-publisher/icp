ValueSet: ICPPromMskMeasurementStandard
Id: acc-icp-prom-msk-measurement-standard
Title: "prom-msk-measurement-standard"
Description: "The measurement standards applicable to site-specific patient reported outcome measures (PROMs) for ICPMSK."

* ^url = $icp-prom-measurement-standard-msk-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-prom-measurement-standard-msk-cs

CodeSystem: ICPPromMskMeasurementStandard
Id: acc-icp-prom-msk-measurement-standard
Title: "prom-msk-measurement-standard"
Description: "The measurement standards applicable to site-specific patient reported outcome measures (PROMs) for ICPMSK."

* ^url = $icp-prom-measurement-standard-msk-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #koos "KOOS"
* #quickdash "QuickDASH"
* #oswestry "Oswestry"
