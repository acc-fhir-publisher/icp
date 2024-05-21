Extension: IcpTbi_ServiceBundle
Id: acc-icp-service-bundle-tbi
Title: "Service Bundle TBI"
Description: "Indicates the ICP TBI service bundle selected for the treatment."
* ^url = $icp-service-bundle-tbi
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* value[x] only code
* valueCode 1..1
* valueCode from $icp-service-bundle-tbi-vs (required)