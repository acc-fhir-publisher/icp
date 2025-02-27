Extension: IcpTbi_BistReferralSource
Id: acc-icp-bist-referral-source
Title: "TBI BIST Referral Source"
Description: "The source of the referral to the BIST."
* ^url = $icp-bist-referral-source
* insert Acc-Metadata-Tbi

* ^context[0].type = #element
* ^context[=].expression = "Observation"
* ^context[+].type = #element
* ^context[=].expression = "Observation.extension"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest.extension"

* extension 0..0

* value[x] only code
* valueCode 1..1
* valueCode from $icp-tbi-bist-referral-type-vs (required)