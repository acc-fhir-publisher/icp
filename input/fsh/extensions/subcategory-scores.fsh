Extension: Icp_subcategoryScores
Id: acc-icp-subcategory-scores
Title: "Subcategory Scores"
Description: "A set of complexity sub-category and corresponding score."

* ^url = $icp-subcategory-scores
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension.extension"

* extension contains
    Icp_subcategory named subcategory 1..1 and
    Icp_subcategoryScore named subcategoryscore 1..1

* extension[subcategory] ^short = "The complexity sub-category."
* extension[subcategoryscore] ^short = "(low | medium | high | unsure | na)"