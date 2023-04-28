Extension: Icp_categoryScore
Id: icp-category-score
Title: "ICP Category Score"
Description: "Integrated Care Pathways Category Score"
* ^url = $icp-category-score
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."

* ^context[+].type = #element
* ^context[=].expression = "Icp_complexityScores"
* ^context[+].type = #element
* ^context[=].expression = "Icp_complexityScores.extension"

* ^context[+].type = #element
* ^context[=].expression = "Icp_categoryScores"
* ^context[+].type = #element
* ^context[=].expression = "Icp_categoryScores.extension"


* value[x] only code
* valueCode 1..1
* valueCode from $icp-category-score-vs (required)