Instance: icp-patient-referral-to-idt
InstanceOf: ServiceRequest
Usage: #example
Description: "Example of an ICP Patient Referral Community care to IDT"
 
* meta.profile = $icp-bist-patient-referral
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"

* contained[0] = acc-provider-tbi-requester
* contained[+] = patient-internal

* subject = Reference(patient-internal)
* requester = Reference(acc-provider-tbi-requester)

* status = #completed
* authoredOn = "2023-08-09T15:30:00Z"
* intent = #order
* supportingInfo = Reference(http://hl7.org.nz/fhir/Questionnaire/acc-bist/bist-internal:1)
* reasonCode = $icp-referral-source-type-cs#no-referral
