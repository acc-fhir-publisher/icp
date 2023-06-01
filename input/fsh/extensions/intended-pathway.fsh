Extension: Icp_intendedPathway
Id: acc-icp-intended-pathway
Title: "Intended Pathway"
Description: "Indicates if the pathway is expected to be surgical or non-surgical."
* ^url = $icp-intended-pathway
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

* value[x] only code
* valueCode 1..1
* valueCode from $icp-intended-pathway-vs (required)