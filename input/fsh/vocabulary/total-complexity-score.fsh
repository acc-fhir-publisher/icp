ValueSet: ICPcomplexityScore
Id: acc-icp-complexity-score
Title: "Complexity Score"
Description: "The score (low, medium, high) for each category/sub-category obtained from the ICP complexity assessment/tool."

* ^url = $icp-complexity-score-vs
* ^version = "0.1.0"
* ^experimental = false
* include codes from system $icp-complexity-score-cs


CodeSystem: ICPcomplexityScore
Id: acc-icp-complexity-score
Title: "Complexity Score"
Description: "The score (low, medium, high) for each category/sub-category obtained from the ICP complexity assessment/tool."

* ^url = $icp-complexity-score-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #low "Low"
* #medium "Medium"
* #high "High"