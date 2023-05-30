Extension: Icp_category
Id: acc-icp-category
Title: "Category"
Description: "Integrated Care Pathways Category"
* ^url = $icp-category
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZL
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
* ^context[+].type = #element
* ^context[=].expression = "Icp_categoryScores"
* ^context[+].type = #element
* ^context[=].expression = "Icp_categoryScores.extension"

* value[x] only code
* valueCode 1..1
* valueCode from $icp-category-vs (required)