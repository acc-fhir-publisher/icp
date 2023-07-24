Extension: IcpReferralSource
Id: acc-icp-referral-source
Title: "Referral Source"
Description: "The source of the ICP referral, e.g. ACC referral, GP referral, rongoa referral, etc."

* ^url = $icp-referral-source
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"

* extension 1..2
* extension contains
    referral-source-type 1..1 and
    received-date 0..1

* extension[referral-source-type].url = "referral-source-type" (exactly)
* extension[referral-source-type].value[x] only code
* extension[referral-source-type].valueCode 1..1
* extension[referral-source-type].valueCode from $icp-referral-source-type-vs (required)
* extension[referral-source-type] ^short = "(gp | physio | specialist | allied | employer | rognoa | other | acc | patient)"

* extension[received-date].url = "received-date" (exactly)
* extension[received-date].value[x] only date
* extension[received-date].valueDate obeys date-invariant and date-not-in-future-invariant