Instance: A101112-2022-11-17
InstanceOf: EpisodeOfCare
Usage: #example
Description: "Example of an EpisodeOfCare service bundle modification request"

* meta.profile = $icp-case-modify
* contained = patient-unknown

* identifier.system = $icp-acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"

* managingOrganization = Reference(Organization/ORG123)
* status = #active
* patient = Reference(patient-unknown)

* extension[0].url = $acc-providerid
* extension[=].valueString = "J99966"

* extension[+].url = $icp-service-bundle
* extension[=].valueCode = #icpkar2

* extension[+].url = $icp-exceptional-funding
* extension[=].extension[0].url = "rationale"
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = "supporting-details"
* extension[=].extension[=].valueString = "supporting details"
