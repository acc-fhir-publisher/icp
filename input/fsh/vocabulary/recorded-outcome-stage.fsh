ValueSet: ICPRecordedOutcomeStage
Id: acc-icp-recorded-outcome-stage
Title: "ICP Recorded Outcome Stage"
Description: "The patient recorded stage of the ICP Observation"

* ^url = $icp-recorded-outcome-stage-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-recorded-outcome-stage-cs


CodeSystem: ICPRecordedOutcomeStage
Id: acc-icp-recorded-outcome-stage
Title: "ICP Recorded Outcome Stage"
Description: "The patient recorded stage of the ICP Observation"

* ^url = $icp-recorded-outcome-stage-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #adhoc "Adhoc"
* #baseline "Baseline"
* #exit "Exit"
* #mid-point "Mid-point"