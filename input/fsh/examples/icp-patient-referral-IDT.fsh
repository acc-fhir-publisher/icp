Instance: icp-patient-referral-IDT
InstanceOf: ServiceRequest
Usage: #example
Description: "Example of an ICP Patient Referral Community care to IDT"

* meta.profile = $icp-bist-patient-referral
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"
* contained[0] = patient-internal-tbi-idt
* contained[+] = acc-provider-tbi
* performer = Reference(Organization/ORG123)
* subject = Reference(patient-internal-tbi-idt)
* requester = Reference(acc-provider-tbi)
* status = #final
* intent = #order
* category.coding[0].system = $SCT
* category.coding[0].code = #770656003



* code.coding[0].system = $SCT
* code.coding[=].code = #110030002




