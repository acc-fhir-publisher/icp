ValueSet: ICPExitReason
Id: acc-icp-exit-reason
Title: "Exit Reason"
Description: "New Zealand codes for Integrated Care Pathways case exit reasons"

* ^url = $icp-exit-reason-vs
* ^version = "0.1.0"
* ^experimental = false
* include codes from system $icp-exit-reason-cs


CodeSystem: ICPExitReason
Id: acc-icp-exit-reason
Title: "Exit Reason"
Description: "New Zealand codes for Integrated Care Pathways case exit reasons"

* ^url = $icp-exit-reason-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #goal-achieved "Recovery goal achieved"
* #partially-achieved "Recovery goal partially achieved"
* #goal-not-achieved "Recovery goal not achieved"
* #non-compliance "Non-compliance"
* #alt-services "Client opts for alternative ACC services"
* #new-diagnosis "New ACC diagnosis (out of ICPMSK scope)"
* #not-eligible "Not eligible under ACC"
* #client-moved "Client moved out of region"
* #other "Other - please specify"