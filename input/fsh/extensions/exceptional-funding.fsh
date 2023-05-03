Extension: IcpExceptionalFunding
Id: icp-exceptional-funding
Title: "Exceptional Funding"
Description: "Identifies the Referral source submitting the ICP Notification."

* ^url = $icp-exceptional-funding
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 1..*

// * rationale from $icp-funding-rationale-vs (required)
// * rationale 1..* 

// * supportingDetails 1..1 
// * supportingDetails only string

* extension contains
    Icp_FundingRationale named rationale 1..* and
    Icp_supportingDetails named supportingDetails 1..1