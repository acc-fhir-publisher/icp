Extension: RecordedOutcomeStage
Id: acc-icp-recorded-outcome-stage
Title: "Stage Care Source"
Description: "The stages in the care process that the patient has been through."

* ^url = $icp-recorded-outcome-stage
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "Observation"

* value[x] only code
* valueCode 1..1
* valueCode from $icp-recorded-outcome-stage-vs (required)