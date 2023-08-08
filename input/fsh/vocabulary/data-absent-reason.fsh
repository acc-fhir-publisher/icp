ValueSet: DataAbsentReason
Id: acc-icp-data-absent-reason
Title: "data-absent-reason"
Description: "Data Absent Reason"

* ^url = $icp-data-absent-reason-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-data-absent-reason-cs

CodeSystem: ACCDataAbsentReason
Id: acc-icp-data-absent-reason
Title: "ACC Data Absent Reason"
Description: "ACC Data Absent Reason"

* ^url = $icp-data-absent-reason-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #not-tested "Not Tested"
* #unable-to-test "Unable to Test"