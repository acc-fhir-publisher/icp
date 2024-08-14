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
* subject = Reference(patient-internal)
* status = #final
* effectiveDateTime = "2023-08-09T15:30:00Z"

* code.coding[+].system = $icp-prom-measurement-standard-msk-cs
* code.coding[=].code = #koos
* code.coding[=].display = "KOOS"
 