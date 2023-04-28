ValueSet: ICPcategoryScore
Id: icp-category-score
Title: "ICP Category Score"
Description: "New Zealand codes for Integrated Care Pathways Category Score"

* ^url = $icp-category-score-vs
* ^version = "0.1.0"
* include codes from system $icp-category-score-cs


CodeSystem: ICPcategoryScore
Id: icp-category-score
Title: "ICP Category Score"
Description: "New Zealand codes for Integrated Care Pathways Category Score"

* ^url = $icp-category-score-cs
* ^caseSensitive = true
* ^version = "0.1.0"

* #low "Low"
* #medium "Medium"
* #high "High"
* #unsure "Unsure"
* #na "N/A"