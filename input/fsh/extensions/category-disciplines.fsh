Extension: Icp_category_disciplines
Id: acc-icp-category-disciplines
Title: "Category disciplines"
Description: "The complexity category."
* ^url = $icp-category-disciplines
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"

* ^context[+].type = #element
* ^context[=].expression = "Encounter.extension.extension"

* extension 1..1
* extension contains
    number-of-disciplines 1..1

* extension[number-of-disciplines].url = "number-of-disciplines" (exactly)
* extension[number-of-disciplines].value[x] only code
* extension[number-of-disciplines].valueCode 1..1
* extension[number-of-disciplines].valueCode from $icp-complexity-score-vs (required)