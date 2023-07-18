Extension: Icp_diagnoses
Id: acc-icp-diagnoses
Title: "Diagnoses"
Description: "The diagnoses for the injury being treated."
* ^url = $icp-diagnoses
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-11-20"
* ^publisher = "ACC New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "integratedcarepathways@acc.co.nz"
* ^contact[0].telecom[0].use = #work
* ^copyright = "ACC New Zealand© 2023+; Licensed Under Creative Commons No Rights Reserved."

* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension contains
    $icp-diagnosis named diagnosis 1..10 and
    covers-all-claim-diagnoses 0..1

* extension[covers-all-claim-diagnoses].url = "covers-all-claim-diagnoses" (exactly)
* extension[covers-all-claim-diagnoses].value[x] only boolean
* extension[covers-all-claim-diagnoses].valueBoolean 0..1

* extension[covers-all-claim-diagnoses] ^short = "Indicates whether or not the ICP case is treating all the diagnoses on the claim."
* extension[diagnosis] ^short = "The diagnoses for the injury being treated."