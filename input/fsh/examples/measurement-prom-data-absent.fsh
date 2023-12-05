Instance: icp-prom-measurement-data-absent
InstanceOf: Observation
Usage: #example
Description: "A KOOS patient-reported outcome measurement at exit where the test couldn't be completed"

* meta.profile = $icp-measurement-prom
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"
* contained = patient-unknown
* performer = Reference(Organization/ORG123)
* subject = Reference(patient-unknown)
* effectiveDateTime = "2023-08-09T15:30:00Z"
* status = #final

* dataAbsentReason.coding[+].system = $icp-data-absent-reason-cs
* dataAbsentReason.coding[=].code = #not-tested
* dataAbsentReason.coding[=].display = "Not Tested"

* code.coding[+].system = $icp-prom-measurement-standard-msk-cs
* code.coding[=].code = #koos
* code.coding[=].display = "KOOS"

* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"

* extension[+].url = $icp-recorded-outcome-stage
* extension[=].valueCode = #exit
