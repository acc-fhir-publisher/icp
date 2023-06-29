
Instance: icp-create-subcategory
InstanceOf: EpisodeOfCare
Usage: #example
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
* extension[+].url = $icp-referral-source
* extension[=].extension[0].url = $icp-referral-source-type
* extension[=].extension[=].valueCode = #internal
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

* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[=].valueCode = #social-support
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[=].valueCode = #active-participation
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #low

* extension[=].extension[+].url = $icp-category-scores
* extension[=].extension[=].extension[+].url = $icp-category
* extension[=].extension[=].extension[=].valueCode = #contextual
* extension[=].extension[=].extension[+].url = $icp-category-score
* extension[=].extension[=].extension[=].valueCode = #low