Extension: Icp_category_vocational
Id: acc-icp-category-vocational
Title: "Category vocational"
Description: "The complexity category."
* ^url = $icp-category-vocational
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

* extension 3..3
* extension contains
    employment 1..1 and
    return-to-work 1..1 and
    workplace-support 1..1

* extension[employment].url = "employment" (exactly)
* extension[employment].value[x] only code
* extension[employment].valueCode 1..1
* extension[employment].valueCode from $icp-complexity-score-vs (required)

* extension[return-to-work].url = "return-to-work" (exactly)
* extension[return-to-work].value[x] only code
* extension[return-to-work].valueCode 1..1
* extension[return-to-work].valueCode from $icp-complexity-score-vs (required)

* extension[workplace-support].url = "workplace-support" (exactly)
* extension[workplace-support].value[x] only code
* extension[workplace-support].valueCode 1..1
* extension[workplace-support].valueCode from $icp-complexity-score-vs (required)