Extension: Icp_complexityScores
Id: acc-icp-complexity-scores
Title: "Complexity Scores"
Description: "The scores obtained from the ICP complexity assessment/tool."

* ^url = $icp-complexity-scores
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "Encounter.extension"

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 5..6
* extension contains
    $icp-complexity-score named complexityScore 1..1 and
    $icp-category-co-morbidities named categoryCoMorbidities 1..1 and
    $icp-category-psychosocial named categoryPsychosocial 1..1 and
    $icp-category-contextual named categoryContextual 1..1 and
    $icp-category-disciplines named categoryDisciplines 1..1 and
    $icp-category-vocational named categoryVocational 0..1
    
* extension[complexityScore] ^short = "(low | medium | high)"
* extension[categoryVocational] ^short = "Indicates whether the vocational complexity scores are applicable.  e.g. For an unemployed person, this is not applicable through it not being provided."