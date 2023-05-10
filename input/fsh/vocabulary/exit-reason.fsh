ValueSet: ICPExitReason
Id: icp-exit-reason
Title: "ICP Exit Reason"
Description: "New Zealand codes for Integrated Care Pathways case exit reasons"

* ^url = $icp-exit-reason-vs
* ^version = "0.1.0"
* include codes from system $icp-exit-reason-cs


CodeSystem: ICPExitReason
Id: icp-exit-reason
Title: "ICP Exit Reason"
Description: "New Zealand codes for Integrated Care Pathways case exit reasons"

* ^url = $icp-exit-reason-cs
* ^caseSensitive = true
* ^version = "0.1.0"

* #goal-achieved "Goal achieved"
* #partially-achieved "Goal partially achieved"
* #goal-not-achieved "Goal not achieved"
* #non-compliance "Non-compliance"
* #alt-services "Alternative services"
* #out-of-scope "Out of scope"
* #new-diagnosis "New diagnosis"
* #not-eligible "Not eligible"
* #client-moved "Client moved"
* #other "Other"