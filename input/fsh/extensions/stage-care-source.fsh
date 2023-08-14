Extension: StageCareSource
Id: icp-recorded-outcome-stage
Title: "Stage Care Source"
Description: "The stages in the care process that the patient has been through."

* ^url = $icp-recorded-outcome-stage
* insert Acc-Metadata

* value[x] only code
* valueCode 1..1
* valueCode from $icp-recorded-outcome-stage-vs (required)