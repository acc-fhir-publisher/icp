Instance: icp-modify-case
InstanceOf: EpisodeOfCare
Usage: #example
Description: "Example of an EpisodeOfCare service bundle modification request"

* meta.profile = $icp-case-modify
* contained = patient-unknown

* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"

* status = #active
* managingOrganization = Reference(Organization/ORG123)
* patient = Reference(patient-unknown)

* extension[0].url = $acc-providerid
* extension[=].valueString = "J99966"

* extension[+].url = $icp-service-bundle-change
* extension[=].extension[0].url = $icp-service-bundle-msk
* extension[=].extension[=].valueCode = #icpkar2
* extension[=].extension[+].url = "rationale"
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = "supporting-details"
* extension[=].extension[=].valueString = "service bundle change supporting details"

* extension[+].url = $icp-exceptional-funding
* extension[=].extension[0].url = "rationale"
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = "supporting-details"
* extension[=].extension[=].valueString = "exceptional funding supporting details"
