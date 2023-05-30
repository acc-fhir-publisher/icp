Extension: IcpReferralSource
Id: acc-icp-referral-source
Title: "Referral Source"
Description: "Identifies the Referral source submitting the ICP Notification."

* ^url = $icp-referral-source
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZL
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"


* extension contains
    Icp_referralSourceType named referralSourceType 1..1 and
    receivedDate 0..1

* extension[referralSourceType].url = $icp-referral-source-type (exactly)

* extension[receivedDate].url = "receivedDate" (exactly)
* extension[receivedDate].value[x] only date
* extension[receivedDate].valueDate obeys date-invariant and date-not-in-future-invariant