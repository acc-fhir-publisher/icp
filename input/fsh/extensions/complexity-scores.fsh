Extension: Icp_complexityScores
Id: icp-complexity-scores
Title: "ICP Complexity Scores"
Description: "Complexity scores for an ICP claim"

* ^url = $icp-complexity-scores
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension contains
    ICP_complexityScore named complexityScore 1..1 and
    ICP_categoryScores named categoryScores 0..*

    