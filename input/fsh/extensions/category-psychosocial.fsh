Extension: Icp_category_psychosocial
Id: acc-icp-category-psychosocial
Title: "Category psychosocial"
Description: "The psychosocial category."
* ^url = $icp-category-psychosocial
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
    social-support-network 1..1 and
    patient-resilience 1..1 and
    equitable-access 1..1 and
    cultural-support 1..1 and
    active-participation 1..1 and
    medication-use 1..1 and
    health-literacy 1..1

* extension[social-support-network].url = "social-support-network" (exactly)
* extension[social-support-network].value[x] only code
* extension[social-support-network].valueCode 1..1
* extension[social-support-network].valueCode from $icp-complexity-score-vs (required)

* extension[patient-resilience].url = "patient-resilience" (exactly)
* extension[patient-resilience].value[x] only code
* extension[patient-resilience].valueCode 1..1
* extension[patient-resilience].valueCode from $icp-complexity-score-vs (required)

* extension[equitable-access].url = "equitable-access" (exactly)
* extension[equitable-access].value[x] only code
* extension[equitable-access].valueCode 1..1
* extension[equitable-access].valueCode from $icp-complexity-score-vs (required)

* extension[cultural-support].url = "cultural-support" (exactly)
* extension[cultural-support].value[x] only code
* extension[cultural-support].valueCode 1..1
* extension[cultural-support].valueCode from $icp-complexity-score-vs (required)

* extension[active-participation].url = "active-participation" (exactly)
* extension[active-participation].value[x] only code
* extension[active-participation].valueCode 1..1
* extension[active-participation].valueCode from $icp-complexity-score-vs (required)

* extension[medication-use].url = "medication-use" (exactly)
* extension[medication-use].value[x] only code
* extension[medication-use].valueCode 1..1
* extension[medication-use].valueCode from $icp-complexity-score-vs (required)

* extension[health-literacy].url = "health-literacy" (exactly)
* extension[health-literacy].value[x] only code
* extension[health-literacy].valueCode 1..1
* extension[health-literacy].valueCode from $icp-complexity-score-vs (required)
