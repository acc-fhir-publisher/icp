ValueSet: ICPServiceBundleTbi
Id: acc-icp-service-bundle-tbi
Title: "Service Bundle TBI"
Description: "The ICP TBI service bundles available as a selected treatment."

* ^url = $icp-service-bundle-tbi-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include codes from system $icp-service-bundle-tbi-cs


CodeSystem: ICPServiceBundleTbi
Id: acc-icp-service-bundle-tbi
Title: "Service Bundle TBI"
Description: "The ICP TBI service bundles available as a selected treatment."

* ^url = $icp-service-bundle-tbi-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata-Tbi

* #icpcon1 "Rehab Bundle Payment for Concussion Level 1"
* #icpcon2 "Rehab Bundle Payment for Concussion Level 2"
* #icpcon3 "Rehab Bundle Payment for Concussion Level 3"