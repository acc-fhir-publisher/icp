Instance: A101112-2022-11-17
InstanceOf: EpisodeOfCare
Usage: #example
* meta.profile = $icp-case-modify
* identifier.system = $icp-acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"
* contained = patient-unknown
* managingOrganization = Reference(Organization/ORG123)
* status = #active
* patient = Reference(patient-unknown)
* extension[0].url = $icp-service-bundle
* extension[=].valueCode = #icpkar2
* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"
* extension[+].url = $icp-funding-rationale
* extension[=].valueCode = #other
* extension[+].url = $icp-exceptional-funding
* extension[=].extension[0].url = $icp-funding-rationale
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = $icp-funding-rationale
* extension[=].extension[=].valueCode = #social-support
* extension[=].extension[+].url = $icp-supporting-details
* extension[=].extension[=].valueString = "supporting details"
* extension[+].url = $icp-supporting-details
* extension[=].valueString = "supporting details"