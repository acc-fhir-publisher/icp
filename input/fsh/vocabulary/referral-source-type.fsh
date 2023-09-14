ValueSet: ICPReferralSourceType
Id: acc-icp-referral-source-type
Title: "Referral Source Type"
Description: "The source of the referral.  e.g. Internal is from within the supplier/consortium group."

* ^url = $icp-referral-source-type-vs
* insert Acc-Vocabulary-Metadata

* include codes from system $icp-referral-source-type-cs


CodeSystem: ICPReferralSourceType
Id: acc-icp-referral-source-type
Title: "Referral Source Type"
Description: "The source of the referral.  e.g. Internal is from within the supplier/consortium group."

* ^url = $icp-referral-source-type-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #gp "GP referral"
* #physio "Physio referral"
* #specialist "Specialist referral"
* #allied "Other Allied health referral"
* #employer "Employer referral"
* #rongoa "Rongoa referral"
* #other "Other referral type"
* #acc "ACC referral"
* #patient "Patient-led referral"