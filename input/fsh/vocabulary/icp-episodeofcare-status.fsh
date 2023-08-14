ValueSet: ICPStatusVS
Id: acc-icp-status
Title: "Status"
Description: "The Status of the ICP case (Active or Finished)"

* ^url = $icp-status-vs
* insert Acc-Vocabulary-Metadata

* $episode-of-case-status#active "Active"
* $episode-of-case-status#finished "Finished"