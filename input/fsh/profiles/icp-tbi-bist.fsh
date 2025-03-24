Profile:        IcpTBIBIST
Parent:         QuestionnaireResponse
Id:             acc-icp-tbi-bist
Title:          "ACC Integrated Care Pathway TBI BIST"
Description:    "ACC Integrated Care Pathway TBI BIST"

* ^url = $icp-tbi-bist
* insert Acc-Metadata-Tbi
* ^purpose = "An ICP TBI BIST measurement resource is used within an ICP TBI Case, as a data point to verify weither an Icp case has a valid claim for concussion"
* ^text.status = #additional

//elements that have been removed
* basedOn 0..0
* partOf 0..0
* encounter 0..0
* source 0..0

* item 1..*
* questionnaire 1..1
* subject only Reference(IcpPatient)
* author only Reference(NzPractitioner)
* status = $questionnaire-answers-status#completed