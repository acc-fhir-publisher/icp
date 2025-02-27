ValueSet: ICPReferralSourceType
Id: acc-icp-referral-source-type
Title: "Referral Source Type"
Description: "The source of the referral.  e.g. Internal is from within the supplier/consortium group."

* ^url = $icp-referral-source-type-vs
* insert Acc-Vocabulary-Metadata

* include $icp-referral-source-type-cs#gp
* include $icp-referral-source-type-cs#physio
* include $icp-referral-source-type-cs#specialist
* include $icp-referral-source-type-cs#allied
* include $icp-referral-source-type-cs#employer
* include $icp-referral-source-type-cs#rongoa
* include $icp-referral-source-type-cs#other
* include $icp-referral-source-type-cs#acc
* include $icp-referral-source-type-cs#patient

ValueSet: ICPMSKReferralSourceType
Id: acc-icp-msk-referral-source-type
Title: "MSK Referral Source Type"
Description: "The source of the referral.  e.g. Internal is from within the supplier/consortium group."

* ^url = $icp-msk-referral-source-type-vs
* insert Acc-Vocabulary-Metadata

* include $icp-referral-source-type-cs#gp
* include $icp-referral-source-type-cs#physio
* include $icp-referral-source-type-cs#specialist
* include $icp-referral-source-type-cs#allied
* include $icp-referral-source-type-cs#employer
* include $icp-referral-source-type-cs#rongoa
* include $icp-referral-source-type-cs#other
* include $icp-referral-source-type-cs#acc
* include $icp-referral-source-type-cs#patient

ValueSet: ICPTBIReferralSourceType
Id: acc-icp-tbi-referral-source-type
Title: "TBI Referral Source Type"
Description: "The source of the referral.  e.g. Internal is from within the supplier/consortium group."

* ^url = $icp-tbi-referral-source-type-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include $icp-referral-source-type-cs#gp
* include $icp-referral-source-type-cs#physio
* include $icp-referral-source-type-cs#allied
* include $icp-referral-source-type-cs#other
* include $icp-referral-source-type-cs#urgent-care

ValueSet: ICPTbiBistReferralSourceType
Id: acc-icp-tbi-bist-referral-source-type
Title: "TBI Referral Source Type"
Description: "The source of the referral.  e.g. Internal is from within the supplier/consortium group."

* ^url = $icp-tbi-bist-referral-source-type-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include $icp-referral-source-type-cs#emergency
* include $icp-referral-source-type-cs#community-care
* include $icp-referral-source-type-cs#vestibular-ocular-physio
* include $icp-referral-source-type-cs#concussion-service
* include $icp-referral-source-type-cs#recovered-discharged
* include $icp-referral-source-type-cs#no-referral

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
* #urgent-care "Urgent Care referral"
* #emergency "Emergency referral"
* #community-care "Community Care referral"
* #vestibular-ocular-physio "Vestibular Ocular Physio referral"
* #concussion-service "Concussion Service referral"
* #recovered-discharged "Recovered/Discharged referral"
* #no-referral "No referral required"