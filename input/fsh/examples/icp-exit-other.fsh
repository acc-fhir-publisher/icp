Instance: icp-exit-case-other
InstanceOf: EpisodeOfCare
Usage: #example
Description: "Example of an EpisodeOfCare with an exit reason of other"

* meta.profile = $icp-case-exit

* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "A101113"

* contained = patient-unknown
* patient = Reference(patient-unknown)
* managingOrganization = Reference(Organization/ORG123)
* status = #finished
* period.end = "2022-11-17"

* extension[0].url = $acc-providerid
* extension[=].valueString = "J99966"

* extension[+].url = $icp-exit-reason
* extension[=].extension[0].url = "reason"
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = "other-reason"
* extension[=].extension[=].valueString = "Reason not listed in the exit reason value set"
* extension[=].extension[+].url = "additional-acc-support-needed"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "supporting-details"
* extension[=].extension[=].valueString = "some info  to support other reason"
* extension[=].extension[+].url = "outcome-summary"
* extension[=].extension[=].valueString = "up to 5000 characters"
