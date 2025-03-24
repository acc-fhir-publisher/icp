ValueSet: ICPExitReason
Id: acc-icp-exit-reason
Title: "Exit Reason"
Description: "New Zealand codes for Integrated Care Pathways case exit reasons"

* ^url = $icp-exit-reason-vs
* insert Acc-Vocabulary-Metadata

* include $icp-exit-reason-cs#goal-achieved
* include $icp-exit-reason-cs#partially-achieved
* include $icp-exit-reason-cs#goal-not-achieved
* include $icp-exit-reason-cs#non-compliance
* include $icp-exit-reason-cs#alt-services
* include $icp-exit-reason-cs#new-diagnosis
* include $icp-exit-reason-cs#not-eligible
* include $icp-exit-reason-cs#client-moved
* include $icp-exit-reason-cs#other

ValueSet: ICPMskExitReason
Id: acc-icp-msk-exit-reason
Title: "Exit Reason"
Description: "New Zealand codes for Integrated Care Pathways MSK case exit reasons"

* ^url = $icp-msk-exit-reason-vs
* insert Acc-Vocabulary-Metadata

* include $icp-exit-reason-cs#goal-achieved
* include $icp-exit-reason-cs#partially-achieved
* include $icp-exit-reason-cs#goal-not-achieved
* include $icp-exit-reason-cs#non-compliance
* include $icp-exit-reason-cs#alt-services
* include $icp-exit-reason-cs#new-diagnosis-non-msk
* include $icp-exit-reason-cs#not-eligible
* include $icp-exit-reason-cs#client-moved
* include $icp-exit-reason-cs#other

ValueSet: ICPTbiExitReason
Id: acc-icp-tbi-exit-reason
Title: "Exit Reason"
Description: "New Zealand codes for Integrated Care Pathways TBI case exit reasons"

* ^url = $icp-tbi-exit-reason-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include $icp-exit-reason-cs#goal-achieved
* include $icp-exit-reason-cs#partially-achieved
* include $icp-exit-reason-cs#goal-not-achieved
* include $icp-exit-reason-cs#non-compliance
* include $icp-exit-reason-cs#alt-services
* include $icp-exit-reason-cs#new-diagnosis-non-tbi
* include $icp-exit-reason-cs#not-eligible
* include $icp-exit-reason-cs#client-moved
* include $icp-exit-reason-cs#other

CodeSystem: ICPExitReason
Id: acc-icp-exit-reason
Title: "Exit Reason"
Description: "New Zealand codes for Integrated Care Pathways case exit reasons"

* ^url = $icp-exit-reason-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #goal-achieved "Recovery goal achieved"
* #partially-achieved "Recovery goal partially achieved"
* #goal-not-achieved "Recovery goal not achieved"
* #non-compliance "Non-compliance"
* #alt-services "Client opts for alternative ACC services"
* #new-diagnosis "New ACC diagnosis (out of ICPMSK scope)"
* #new-diagnosis-non-msk "New ACC diagnosis (out of ICPMSK scope)"
* #new-diagnosis-non-tbi "New ACC diagnosis (out of ICPTBI scope)"
* #not-eligible "Not eligible under ACC"
* #client-moved "Client moved out of region"
* #other "Other - please specify"