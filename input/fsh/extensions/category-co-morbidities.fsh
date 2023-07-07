Extension: Icp_category_co_morbidities
Id: acc-icp-category-co-morbidities
Title: "Category Co-morbidities"
Description: "The complexity category."
* ^url = $icp-category-co-morbidities
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension.extension"

* extension contains
    $icp-complexity-score named complexityScore 0..1 and
    co-morbidity-factors 1..1

* extension[co-morbidity-factors].url = "co-morbidity-factors" (exactly)
* extension[co-morbidity-factors].value[x] only code
* extension[co-morbidity-factors].valueCode 1..1
* extension[co-morbidity-factors].valueCode from $icp-complexity-score-vs (required)
