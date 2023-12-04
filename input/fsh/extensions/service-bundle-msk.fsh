Extension: Icp_ServiceBundle
Id: acc-icp-service-bundle-msk
Title: "Service Bundle"
Description: "Indicates the ICP service bundle MSK selected for the treatment."
* ^url = $icp-service-bundle-msk
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* value[x] only code
* valueCode 1..1
* valueCode from $icp-service-bundle-msk-vs (required)