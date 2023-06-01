ValueSet: ICPSubcategoryScore
Id: acc-icp-subcategory-score
Title: "Subcategory Score"
Description: "The score (low, medium, high) for the complexity sub-category."

* ^url = $icp-subcategory-score-vs
* ^version = "0.1.0"
* ^experimental = false
* include codes from system $icp-subcategory-score-cs


CodeSystem: ICPSubcategoryScore
Id: acc-icp-subcategory-score
Title: "Subcategory Score"
Description: "The score (low, medium, high) for the complexity sub-category."

* ^url = $icp-subcategory-score-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #low "Low"
* #medium "Medium"
* #high "High"
* #unsure "Unsure"
* #na "N/A"