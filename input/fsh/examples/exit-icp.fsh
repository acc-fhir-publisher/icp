Instance: A101113-2002-11-17
InstanceOf: EpisodeOfCare
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-finished"
* identifier.system = $icp-acc-claim-number
* identifier.use = #official
* identifier.value = "A101113"
* contained = patient-unknown
* managingOrganization = Reference(Organization/ORG123)
* period.start = "2022-11-17"
* period.end = "2022-11-17"
* status = #finished
* patient = Reference(patient-unknown)
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exit-reason"
* extension[=].valueCode = #other
* extension[+].url = $icp-supporting-details
* extension[=].valueString = "some other reason"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-additional-acc-support"
* extension[=].valueBoolean = false
* extension[+].url = $acc-providerid
* extension[=].valueString = "J99966"
