Extension: IcpReferralSource
Id: icp-referral-source
Title: "ICP Referral Source"
Description: "Identifies the Referral source submitting the ICP Notification."

* ^url = $icp-referral-source
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"


* extension contains
    Icp_referralSourceType named referralSourceType 1..1 and
    receivedDate 0..1

* extension[referralSourceType].url = $icp-referral-source-type (exactly)

* extension[receivedDate].url = "receivedDate" (exactly)
* extension[receivedDate].valueDate only date
* extension[receivedDate].valueDate obeys date-not-in-future