Extension: Icp_diagnosisCodes
Id: icp-diagnosis-code
Title: "ICP Diagnosis Codes"
Description: "Integrated Care Pathways Diagnosis Codes"
* ^url = $icp-diagnosis-codes
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context.type = #element
* ^context.expression = "EpisodeOfCare.extension"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $icp-diagnosis-codes-vs (required)