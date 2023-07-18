Extension: ICP_complexityScore
Id: acc-icp-complexity-score
Title: "Complexity Score"
Description: "The score (low, medium, high) for each category/sub-category obtained from the ICP complexity assessment/tool."
* ^url = $icp-complexity-score
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

* value[x] only code
* valueCode 1..1
* valueCode from $icp-complexity-score-vs (required)