Instance: A101114-2002-11-17
InstanceOf: EpisodeOfCare
Usage: #example
Description: "Example of an EpisodeOfCare with an exit reason"

* meta.profile = $icp-case-exit

* identifier.system = $icp-acc-claim-number
* identifier.use = #official
* identifier.value = "A101114"

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
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "supporting-details"
* extension[=].extension[=].valueString = "some info  to support other reason"
* extension[=].extension[+].url = "outcome-summary"
* extension[=].extension[=].valueString = "up to 5000 characters"
