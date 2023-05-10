Alias: $acc-icp-service-type-code = http://hl7.org.nz/fhir/ns/acc-icp-service-type-code
Alias: $sct = http://snomed.info/sct

Instance: icp-create
InstanceOf: EpisodeOfCare
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-create"
* identifier.system = "http://hl7.org.nz/icp/fhir/ns/acc-claim-number"
* identifier.use = #official
* identifier.value = "A101112"
* type = $acc-icp-service-type-code#msk
* contained = patient-unknown
* managingOrganization = Reference(Organization/ORG123)
* period.start = "2022-11-17"
* status = #active
* patient = Reference(patient-unknown)
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-intended-pathway"
* extension[=].valueCode = #surgical
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-service-bundle"
* extension[=].valueCode = #shoulder-bundle1
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-client-authority"
* extension[=].valueBoolean = true
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-client-participation-agreement"
* extension[=].valueBoolean = true
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-covers-all-claim-diagnoses"
* extension[=].valueBoolean = true
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-providerid"
* extension[=].valueString = "J99966"
* extension[+].url = "http://hl7.org.nz/StructureDefinition/acc-icp-triage-assessment-date"
* extension[=].valueDate = "2022-11-17"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-diagnoses"
* extension[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-diagnosis-codes"
* extension[=].extension[=].valueCodeableConcept = $sct#45326000 "Shoulder pain"
* extension[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-diagnosis-side"
* extension[=].extension[=].valueCode = #left
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-referral-source"
* extension[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-referral-source-type"
* extension[=].extension[=].valueCode = #internal
* extension[=].extension[+].url = "receivedDate"
* extension[=].extension[=].valueDate = "2022-11-17"
* extension[+].url = "http://hl7.org.nz/StructureDefinition/acc-icp-exceptional-funding"
* extension[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-funding-rationale"
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-funding-rationale"
* extension[=].extension[=].valueCode = #social-support
* extension[=].extension[+].url = "http://hl7.org.nz/StructureDefinition/acc-icp-supporting-details"
* extension[=].extension[=].valueString = "supporting details"
* extension[+].url = "http://hl7.org.nz/StructureDefinition/acc-icp-complexity-scores"
* extension[=].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-total-complexity-score"
* extension[=].extension.valueCode = #low