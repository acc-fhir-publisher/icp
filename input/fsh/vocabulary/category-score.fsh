ValueSet: ICPcategoryScore
Id: acc-icp-category-score
Title: "Category Score"
Description: "New Zealand codes for Integrated Care Pathways Category Score"

* ^url = $icp-category-score-vs
* ^version = "0.1.0"
* ^experimental = false
* include codes from system $icp-category-score-cs


CodeSystem: ICPcategoryScore
Id: acc-icp-category-score
Title: "Category Score"
Description: "New Zealand codes for Integrated Care Pathways Category Score"

* ^url = $icp-category-score-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #low "Low"
* #medium "Medium"
* #high "High"
* #unsure "Unsure"
* #na "N/A"