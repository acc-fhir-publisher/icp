Instance: icp-exit-case
InstanceOf: EpisodeOfCare
Usage: #example
Description: "Example of an EpisodeOfCare with an exit reason"

* meta.profile = $icp-case-exit

* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"

* contained = patient-unknown
* patient = Reference(patient-unknown)
* managingOrganization = Reference(Organization/ORG123)
* status = #finished
* period.end = "2022-11-17"

* extension[0].url = $acc-providerid
* extension[=].valueString = "J99966"

* extension[+].url = $icp-exit-reason
* extension[=].extension[0].url = "reason"
* extension[=].extension[=].valueCode = #goal-achieved
* extension[=].extension[+].url = "additional-acc-support-needed"
* extension[=].extension[=].valueBoolean = false
