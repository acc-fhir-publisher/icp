ValueSet: ICPStageObservation
Id: acc-icp-stage-observation
Title: "ICP Stage Observation"
Description: "The stage of the ICP Observation."

* ^url = $icp-stage-observation-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-stage-observation-cs


CodeSystem: ICPStageObservation
Id: acc-icp-stage-observation
Title: "ICP Stage Observation"
Description: "The stage of the ICP Observation code system."

* ^url = $icp-stage-observation-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #baseline "Baseline"
* #mid-point "Mid-point"
* #exit "Exit"
* #adhoc "Adhoc"