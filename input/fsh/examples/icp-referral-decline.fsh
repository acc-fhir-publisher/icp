Instance: icp-referral-decline
InstanceOf: Encounter
Usage: #example
Description: "Example of a referral decline Encounter"

* meta.profile = $icp-referral-decline
* contained = patient-unknown

* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"

* status = #finished
* class = $encounter-class#PRENC
* serviceProvider = Reference(Organization/ORG123)
* subject = Reference(patient-unknown)
* serviceType = $icp-service-type-cs#msk

* extension[0].url = $acc-providerid
* extension[=].valueString = "J99966"
* extension[+].url = $icp-referral-source
* extension[=].extension[0].url = "referral-source-type"
* extension[=].extension[=].valueCode = #gp
* extension[=].extension[+].url = "received-date"
* extension[=].extension[=].valueDate = "2022-11-17"
* extension[+].url = $icp-referral-declined
* extension[=].extension[0].url = "date-declined"
* extension[=].extension[=].valueDate = "2022-11-17"
* extension[=].extension[+].url = "reason"
* extension[=].extension[=].valueCode = #alternate-acc-service
* extension[=].extension[+].url = "recommended-next-steps"
* extension[=].extension[=].valueString = "recommended next steps"