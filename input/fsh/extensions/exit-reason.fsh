Extension: Icp_ExitReason
Id: acc-icp-exit-reason
Title: "Exit Reason"
Description: "Integrated Care Pathways Exit Reason"

* ^url = $icp-exit-reason
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "ACC New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "integratedcarepathways@acc.co.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "ACC New Zealand© 2023+; Licensed Under Creative Commons No Rights Reserved."

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 2..4
* extension contains
    reason 1..1 and
    additional-acc-support-needed 1..1 and
    supporting-details 0..1 and
    outcome-summary 0..1

* extension[reason].url = "reason" (exactly)
* extension[reason].value[x] only code
* extension[reason].valueCode 1..1
* extension[reason].valueCode from $icp-exit-reason-vs (required)

* extension[additional-acc-support-needed].url = "additional-acc-support-needed" (exactly)
* extension[additional-acc-support-needed].value[x] only boolean
* extension[additional-acc-support-needed].valueBoolean 1..1

* extension[supporting-details].url = "supporting-details" (exactly)
* extension[supporting-details].value[x] only string
* extension[supporting-details].valueString 0..1
* extension[supporting-details].valueString obeys supporting-details-max-length-invariant
* extension[supporting-details] ^short = "Used to explain the client exit reason not being 'Recovery goal achieved'."
* extension[supporting-details] ^definition = "A paragraph outlining the reason/rational for the client exit.  Required when the exit reason is not 'Recovery goal achieved'."

* extension[outcome-summary].url = "outcome-summary" (exactly)
* extension[outcome-summary].value[x] only string
* extension[outcome-summary].valueString 0..1
* extension[outcome-summary].valueString obeys outcome-summary-max-length-invariant
* extension[outcome-summary] ^short = "A summary of the client's outcome."
* extension[outcome-summary] ^definition = "A summary of the client's outcome."

Invariant: outcome-summary-max-length-invariant
Description: "'supporting-details' must be no more than 5000 characters."
Expression: "value.length() <= 5000"
Severity: #error
