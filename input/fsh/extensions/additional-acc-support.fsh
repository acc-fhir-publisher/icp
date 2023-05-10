Extension: AdditionalAccSupport
Id: additional-acc-support
Title: "ICP Additional ACC Support Needed"
Description: "Indicates if the ICP client requires additional ACC Support."

* ^url = $icp-additional-acc-support
* ^status = #draft

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 0..0
* value[x] only boolean