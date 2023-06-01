
ValueSet: ICPStatusVS
Id: acc-icp-status
Title: "Status"
Description: "The Status of the ICP case (Active or Finished)"

* ^url = $icp-status-vs
* ^version = "0.1.0"
* ^experimental = false

* $episode-of-case-status#active "Active"
* $episode-of-case-status#finished "Finished"