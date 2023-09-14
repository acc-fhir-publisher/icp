ValueSet: ICPPromMeasurementStandard
Id: acc-icp-prom-measurement-standard
Title: "prom-measurement-standard"
Description: "The measurement standards applicable to site-specific patient reported outcome measures (PROMs) for ICPMSK."

* ^url = $icp-prom-measurement-standard-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-prom-measurement-standard-cs

CodeSystem: ICPPromMeasurementStandard
Id: acc-icp-prom-measurement-standard
Title: "prom-measurement-standard"
Description: "The measurement standards applicable to site-specific patient reported outcome measures (PROMs) for ICPMSK."

* ^url = $icp-prom-measurement-standard-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #koos "KOOS"
* #quickdash "QuickDASH"
* #oswestry "Oswestry"
