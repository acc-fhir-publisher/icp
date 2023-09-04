ValueSet: ICPDeclinedReason
Id: acc-icp-declined-reason
Title: "Referral Decline Reason"
Description: "New Zealand codes for Integrated Care Pathways referral decline reasons"

* ^url = $icp-declined-reason-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-declined-reason-cs


CodeSystem: ICPDeclinedReason
Id: acc-icp-declined-reason
Title: "Referral Decline Reason"
Description: "New Zealand codes for Integrated Care Pathways referral decline reasons"

* ^url = $icp-declined-reason-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #accredited-employer "Accredited Employer (work injury)"
* #client-not-contactable "Client not contactable"
* #client-declined-entry-to-icpmsk "Client declined entry to ICPMSK"
* #body-site-out-of-scope-ineligible "Body site out of scope/ineligible"
* #out-of-region "Out of region"
* #not-eligible-under-acc "Not eligible under ACC (cover/causation)"
* #alternate-acc-service "Alternate ACC service more appropriate for client"
* #other "Other - please specify"