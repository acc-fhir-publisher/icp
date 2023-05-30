ValueSet: ICPStatusVS
Id: acc-icp-status
Title: "Status"
Description: "New Zealand codes for Integrated Care Pathways status"

* ^url = $icp-status-vs
* ^version = "0.1.0"
* ^experimental = false

* include codes from system $icp-status-cs

CodeSystem: ICPStatusCS
Id: acc-icp-status
Title: "Status"
Description: "New Zealand codes for Integrated Care Pathways status"

* ^url = $icp-status-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #active "Active"
* #finished "Finished"