Instance: icp-clinical-measurement-no-value
InstanceOf: Observation
Usage: #example
Description: "Example of an ICP Observation resource captured as a measurement against an ACC Integrated Care Pathways case"

* meta.profile = $icp-measurement-clinical
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"
* contained = patient-unknown
* performer = Reference(Organization/ORG123)
* subject = Reference(patient-unknown)
* effectiveDateTime = "2023-08-09T15:30:00Z"
* status = #final

* bodySite.coding[+].code =  $SCT#72696002
* dataAbsentReason.coding[+].system = $icp-data-absent-reason-cs
* dataAbsentReason.coding[=].code = #not-tested
* dataAbsentReason.coding[=].display = "Not Tested"
* code.coding[+].system = $icp-clinical-observation-cs
* code.coding[=].code = #shoulder-abduction-45deg-hand-held-dynamometer
* code.coding[=].display = "Shoulder abduction 45deg hand held dynamometer"

* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"
* extension[+].url = $icp-recorded-outcome-stage
* extension[=].valueCode = #baseline
