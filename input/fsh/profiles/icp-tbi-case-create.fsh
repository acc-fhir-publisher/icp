Profile:        IcpTbiCaseCreate
Parent:         acc-icp-case
Id:             acc-icp-tbi-case-create
Title:          "ACC ICP TBI Case Create Resource"
Description:    "ICP TBI Case Create is to be used by the supplier to furnish ACC with the required information following the completion of the triage assessment and the decision to accept the patient into their ICP service."

* ^url = $icp-tbi-case-create
* insert Acc-Metadata-Tbi

* type 1..1
* type ^short = "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."
* type.coding 1..1
* type.coding.system 1..1
* type.coding.system = $icp-service-type-cs
* type.coding.code from $icp-service-type-vs (required)
* type.coding.code 1..1
* type.coding.code ^short = "tbi"

* status ^definition = "The Status of the ICP case (must be Active)."

* contained contains 
    patient 1..1 and
    cover-and-causation 1..1 and
    start-c 1..1

* contained[patient] only $icp-patient
* contained[cover-and-causation] only $icp-tbi-cover-causation
* contained[start-c] only $icp-tbi-start-c


* extension 3..*
* extension contains
    $icp-service-bundle-tbi named service-bundle-tbi 1..1 and
    $icp-referral-source named referral-source 1..1 and
    // $icp-diagnoses named diagnoses 1..1 and
    $icp-idt-assessment named idt-assessment 1..1

// * extension[idt-assessment].extension[complexityScores] 0..0
// * extension[idt-assessment].extension[client-participation-agreement].valueBoolean 1..1

* extension[service-bundle-tbi] ^short = "(icpcon1 | icpcon2 | icpcon3)"
// * extension[diagnoses] ^short = "The diagnoses for the injury being treated."
* extension[referral-source] ^short = "(gp | physio | specialist | allied | employer | rongoa | other | acc | patient)"
* extension[idt-assessment] ^short = "The IDT-assessment assessment of the patient must be present when an IDT-assessment has been performed."


* obeys active-status-invariant and start-date-when-active-finished-invariant
