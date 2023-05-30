Extension: AdditionalAccSupport
Id: acc-icp-additional-acc-support
Title: "Additional ACC Support Needed"
Description: "Indicates if the ICP client requires additional ACC Support."

* ^url = $icp-additional-acc-support
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 0..0
* value[x] only boolean