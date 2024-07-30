Instance: icp-refferal-tbi-secondary-care
InstanceOf: EpisodeOfCare
Usage: #example
Description: "Example of an ICP TBI Secondary care refferal aka refferal into"

* meta.profile = $icp-tbi-case-create
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"
* type = $icp-service-type-cs#tbi
* contained[0] = patient-internal
* contained[+] = icp-tbi-start-c-measurement-internal
* contained[+] = icp-tbi-cover-measurement-internal
* managingOrganization = Reference(Organization/ORG123)
* period.start = "2022-11-17"
* status = #active
* patient = Reference(patient-internal)

* extension[0].url = $icp-service-bundle-tbi
* extension[=].valueCode = #icpcon1
* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"

