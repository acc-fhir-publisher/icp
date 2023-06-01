Extension: Icp_supportingDetails
Id: acc-icp-supporting-details
Title: "Supporting Details"
Description: "A paragraph outlining the reason/rational. Used to explain the need for exceptional funding being required as well as providing further context for the client exit."

* ^url = $icp-supporting-details
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* ^context.type = #element
* ^context.expression = "IcpExceptionalFunding"
* ^context[+].type = #element
* ^context[=].expression = "IcpExceptionalFunding.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"


* extension 0..0
* value[x] only string