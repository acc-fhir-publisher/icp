Instance: icp-patient-measurement-no-value
InstanceOf: Observation
Usage: #example
Description: "Example of an ICP Observation resource captured against an ACC Integrated Care Pathways case"

* meta.profile = $icp-measurement-prom
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"
* contained = patient-unknown
* performer = Reference(Organization/ORG123)
* subject = Reference(patient-unknown)
* effectiveDateTime = "2023-08-09T15:30:00Z"
* status = #final


* bodySite.coding[+].code = $SCT#72696002

* dataAbsentReason.coding[+].system = $icp-data-absent-reason-cs
* dataAbsentReason.coding[=].code = #not-tested
* dataAbsentReason.coding[=].display = "Not Tested"
* code.coding[+].system = $icp-prom-measurement-standard-cs
* code.coding[=].code = #koos
* code.coding[=].display = "KOOS"

* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"
* extension[+].url = $icp-recorded-outcome-stage
* extension[=].valueCode = #baseline