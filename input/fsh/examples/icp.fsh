Instance: ICP12345
InstanceOf: IntegratedCarePathway
Usage: #example
Title: "ACC ICP Notification - ICP12345"
Description: "Example ICP notification"
* meta.profile = $icp-profile
* managingOrganization.reference = $hpi-organisation#Organization/ORG123
* period.start = "2022-11-17"
* identifier[icpclaimnumber].use = #official
* identifier[icpclaimnumber].system = $icp-acc-claim-number
* identifier[icpclaimnumber].value = "A101111"
* identifier[patientDob].use = #official
* identifier[patientDob].value = "2002-11-17"
* status = #active
* type.coding.system = $icp-service-type-cs
* type.coding.code = #msk
* patient.reference = $nhi-patient#Patient/A112233
* extension[0].url = $icp-service-bundle
* extension[=].valueCode = #shoulder-bundle1
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
* extension[+].url = $icp-patient-birth-date
* extension[=].valueDate = "1995-01-17"
* extension[+].url = $icp-diagnoses
* extension[=].extension[0].url = $icp-diagnosis-codes
* extension[=].extension[=].valueCodeableConcept.coding = $SCT#45326000 "Shoulder pain"
* extension[=].extension[+].url = $icp-diagnosis-side
* extension[=].extension[=].valueCode = #left
* extension[+].url = $icp-complexity-scores
* extension[=].extension[0].url = $icp-category-score
* extension[=].extension[=].valueCode = #low
* extension[+].url = $icp-referral-source
* extension[=].extension[0].url = $icp-referral-source-type
* extension[=].extension[=].valueCode = #internal
* extension[=].extension[0].url = $icp-intended-pathway
* extension[=].extension[=].valueCode = #surgical
* extension[=].extension[+].url = "receivedDate"
* extension[=].extension[=].valueDate = "2022-11-17"