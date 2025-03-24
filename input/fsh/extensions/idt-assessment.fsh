Extension: Icp_IDT_assessment
Id: acc-icp-idt-assessment
Title: "ICP IDT Assessment"
Description: "Integrated Care Pathways IDT Assessment"

* ^url = $icp-idt-assessment
* insert Acc-Metadata-Tbi

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"

* ^context[+].type = #element
* ^context[=].expression = "Encounter"

// * ^context[+].type = #element
// * ^context[=].expression = "ServiceRequest"

* extension 0..2
* extension contains
    cover-and-causation 0..1 MS and
    start-c 0..1 MS

// * extension[cover-and-causation].url = "cover-and-causation"
* extension[cover-and-causation].value[x] only Reference(IcpTBICoverAndCausation)
// * extension[start-c].url = "start-c"
* extension[start-c].value[x] only Reference(IcpTBIStartC)
