ValueSet: ICPStatusVS
Id: icp-status
Title: "ICP Status"
Description: "New Zealand codes for Integrated Care Pathways status"

* ^url = $icp-status-vs
* ^version = "0.1.0"

* include codes from system $icp-status-cs

CodeSystem: ICPStatusCS
Id: icp-status
Title: "ICP Status"
Description: "New Zealand codes for Integrated Care Pathways status"

* ^url = $icp-status-cs
* ^caseSensitive = true
* ^version = "0.1.0"

* #active "Active"
* #finished "Finished"