ValueSet: ICPDeclinedReason
Id: acc-icp-declined-reason
Title: "Referral Decline Reason"
Description: "New Zealand codes for Integrated Care Pathways referral decline reasons"

* ^url = $icp-declined-reason-vs
* insert Acc-Vocabulary-Metadata

* include $icp-declined-reason-cs#accredited-employer
* include $icp-declined-reason-cs#client-not-contactable
* include $icp-declined-reason-cs#client-declined-entry-to-icpmsk
* include $icp-declined-reason-cs#body-site-out-of-scope-ineligible
* include $icp-declined-reason-cs#out-of-region
* include $icp-declined-reason-cs#not-eligible-under-acc
* include $icp-declined-reason-cs#alternate-acc-service
* include $icp-declined-reason-cs#other


ValueSet: ICPTBIDeclinedReason
Id: acc-icp-tbi-declined-reason
Title: "Referral TBI Decline Reason"
Description: "New Zealand codes for Integrated Care Pathways tbi referral decline reasons"

* ^url = $icp-tbi-declined-reason-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include $icp-declined-reason-cs#accredited-employer
* include $icp-declined-reason-cs#alternate-acc-service
* include $icp-declined-reason-cs#symtoms-resolved-or-partially-resolved 
* include $icp-declined-reason-cs#client-not-contactable
* include $icp-declined-reason-cs#client-declined-entry-to-icptbi
* include $icp-declined-reason-cs#body-site-out-of-scope-ineligible
* include $icp-declined-reason-cs#out-of-region
* include $icp-declined-reason-cs#not-eligible-under-acc
* include $icp-declined-reason-cs#not-icptbi-eligible-injury
* include $icp-declined-reason-cs#no-capacity-referral
* include $icp-declined-reason-cs#requires-tamariki-service
* include $icp-declined-reason-cs#other



CodeSystem: ICPDeclinedReason
Id: acc-icp-declined-reason
Title: "Referral Decline Reason"
Description: "New Zealand codes for Integrated Care Pathways referral decline reasons"

* ^url = $icp-declined-reason-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #accredited-employer "Accredited Employer"
// * #accredited-employer-non-work "Accredited Employer (non-work injury)"
* #client-not-contactable "Client not contactable"
* #client-declined-entry-to-icpmsk "Client declined entry to ICPMSK"
* #body-site-out-of-scope-ineligible "Body site out of scope/ineligible"
* #out-of-region "Out of region"
* #not-eligible-under-acc "Not eligible under ACC (cover/causation)"
* #alternate-acc-service "Alternate ACC service more appropriate for client"
* #symtoms-resolved-or-partially-resolved "Recovered IDT is not required"
* #client-declined-entry-to-icptbi "Client declined entry to ICPTBI"
* #not-icptbi-eligible-injury "Not eligible under ICPTBI (covered under ACC)"
* #no-capacity-referral "Referred to an alternative supplier"
* #requires-tamariki-service "Benefit from teh supplier that holds paediatric skillset"
* #other "Other - please specify"
