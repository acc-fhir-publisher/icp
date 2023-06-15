Extension: ICP_categoryScores
Id: acc-icp-category-scores
Title: "Category Scores"
Description: "A complexity category and corresponding complexity score. Also contains the sub-category details (sub-category types and corresponding scores) related to this category."

* ^url = $icp-category-scores
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"

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

* extension[category] ^short = "The complexity category."
* extension[categoryscore] ^short = "(low | medium | high | na)"
* extension[subcategoryscores] ^short = "A set of complexity sub-category and corresponding score."