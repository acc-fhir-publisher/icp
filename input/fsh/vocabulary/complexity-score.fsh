ValueSet: ICPcomplexityScore
Id: acc-icp-complexity-score
Title: "Complexity Score"
Description: "The score (low, medium, high) for each category/sub-category obtained from the ICP complexity assessment/tool."

* ^url = $icp-complexity-score-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-complexity-score-cs


CodeSystem: ICPcomplexityScore
Id: acc-icp-complexity-score
Title: "Complexity Score"
Description: "The score (low, medium, high) for each category/sub-category obtained from the ICP complexity assessment/tool."

* ^url = $icp-complexity-score-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #low "Low"
* #medium "Medium"
* #high "High"