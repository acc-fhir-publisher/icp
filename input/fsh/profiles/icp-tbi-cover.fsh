Profile:        IcpTBICoverAndCausation
Parent:         QuestionnaireResponse
Id:             acc-icp-tbi-cover-and-causation
Title:          "ACC Integrated Care Pathway TBI Cover and Causation"
Description:    "ACC Integrated Care Pathway TBI Cover and Causation"

* ^url = $icp-tbi-cover-causation
* insert Acc-Metadata-Tbi
* ^purpose = "An ICP TBI Cover and Causation data point is used within an Icp TBI Case, as a data point to verify weither the claim is covered by ACC."
* ^text.status = #additional

//elements that have been removed
* basedOn 0..0
* partOf 0..0
* encounter 0..0
* source 0..0

* item 6..6
* questionnaire 1..1
* questionnaire = $acc-cover-causation
* questionnaire ^short = "ACC Cover and Causation"
* subject only Reference(IcpPatient)
* author only Reference(Practitioner)
* status = $questionnaire-answers-status#completed