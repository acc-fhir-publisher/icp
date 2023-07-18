Extension: Icp_category_vocational
Id: acc-icp-category-vocational
Title: "Category vocational"
Description: "The complexity category."
* ^url = $icp-category-vocational
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "ACC New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "integratedcarepathways@acc.co.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "ACC New Zealand© 2023+; Licensed Under Creative Commons No Rights Reserved."

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"

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