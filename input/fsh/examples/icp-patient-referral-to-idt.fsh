Instance: icp-patient-referral-to-idt
InstanceOf: ServiceRequest
Usage: #example
Description: "Example of an ICP Patient Referral Community care to IDT"
 
* meta.profile = $icp-bist-patient-referral
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"
* contained[0] = acc-provider-tbi
// * contained[=].extension[0].url = $acc-providerid
// * contained[=].extension[=].valueString = "J99966"

* contained[+] = patient-internal-tbi-idt
* performer = Reference(Organization/ORG123)
* subject = Reference(patient-internal-tbi-idt)
* requester = Reference(acc-provider-tbi)
* status = #completed
* authoredOn = "2023-08-09T15:30:00Z"
* intent = #order

// * category.coding.system = $SCT
// * category.coding.code = #770656003
// * code = $SCT#110030002 "Brain concussion"


// * extension[+].url = $acc-providerid
// * extension[=].valueString = "J99966"

// * extension[+].url = $ethnicity
// * extension[=].valueCodeableConcept = $ethnicity-code-cs#10000 "European NFD"

// * extension[+].url = $sex-at-birth
// * extension[=].valueCodeableConcept = $administrative-gender#male