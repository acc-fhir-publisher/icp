Instance: icp-tbi-referral-decline
InstanceOf: Encounter
Usage: #example
Description: "Example of a referral decline TBI Encounter"

* meta.profile = $icp-tbi-referral-decline
* contained = patient-internal

* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"
* contained[0] = acc-provider
* contained[+] = patient-internal
* contained[+] = icp-tbi-cover-measurement-internal
* contained[+] = icp-tbi-start-c-measurement-internal

* participant.individual = Reference(acc-provider-tbi)
* participant.type = $encounter-participant-type#PPRF

* status = #finished
* class = $encounter-class#PRENC
* serviceProvider = Reference(Organization/ORG123)
* subject = Reference(patient-internal)
* serviceType = $icp-service-type-cs#tbi

// * extension[0].url = $acc-providerid
// * extension[=].valueString = "J99966"
* extension[0].url = $icp-referral-source
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

* extension[+].url = $icp-idt-assessment
* extension[=].extension[0].url = "cover-and-causation"
* extension[=].extension[=].valueReference = Reference(icp-tbi-cover-measurement-internal)
* extension[=].extension[+].url = "start-c"
* extension[=].extension[=].valueReference = Reference(icp-tbi-start-c-measurement-internal)

// * extension[+].url = $icp-triage
// * extension[=].extension[0].url = $icp-triage-assessment-date
// * extension[=].extension[=].valueDate = "2022-11-17"
// * extension[=].extension[+].url = $icp-acc-client-authority
// * extension[=].extension[=].valueBoolean = true

// * extension[=].extension[+].url = $icp-complexity-scores
// * extension[=].extension[=].extension[0].url = $icp-complexity-score
// * extension[=].extension[=].extension[=].valueCode = #low

// * extension[=].extension[=].extension[+].url = $icp-category-co-morbidities
// * extension[=].extension[=].extension[=].extension[+].url = "co-morbidity-factors"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low

// * extension[=].extension[=].extension[+].url = $icp-category-psychosocial
// * extension[=].extension[=].extension[=].extension[+].url = "social-support-network"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "patient-resilience"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "equitable-access"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "cultural-support"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "active-participation"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "medication-use"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "health-literacy"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low

// * extension[=].extension[=].extension[+].url = $icp-category-contextual
// * extension[=].extension[=].extension[=].extension[+].url = "housing-accommodation"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "travel"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "return-to-sport"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "finances"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "return-to-adls"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low

// * extension[=].extension[=].extension[+].url = $icp-category-disciplines
// * extension[=].extension[=].extension[=].extension[+].url = "number-of-disciplines"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low

// * extension[=].extension[=].extension[+].url = $icp-category-vocational
// * extension[=].extension[=].extension[=].extension[+].url = "employment"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "return-to-work"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low
// * extension[=].extension[=].extension[=].extension[+].url = "workplace-support"
// * extension[=].extension[=].extension[=].extension[=].valueCode = #low