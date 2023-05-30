Extension: IcpExceptionalFunding
Id: acc-icp-exceptional-funding
Title: "Exceptional Funding"
Description: "Identifies the Referral source submitting the ICP Notification."

* ^url = $icp-exceptional-funding
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 1..*

* extension contains
    Icp_FundingRationale named rationale 1..* and
    Icp_supportingDetails named supportingDetails 0..1