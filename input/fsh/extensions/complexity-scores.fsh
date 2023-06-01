Extension: Icp_complexityScores
Id: acc-icp-complexity-scores
Title: "Complexity Scores"
Description: "The scores obtained from the ICP complexity assessment/tool."

* ^url = $icp-complexity-scores
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension contains
    ICP_complexityScore named complexityScore 1..1 and
    ICP_categoryScores named categoryScores 0..*

* extension[complexityScore] ^short = "(low | medium | high)"
* extension[categoryScores] ^short = "A complexity category and corresponding complexity score. Also contains the sub-category details (sub-category types and corresponding scores) related to this category."