Instance: icp-patient-measure
InstanceOf: Observation
Usage: #example
Description: "Example of an ICP Observation resource for entering into ACC Integrated Care Pathways"

* meta.profile = $icp-observation-prom
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"
* contained = patient-unknown
* performer = Reference(Organization/ORG123)
* status = #final
* subject = Reference(patient-unknown)

* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"

* bodySite.coding[+].code = $SCT#72696002

* effectiveDateTime = "2022-11-17"
* extension[+].url = $icp-stage-observation-care
* extension[=].valueCode = #baseline

* dataAbsentReason.coding[+].system = $icp-data-absent-reason-cs
* dataAbsentReason.coding[=].code = #not-tested
* dataAbsentReason.coding[=].display = "Not Tested"


* code.coding[+].system = $icp-patient-observation-cs
* code.coding[=].code = #koos
* code.coding[=].display = "Knee injury and Osteoarthritis Outcome Score"
