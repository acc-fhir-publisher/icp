Extension: Icp_complexityScores
Id: acc-icp-complexity-scores
Title: "Complexity Scores"
Description: "Complexity scores for an ICP claim"

* ^url = $icp-complexity-scores
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension contains
    ICP_complexityScore named complexityScore 1..1 and
    ICP_categoryScores named categoryScores 0..*

    