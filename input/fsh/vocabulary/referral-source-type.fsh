ValueSet: ICPReferralSourceType
Id: acc-icp-referral-source-type
Title: "Referral Source Type"
Description: "The source of the referral.  e.g. Internal is from within the supplier/consortium group."

* ^url = $icp-referral-source-type-vs
* ^version = "0.1.0"
* ^experimental = false

* include codes from system $icp-referral-source-type-cs


CodeSystem: ICPReferralSourceType
Id: acc-icp-referral-source-type
Title: "Referral Source Type"
Description: "The source of the referral.  e.g. Internal is from within the supplier/consortium group."

* ^url = $icp-referral-source-type-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #internal "Internal"
* #external "External"
* #acc "ACC"
* #self "Self"