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
    $icp-complexity-score named complexityScore 1..1 and
    $icp-category-co-morbidities named categoryCoMorbidities 1..1 and
    $icp-category-psychosocial named categoryPsychosocial 1..1 and
    $icp-category-contextual named categoryContextual 1..1 and
    $icp-category-disciplines named categoryDisciplines 1..1 and
    $icp-category-vocational named categoryVocational 0..1
    
* extension[complexityScore] ^short = "(low | medium | high)"