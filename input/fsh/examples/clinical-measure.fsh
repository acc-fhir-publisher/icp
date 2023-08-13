Instance: icp-clinical
InstanceOf: Observation
Usage: #example
Description: "Example of an ICP Observation resource for entering into ACC Integrated Care Pathways"

* meta.profile = $icp-observation-clinical
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "A101112"
* contained = patient-unknown
* performer = Reference(Organization/ORG123)
* status = #final
* subject = Reference(patient-unknown)

* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"


//* bodySite.url = $icp-body-site-measure-vs
* bodySite.coding[+].code = $SCT#72696002


* effectiveDateTime = "2023-08-09T15:30:00Z"

* extension[+].url = $icp-stage-observation-care
* extension[=].valueCode = #baseline

// * dataAbsentReason = #not-tested

// * valueQuantity.unit = "kg"
* valueQuantity.code = #kg
* valueQuantity.value = 10.6
* valueQuantity.system = "http://unitsofmeasure.org"



* code.coding[+].system = $icp-clinical-observation-cs
* code.coding[=].code = #shoulder-abduction-45deg-hand-held-dynamometer
* code.coding[=].display = "Shoulder abduction 45deg hand held dynamometer"

