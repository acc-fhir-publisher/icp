Extension: Icp_category_disciplines
Id: acc-icp-category-disciplines
Title: "Category disciplines"
Description: "The complexity category."
* ^url = $icp-category-disciplines
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
    number-of-disciplines 1..1

* extension[number-of-disciplines].url = "number-of-disciplines" (exactly)
* extension[number-of-disciplines].value[x] only code
* extension[number-of-disciplines].valueCode 1..1
* extension[number-of-disciplines].valueCode from $icp-complexity-score-vs (required)