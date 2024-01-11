Instance: icp-clinical-measurement-shoulder-strength
InstanceOf: Observation
Usage: #example
Description: "A baseline measure of shoulder function through a 'shoulder abduction 45deg hand held dynamometer' test"

* meta.profile = $icp-measurement-clinical
* identifier.system = $acc-claim-number
* identifier.use = #official
* identifier.value = "AB12345"
* contained = patient-unknown
* performer = Reference(Organization/ORG123)
* subject = Reference(patient-unknown)
* status = #final
* effectiveDateTime = "2023-08-09T15:30:00Z"

* valueQuantity.code = #kg
* valueQuantity.value = 10.60
* valueQuantity.system = "http://unitsofmeasure.org"

* code.coding[+].system = $icp-clinical-measurement-standard-msk-cs
* code.coding[=].code = #shoulder-abduction-45deg-hand-held-dynamometer
* code.coding[=].display = "Shoulder abduction 45deg hand held dynamometer"

* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"

* extension[+].url = $icp-recorded-outcome-stage
* extension[=].valueCode = #baseline
