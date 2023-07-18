Instance: icp-create-subcategory
InstanceOf: EpisodeOfCare
Usage: #example
Description: "Example of an ICP EpisodeOfCare resource with a subcategory"

* meta.profile = $icp-case-create

* contained = patient-unknown

* identifier.system = $icp-acc-claim-number
* identifier.use = #official
* identifier.value = "10056282764"
* patient = Reference(patient-unknown)

* type = $icp-service-type-cs#msk
* status = #active
* managingOrganization = Reference(Organization/PAK072)
* period.start = "2022-11-17"

* extension[0].url = $icp-service-bundle
* extension[=].valueCode = #icpkar1
* extension[+].url = $icp-acc-client-authority
* extension[=].valueBoolean = true
* extension[+].url = $icp-client-participation-agreement
* extension[=].valueBoolean = true
* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"
* extension[+].url = $icp-triage-assessment-date
* extension[=].valueDate = "2022-11-17"

* extension[+].url = $icp-diagnoses
* extension[=].extension[0].url = "covers-all-claim-diagnoses"
* extension[=].extension[=].valueBoolean = true

* extension[=].extension[+].url = $icp-diagnosis
* extension[=].extension[=].extension[0].url = "diagnosis-code"
* extension[=].extension[=].extension[=].valueCodeableConcept = $acc-readcode-cs#SN2.. "Effects of heat and light"
* extension[=].extension[=].extension[+].url = "diagnosis-side"
* extension[=].extension[=].extension[=].valueCode = #na

* extension[+].url = $icp-referral-source
* extension[=].extension[0].url = "referral-source-type"
* extension[=].extension[=].valueCode = #gp
* extension[=].extension[+].url = "received-date"
* extension[=].extension[=].valueDate = "2022-11-17"

* extension[+].url = $icp-exceptional-funding
* extension[=].extension[0].url = "rationale"
* extension[=].extension[=].valueCode = #social-support
* extension[=].extension[+].url = "rationale"
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = "supporting-details"
* extension[=].extension[=].valueString = "supporting details"

* extension[+].url = $icp-complexity-scores
* extension[=].extension[0].url = $icp-complexity-score
* extension[=].extension[=].valueCode = #low

* extension[=].extension[+].url = $icp-category-co-morbidities
* extension[=].extension[=].extension[+].url = "co-morbidity-factors"
* extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[+].url = $icp-category-psychosocial
* extension[=].extension[=].extension[+].url = "social-support-network"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "patient-resilience"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "equitable-access"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "cultural-support"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "active-participation"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "medication-use"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "health-literacy"
* extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[+].url = $icp-category-contextual
* extension[=].extension[=].extension[+].url = "housing-accommodation"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "travel"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "return-to-sport"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "finances"
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = "return-to-adls"
* extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[+].url = $icp-category-disciplines
* extension[=].extension[=].extension[+].url = "number-of-disciplines"
* extension[=].extension[=].extension[=].valueCode = #low
