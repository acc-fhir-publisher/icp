Extension: ICPSubcategoryScores
Id: icp-subcategory-scores
Title: "ICP Subcategory Scores"
Description: "Subcategory scores for an ICP claim"

* ^url = $icp-subcategory-scores
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"


* extension contains
    Icp_subcategory named subcategory 1..1 and
    Icp_subcategoryScore named subcategoryscore 1..1