Extension: Icp_supportingDetails
Id: icp-supporting-details
Title: "ICP Supporting Details"
Description: "Supporting details supplied for exceptional funding."

* ^url = $icp-supporting-details
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