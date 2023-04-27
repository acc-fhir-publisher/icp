Extension: IcpExceptionalFunding
Id: icp-exceptional-funding
Title: "ICP Exceptional Funding"
Description: "Identifies the Referral source submitting the ICP Notification."

* ^url = $icp-exceptional-funding
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"


* extension contains
    Icp_FundingRationale named rationale 1..* and
    supportingDetails 1..1

* extension[rationale].url = $icp-funding-rationale (exactly)

* extension[supportingDetails].url = "supportingDetails" (exactly)
* extension[supportingDetails] ^definition = "The Exceptional Funding Supporting Details"
* extension[supportingDetails] ^short = "Supporting Details"
* extension[supportingDetails].value[x] only string