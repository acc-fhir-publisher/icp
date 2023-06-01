Extension: IcpReferralSource
Id: acc-icp-referral-source
Title: "Referral Source"
Description: "The source of the ICP referral, e.g. ACC referral, GP referral, rongoa referral, etc."

* ^url = $icp-referral-source
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"


* extension contains
    Icp_referralSourceType named referralSourceType 1..1 and
    receivedDate 0..1

* extension[referralSourceType].url = $icp-referral-source-type (exactly)
* extension[referralSourceType] ^short = "(internal | external | acc | self)"

* extension[receivedDate].url = "receivedDate" (exactly)
* extension[receivedDate].value[x] only date
* extension[receivedDate].valueDate obeys date-invariant and date-not-in-future-invariant