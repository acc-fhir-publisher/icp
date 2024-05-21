Profile:        IcpTbiCaseCreate
Parent:         acc-icp-case
Id:             acc-icp-tbi-case-create
Title:          "ACC ICP TBI Case Create Resource"
Description:    "ICP TBI Case Create is to be used by the supplier to furnish ACC with the required information following the completion of the triage assessment and the decision to accept the patient into their ICP service."

* ^url = $icp-tbi-case-create
* insert Acc-Metadata

* type 1..1
* type ^short = "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."
* type.coding 1..1
* type.coding.system 1..1
* type.coding.system = $icp-service-type-cs
* type.coding.code from $icp-service-type-vs (required)
* type.coding.code 1..1
* type.coding.code ^short = "tbi"

* status ^definition = "The Status of the ICP case (must be Active)."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension ^slicing.ordered = false

* extension 2..*
* extension contains
    $icp-service-bundle-tbi named service-bundle-tbi 1..1

* extension[service-bundle-tbi] ^short = "(icpcon1 | icpcon2 | icpcon3)"

* obeys active-status-invariant and start-date-when-active-finished-invariant
