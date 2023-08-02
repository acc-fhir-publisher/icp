Extension: StageCareSource
Id: icp-stage-observation-care
Title: "Stage Care Source"
Description: "The stages in the care process that the patient has been through."

* ^url = $icp-stage-observation-care
* insert Acc-Metadata


* value[x] only code
* valueCode 1..1
* valueCode from $icp-stage-observation-vs (required)