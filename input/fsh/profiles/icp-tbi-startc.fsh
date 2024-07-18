Profile:        IcpTBIStartC
Parent:         QuestionnaireResponse
Id:             acc-icp-tbi-startc
Title:          "ACC Integrated Care Pathway TBI Start C"
Description:    "ACC Integrated Care Pathway TBI Start C"

* ^url = $icp-tbi-start-c
* insert Acc-Metadata
* ^purpose = "An ICP TBI Start C measurement resource is used within an Icp TBI Case, as a data point to verify weither an Icp case has a valid claim for concussion"
* ^text.status = #additional

//elements that have been removed
* basedOn 0..0
* partOf 0..0
* encounter 0..0
* source 0..0

* item 9..9
* questionnaire 1..1
* questionnaire = $acc-tbi-start-c
* subject only Reference(IcpPatient)
* author only Reference(Practitioner)
* status = $questionnaire-answers-status#completed