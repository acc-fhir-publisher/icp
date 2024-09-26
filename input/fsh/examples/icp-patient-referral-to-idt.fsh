Instance: icp-patient-referral-to-idt
InstanceOf: ServiceRequest
Usage: #example
Description: "Example of an ICP Patient Referral Community care to IDT"
 
* meta.profile = $icp-bist-patient-referral
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"
* contained[0] = patient-internal
* contained[+] = acc-provider-tbi
* contained[+] = acc-provider-tbi-performer

* subject = Reference(patient-internal)
* requester = Reference(acc-provider-tbi)
* performer = Reference(acc-provider-tbi-performer)

* status = #completed
* authoredOn = "2023-08-09T15:30:00Z"
* intent = #order
* supportingInfo = Reference(http://hl7.org.nz/fhir/Questionnaire/acc-bist/bist-internal:1)

// * category.coding.system = $SCT
// * category.coding.code = #770656003
// * code = $SCT#110030002 "Brain concussion"

// * extension[+].url = $ethnicity
// * extension[=].valueCodeableConcept = $ethnicity-code-cs#10000 "European NFD"

// * extension[+].url = $sex-at-birth
// * extension[=].valueCodeableConcept = $administrative-gender#male

* extension[0].url = $acc-vendorid
* extension[=].valueString = "J99966"
