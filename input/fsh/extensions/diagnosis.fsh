Extension: Icp_diagnosis
Id: acc-icp-diagnosis
Title: "Diagnosis"
Description: "A diagnosis for the injury being treated."
* ^url = $icp-diagnosis
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension contains
    diagnosis-code 1..1 and
    diagnosis-side 1..1

* extension[diagnosis-code].url = "diagnosis-code" (exactly)
* extension[diagnosis-code].value[x] only CodeableConcept
* extension[diagnosis-code].valueCodeableConcept 1..1
* extension[diagnosis-code].valueCodeableConcept from $icp-diagnoses-code-vs (required)

* extension[diagnosis-side].url = "diagnosis-side" (exactly)
* extension[diagnosis-side].value[x] only code
* extension[diagnosis-side].valueCode 1..1
* extension[diagnosis-side].valueCode from $icp-diagnosis-side-vs (required)

* extension[diagnosis-code] ^short = "The diagnosis code for the injury being treated."
* extension[diagnosis-side] ^short = "The body side this diagnosis code relates to."
