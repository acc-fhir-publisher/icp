Instance: icp-create-case
InstanceOf: EpisodeOfCare
Usage: #example
Description: "Example of an ICP EpisodeOfCare resource for entering into ACC Integrated Care Pathways"

* meta.profile = $icp-case-create
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"
* type = $icp-service-type-cs#msk
* contained = patient-unknown
* managingOrganization = Reference(Organization/ORG123)
* period.start = "2022-11-17"
* status = #active
* patient = Reference(patient-unknown)

* extension[0].url = $icp-service-bundle-msk
* extension[=].valueCode = #icpkar1
* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"

* extension[+].url = $icp-diagnoses
* extension[=].extension[0].url = "covers-all-claim-diagnoses"
* extension[=].extension[=].valueBoolean = true

* extension[=].extension[+].url = $icp-diagnosis
* extension[=].extension[=].extension[0].url = "diagnosis-code"
* extension[=].extension[=].extension[=].valueCodeableConcept = $acc-readcode-cs#SN2.. "Effects of heat and light"
* extension[=].extension[=].extension[+].url = "diagnosis-side"
* extension[=].extension[=].extension[=].valueCode = #na
* extension[=].extension[+].url = $icp-diagnosis
* extension[=].extension[=].extension[0].url = "diagnosis-code"
* extension[=].extension[=].extension[=].valueCodeableConcept = $acc-readcode-cs#SN3.. "Effects of air pressure"
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

* extension[+].url = $icp-triage

* extension[=].extension[0].url = $icp-acc-client-authority
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = $icp-client-participation-agreement
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = $icp-triage-assessment-date
* extension[=].extension[=].valueDate = "2022-11-17"

* extension[=].extension[+].url = $icp-complexity-scores
* extension[=].extension[=].extension[0].url = $icp-complexity-score
* extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[=].extension[+].url = $icp-category-co-morbidities
* extension[=].extension[=].extension[=].extension[0].url = "co-morbidity-factors"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[=].extension[+].url = $icp-category-psychosocial
* extension[=].extension[=].extension[=].extension[0].url = "social-support-network"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "patient-resilience"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "equitable-access"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "cultural-support"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "active-participation"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "medication-use"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "health-literacy"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[=].extension[+].url = $icp-category-contextual
* extension[=].extension[=].extension[=].extension[0].url = "housing-accommodation"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "travel"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "return-to-sport"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "finances"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "return-to-adls"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[=].extension[+].url = $icp-category-disciplines
* extension[=].extension[=].extension[=].extension[0].url = "number-of-disciplines"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[=].extension[+].url = $icp-category-vocational
* extension[=].extension[=].extension[=].extension[0].url = "employment"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "return-to-work"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[=].extension[+].url = "workplace-support"
* extension[=].extension[=].extension[=].extension[=].valueCode = #low