Extension: ICP_complexityScore
Id: acc-icp-complexity-score
Title: "Complexity Score"
Description: "The score (low, medium, high) for each category/sub-category obtained from the ICP complexity assessment/tool."
* ^url = $icp-complexity-score
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"

* value[x] only code
* valueCode 1..1
* valueCode from $icp-complexity-score-vs (required)