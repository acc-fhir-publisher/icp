Extension: Icp_ExitReason
Id: acc-icp-exit-reason
Title: "Exit Reason"
Description: "Integrated Care Pathways Exit Reason"
* ^url = $icp-exit-reason
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZL
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context.type = #element
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* value[x] only code
* valueCode from $icp-exit-reason-vs (required)