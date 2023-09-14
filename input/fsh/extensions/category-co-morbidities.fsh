Extension: Icp_category_co_morbidities
Id: acc-icp-category-co-morbidities
Title: "Category Co-morbidities"
Description: "The complexity category."
* ^url = $icp-category-co-morbidities
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"
* ^context[+].type = #element
* ^context[=].expression = "Encounter.extension"
* ^context[+].type = #element
* ^context[=].expression = "Encounter.extension.extension"

* extension 1..1
* extension contains
    co-morbidity-factors 1..1

* extension[co-morbidity-factors].url = "co-morbidity-factors" (exactly)
* extension[co-morbidity-factors].value[x] only code
* extension[co-morbidity-factors].valueCode 1..1
* extension[co-morbidity-factors].valueCode from $icp-complexity-score-vs (required)
