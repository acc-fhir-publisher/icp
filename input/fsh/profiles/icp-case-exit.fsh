Profile:        IcpCaseExit
Parent:         acc-icp-case
Id:             acc-icp-case-exit
Title:          "ACC ICP Episode of Care Exit Resource"
Description:    "This profile supports suppliers needing to inform ACC of a patient being exited from their ICP service."
* obeys finished-status-invariant and start-date-when-active-finished-invariant

* ^url = $icp-case-exit
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* type 0..0

* extension 1..4
* extension contains
    $icp-exit-reason named reason 1..1 and
    $icp-supporting-details named supportingDetails 1..1 and
    $icp-additional-acc-support named additionalAccSupportNeeded 1..1

Invariant: finished-status-invariant
Severity: #error
Description: "The status attribute must be set to 'finished'."
Expression: "status = 'finished'"
