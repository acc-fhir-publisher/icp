Extension: Icp_diagnoses
Id: acc-icp-diagnoses
Title: "Diagnoses"
Description: "The diagnoses for the injury being treated."
* ^url = $icp-diagnoses
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension contains
    Icp_diagnosisCodes named diagnosisCode 1..1 and
    Icp_diagnosisSide named diagnosisSide 1..1

* extension[diagnosisCode] ^short = "The diagnosi codes for the injury being treated."
* extension[diagnosisSide] ^short = "The body side this diagnosis code relates to."