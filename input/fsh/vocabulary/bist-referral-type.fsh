ValueSet: ICPTbiBistReferraType
Id: acc-icp-tbi-bist-referral-type
Title: "CC TBI Referral Type"
Description: "The referred to referral type."

* ^url = $icp-tbi-bist-referral-type-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include $icp-referral-source-type-cs#emergency
* include $icp-referral-source-type-cs#community-care
* include $icp-referral-source-type-cs#vestibular-ocular-physio
* include $icp-referral-source-type-cs#concussion-service
* include $icp-referral-source-type-cs#recovered-discharged
* include $icp-referral-source-type-cs#no-referral