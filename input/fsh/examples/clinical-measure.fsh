// Instance: icp-clinical
// InstanceOf: Observation
// Usage: #example
// Description: "Example of an ICP Observation resource for entering into ACC Integrated Care Pathways"

// * meta.profile = $icp-observation-clinical
// * identifier.system = $acc-claim-number
// * identifier.use = #official
// * identifier.value = "A101112"
// * contained = patient-unknown
// * performer = Reference(Organization/ORG123)
// * status = #final
// * subject = Reference(patient-unknown)

// * extension[+].url = $acc-providerid
// * extension[=].valueString = "J99966"

// * bodySite.coding[+].system = $SCT
// * bodySite.coding[+].code = #72696002
// * bodySite.coding[+].display = "Knee region structure"

// * effectiveDateTime = "2022-11-17"
// * extension[+].url = $icp-stage-observation-care
// * extension[=].valueCodeableConcept.coding[+].system = $icp-stage-observation-cs
// * extension[=].valueCodeableConcept.coding[+].code = #baseline
// * extension[=].valueCodeableConcept.coding[+].display = "Baseline"

// * dataAbsentReason = #not-tested

// * valueQuantity.unit = "mm"
// * valueQuantity.code = #millimetre
// * valueQuantity.value = 10

// * code.coding[+].system = $icp-clinical-observation-cs
// * code.coding[+].code = #shoulder-abduction-45deg-hand-held-dynamometer
// * code.coding[+].display = "PShoulder abduction 45deg hand held dynamometerain"

