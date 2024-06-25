Profile: IcpMeasurementBIST
Parent: acc-icp-measurement
Id: acc-icp-measurement-bist
Title: "ACC Integrated Care Pathway TBI BIST"
Description: """
This resource profile supports suppliers providing a BIST document to ACC.

"""

* ^url = $icp-measurement-bist
* insert Acc-Metadata

* value[x] 0..0
* dataAbsentReason 0..0

* contained contains bist 1..1
* contained[bist] only $questionnaire-response
* contained[bist] ^short = "BIST"
* contained[bist] ^definition = "BIST"

* contained[patient] ^short = "Patient's details."
* contained[patient] ^definition = "Contained patient resource for the required patient's details."
* contained[patient].extension[ethnicity] 1..*
* contained[patient].extension[ethnicity].value[x] only CodeableConcept
* contained[patient].extension[ethnicity].valueCodeableConcept 1..1
* contained[patient].extension[ethnicity].valueCodeableConcept from $icp-bist-ethnicity-vs (required)
* contained[patient].extension[ethnicity] ^short = "ICP TBI Ethnicity codes for BIST measurement"

* contained[patient].extension[sex-at-birth] 1..1
* contained[patient].extension[sex-at-birth] ^short = "(male | female | other)"

* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom 1..1
* derivedFrom ^short = "BIST measurement this observation is based on."
* derivedFrom ^definition = "Contained BIST measurement resource reference."

* code from $icp-bist-measurement-standard-vs (required)
* code 1..1
* code ^definition = "Type of TBI measurement"

* extension contains
    $icp-bist-referral named bist-referral 1..1
