Extension: Icp_subcategoryScore
Id: icp-subcategory-score
Title: "ICP Subcategory Score"
Description: "Integrated Care Pathways Subcategory Score"
* ^url = $icp-subcategory-score
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* value[x] only code
* valueCode 1..1
* valueCode from $icp-subcategory-score-vs (required)