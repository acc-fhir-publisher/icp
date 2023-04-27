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
    Icp_categoryScore named totalScore 1..1 and
    Icp_categoryScores named categoryScores 0..*
    