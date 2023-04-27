ValueSet: ICPSubcategoryScore
Id: icp-subcategory-score
Title: "ICP Subcategory Score"
Description: "New Zealand codes for Integrated Care Pathways Subcategory Score"

* ^url = $icp-subcategory-score-vs
* ^version = "0.1.0"
* include codes from system $icp-subcategory-score-cs


CodeSystem: ICPSubcategoryScore
Id: icp-subcategory-score
Title: "ICP Subcategory Score"
Description: "New Zealand codes for Integrated Care Pathways Subcategory Score"

* ^url = $icp-subcategory-score-cs
* ^caseSensitive = true
* ^version = "0.1.0"

* #low "Low"
* #medium "Medium"
* #high "High"
* #unsure "Unsure"
* #na "N/A"