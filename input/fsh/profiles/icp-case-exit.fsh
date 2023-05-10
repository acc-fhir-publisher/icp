Profile:        IcpCaseExit
Parent:         IcpCase
Id:             IcpCaseExit
Title:          "ACC ICP Episode of Care Exit Resource"
Description:    "An ACC Integrated Care Pathway resource based on Episode of Care"
* obeys finished-status-invariant and start-date-when-active-finished-invariant

* ^url = $icp-case-finish
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
