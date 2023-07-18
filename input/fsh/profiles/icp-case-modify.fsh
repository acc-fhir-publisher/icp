Profile:        IcpCaseModify
Parent:         acc-icp-case
Id:             acc-icp-case-modify
Title:          "ACC ICP Episode of Care Service Bundle Update Resource"
Description:    "This profile supports suppliers needing to inform ACC of a change to the selected Service Bundle and/or Exceptional Funding Required."

* ^url = $icp-case-modify
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* type 0..0
* period 0..0

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension ^slicing.ordered = false

* extension 2..3
* extension contains
    $icp-service-bundle-change named service-bundle-change 1..1 and
    $icp-exceptional-funding named exceptional-funding 0..1

* extension[service-bundle-change] ^short = "The updated ICP service bundle for the treatment."
* extension[exceptional-funding] ^short = "Indicates if exceptionalfunding is required for this treatment and the funding type."

* obeys active-status-invariant