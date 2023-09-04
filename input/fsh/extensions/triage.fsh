Extension: Icp_Triage
Id: acc-icp-triage
Title: "ICP Triage"
Description: "Integrated Care Pathways Triage"

* ^url = $icp-triage
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "Encounter"

* extension 3..3
* extension contains
    $icp-triage-assessment-date named triage-assessment-date 1..1 and
    $icp-acc-client-authority named acc-client-authority 1..1 and
    $icp-complexity-scores named complexityScores 1..1

* extension[triage-assessment-date] ^short = "The date the triage assessment was completed."
* extension[acc-client-authority] ^short = "Indicates that the Client has agreed to ACC being able to collect, store, use, &amp; share their information."
* extension[complexityScores] ^short = "The scores obtained from the ICP complexity assessment/tool."