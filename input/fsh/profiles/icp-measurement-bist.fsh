Profile: IcpMeasurementBIST
Parent: acc-icp-measurement
Id: acc-icp-tbi-measurement-bist
Title: "ACC Integrated Care Pathway TBI BIST"
Description: """
This resource profile supports suppliers providing a BIST document to ACC.

"""

* ^url = $icp-measurement-bist
* insert Acc-Metadata

* value[x] 0..0

* contained contains bist 1..1
* contained[bist] only $questionnaire-response
* contained[bist] ^short = "BIST"
* contained[bist] ^definition = "BIST"

* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom 1..1 