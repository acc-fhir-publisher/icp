
Instance: icp-create
InstanceOf: EpisodeOfCare
Usage: #example
* meta.profile = $icp-case-create
* identifier.system = $icp-acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"
* type = $icp-service-type-cs#msk
* contained = patient-unknown
* managingOrganization = Reference(Organization/ORG123)
* period.start = "2022-11-17"
* status = #active
* patient = Reference(patient-unknown)
* extension[+].url = $icp-service-bundle
* extension[=].valueCode = #icpkar1
* extension[+].url = $icp-acc-client-authority
* extension[=].valueBoolean = true
* extension[+].url = $icp-client-participation-agreement
* extension[=].valueBoolean = true
* extension[+].url = $icp-covers-all-claim-diagnoses
* extension[=].valueBoolean = true
* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"
* extension[+].url = $icp-triage-assessment-date
* extension[=].valueDate = "2022-11-17"

* extension[+].url = $icp-diagnoses
* extension[=].extension[0].url = $icp-diagnosis-codes
* extension[=].extension[=].valueCodeableConcept = $SCT#45326000 "Shoulder pain"
* extension[=].extension[+].url = $icp-diagnosis-side
* extension[=].extension[=].valueCode = #left

* extension[+].url = $icp-diagnoses
* extension[=].extension[0].url = $icp-diagnosis-codes
* extension[=].extension[=].valueCodeableConcept = $SCT#45326000 "Shoulder pain"
* extension[=].extension[+].url = $icp-diagnosis-side
* extension[=].extension[=].valueCode = #left

* extension[+].url = $icp-referral-source
* extension[=].extension[0].url = $icp-referral-source-type
* extension[=].extension[=].valueCode = #gp
* extension[=].extension[+].url = "receivedDate"
* extension[=].extension[=].valueDate = "2022-11-17"
* extension[+].url = $icp-exceptional-funding
* extension[=].extension[0].url = $icp-funding-rationale
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = $icp-funding-rationale
* extension[=].extension[=].valueCode = #social-support
* extension[=].extension[+].url = $icp-supporting-details
* extension[=].extension[=].valueString = "supporting details"
* extension[+].url = $icp-complexity-scores
* extension[=].extension[0].url = $icp-complexity-score
* extension[=].extension[=].valueCode = #low

* extension[=].extension[+].url = $icp-category-scores
* extension[=].extension[=].extension[0].url = $icp-category
* extension[=].extension[=].extension[=].valueCode = #psychosocial
* extension[=].extension[=].extension[+].url = $icp-category-score
* extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[+].url = $icp-category-scores
* extension[=].extension[=].extension[+].url = $icp-category
* extension[=].extension[=].extension[=].valueCode = #contextual
* extension[=].extension[=].extension[+].url = $icp-category-score
* extension[=].extension[=].extension[=].valueCode = #medium