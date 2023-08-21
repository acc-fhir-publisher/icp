Instance: icp-prom-measurement
InstanceOf: Observation
Usage: #example
Description: "A baseline KOOS patient-reported outcome measurement"

* meta.profile = $icp-measurement-prom
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"
* contained = patient-unknown
* performer = Reference(Organization/ORG123)
* subject = Reference(patient-unknown)
* status = #final

* valueQuantity.value = 101

* effectiveDateTime = "2023-08-09T15:30:00Z"

* bodySite.coding[+].code = #72696002
* bodySite.coding[=].system = $SCT
* bodySite.coding[=].display = "Knee region structure"

* code.coding[+].system = $icp-prom-measurement-standard-cs
* code.coding[=].code = #koos
* code.coding[=].display = "KOOS"

* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"
* extension[+].url = $icp-recorded-outcome-stage
* extension[=].valueCode = #baseline