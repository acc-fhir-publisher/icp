Instance: ICP456789
InstanceOf: EpisodeOfCare
Usage: #example
Title: "ACC ICP Case Create - Full Complexity Array"
Description: "Example ICP Case Create - Full Complexity Array"
* meta.profile = $icp-case-create
* identifier.system = $icp-acc-claim-number
* identifier.use = #official
* identifier.value = "10056282764"
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
* extension[=].extension[=].valueCodeableConcept.coding = $SCT#45326000 "Shoulder pain"
* extension[=].extension[+].url = $icp-diagnosis-side
* extension[=].extension[=].valueCode = #left

 

* extension[+].url = $icp-complexity-scores
* extension[=].extension[0].url = $icp-complexity-score
* extension[=].extension[=].valueCode = #high

 

* extension[=].extension[+].url = $icp-category-scores
* extension[=].extension[=].extension[0].url = $icp-category
* extension[=].extension[=].extension[=].valueCode = #psychosocial
* extension[=].extension[=].extension[+].url = $icp-category-score
* extension[=].extension[=].extension[=].valueCode = #high
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #comorbitity-factors
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #na
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #social-support
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #medium
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #active-participation
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #patient-resilience
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #high

 

* extension[=].extension[+].url = $icp-category-scores
* extension[=].extension[=].extension[0].url = $icp-category
* extension[=].extension[=].extension[=].valueCode = #contextual
* extension[=].extension[=].extension[+].url = $icp-category-score
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #medication-use
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #high
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #equitable-access
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #na
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #health-literacy
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #low

 

* extension[=].extension[+].url = $icp-category-scores
* extension[=].extension[=].extension[0].url = $icp-category
* extension[=].extension[=].extension[=].valueCode = #disciplines
* extension[=].extension[=].extension[+].url = $icp-category-score
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #finances
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #high

 

* extension[=].extension[+].url = $icp-category-scores
* extension[=].extension[=].extension[0].url = $icp-category
* extension[=].extension[=].extension[=].valueCode = #co-morbidities
* extension[=].extension[=].extension[+].url = $icp-category-score
* extension[=].extension[=].extension[=].valueCode = #low
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #finances
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #high
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #travel
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #na
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #return-to-daily-life
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #low

 

* extension[=].extension[+].url = $icp-category-scores
* extension[=].extension[=].extension[0].url = $icp-category
* extension[=].extension[=].extension[=].valueCode = #vocational
* extension[=].extension[=].extension[+].url = $icp-category-score
* extension[=].extension[=].extension[=].valueCode = #medium
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #employment
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #high
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #workplace-support
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #na
* extension[=].extension[=].extension[+].url = $icp-subcategory-scores
* extension[=].extension[=].extension[=].extension[0].url = $icp-subcategory
* extension[=].extension[=].extension[=].extension[0].valueCode = #return-to-work-support
* extension[=].extension[=].extension[=].extension[+].url = $icp-subcategory-score
* extension[=].extension[=].extension[=].extension[=].valueCode = #low



* extension[+].url = $icp-referral-source
* extension[=].extension[0].url = $icp-referral-source-type
* extension[=].extension[=].valueCode = #gp
* extension[=].extension[+].url = "receivedDate"
* extension[=].extension[=].valueDate = "2022-11-17"