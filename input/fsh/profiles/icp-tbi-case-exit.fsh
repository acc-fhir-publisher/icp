Profile:        IcpTBICaseExit
Parent:         acc-icp-case
Id:             acc-icp-tbi-case-exit
Title:          "ACC ICP Episode of Care Exit Resource"
Description:    "This profile supports suppliers needing to inform ACC of a patient being exited from their ICP service."

* ^url = $icp-tbi-case-exit
* insert Acc-Metadata

* type 0..0

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension ^slicing.ordered = false

* status ^definition = "The Status of the ICP case (must be Finished)."

// * extension 2..2
// * extension contains    
//     $icp-exit-reason named exit-reason 1..1

* obeys finished-status-invariant