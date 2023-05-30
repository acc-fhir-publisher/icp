Extension: ICP_categoryScores
Id: acc-icp-category-scores
Title: "Category Scores"
Description: "Category scores for an ICP claim"

* ^url = $icp-category-scores
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZL

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"
* ^context[+].type = #element
* ^context[=].expression = "Icp_complexityScores"
* ^context[+].type = #element
* ^context[=].expression = "Icp_complexityScores.extension"


* extension contains
    Icp_category named category 1..1 and
    Icp_categoryScore named categoryscore 1..1 and
    Icp_subcategoryScores named subcategoryscores 0..*