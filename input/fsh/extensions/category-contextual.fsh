Extension: Icp_category_contextual
Id: acc-icp-category-contextual
Title: "Category contextual"
Description: "The contextual category."
* ^url = $icp-category-contextual
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"

* ^context[+].type = #element
* ^context[=].expression = "Encounter.extension.extension"

* extension 5..5
* extension contains
    housing-accommodation 1..1 and
    travel 1..1 and
    return-to-sport 1..1 and
    finances 1..1 and
    return-to-adls 1..1

* extension[housing-accommodation].url = "housing-accommodation" (exactly)
* extension[housing-accommodation].value[x] only code
* extension[housing-accommodation].valueCode 1..1
* extension[housing-accommodation].valueCode from $icp-complexity-score-vs (required)

* extension[travel].url = "travel" (exactly)
* extension[travel].value[x] only code
* extension[travel].valueCode 1..1
* extension[travel].valueCode from $icp-complexity-score-vs (required)

* extension[return-to-sport].url = "return-to-sport" (exactly)
* extension[return-to-sport].value[x] only code
* extension[return-to-sport].valueCode 1..1
* extension[return-to-sport].valueCode from $icp-complexity-score-vs (required)

* extension[finances].url = "finances" (exactly)
* extension[finances].value[x] only code
* extension[finances].valueCode 1..1
* extension[finances].valueCode from $icp-complexity-score-vs (required)

* extension[return-to-adls].url = "return-to-adls" (exactly)
* extension[return-to-adls].value[x] only code
* extension[return-to-adls].valueCode 1..1
* extension[return-to-adls].valueCode from $icp-complexity-score-vs (required)
