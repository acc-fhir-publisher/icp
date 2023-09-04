ValueSet: ICPEncounterStatusVS
Id: acc-icp-encounter-status
Title: "Status"
Description: "The Status of the ICP referral (Declined)"

* ^url = $icp-encounter-status-vs
* insert Acc-Vocabulary-Metadata

* $encounter-status#triaged "Triaged"
* $encounter-status#finished "Finished"