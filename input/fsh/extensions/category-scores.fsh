Extension: Icp_categoryScores
Id: icp-category-scores
Title: "ICP Category Scores"
Description: "Category scores for an ICP claim"

* ^url = $icp-category-scores
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"


* extension contains
    Icp_category named category 1..1 and
    Icp_categoryScore named categoryscore 1..1 and
    ICPSubcategoryScores named subcategoryscores 0..*