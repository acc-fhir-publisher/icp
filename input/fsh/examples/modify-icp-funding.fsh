Instance: A101112-2022-11-17
InstanceOf: EpisodeOfCare
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-modify"
* identifier.system = "http://hl7.org.nz/icp/fhir/ns/acc-claim-number"
* identifier.use = #official
* identifier.value = "A101112"
* contained = patient-unknown
* managingOrganization = Reference(Organization/ORG123)
* status = #active
* patient = Reference(patient-unknown)
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-service-bundle"
* extension[=].valueCode = #shoulder-bundle1
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-providerid"
* extension[=].valueString = "J99966"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exceptional-funding"
* extension[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-funding-rationale"
* extension[=].extension[=].valueCode = #other
* extension[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-funding-rationale"
* extension[=].extension[=].valueCode = #social-support
* extension[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-supporting-details"
* extension[=].extension[=].valueString = "supporting details"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-supporting-details"
* extension[=].valueString = "supporting details"
