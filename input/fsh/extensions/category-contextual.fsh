Extension: Icp_category_contextual
Id: acc-icp-category-contextual
Title: "Category contextual"
Description: "The contextual category."
* ^url = $icp-category-contextual
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