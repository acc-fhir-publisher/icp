Profile:        IcpCaseExit
Parent:         acc-icp-case
Id:             acc-icp-case-exit
Title:          "ACC ICP Episode of Care Exit Resource"
Description:    "This profile supports suppliers needing to inform ACC of a patient being exited from their ICP service."

* ^url = $icp-case-exit
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* type 0..0

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension ^slicing.ordered = false

* extension 2..2
* extension contains    
    $icp-exit-reason named exit-reason 1..1

* obeys finished-status-invariant

Invariant: finished-status-invariant
Severity: #error
Description: "The status attribute must be set to 'finished'."
Expression: "status = 'finished'"
