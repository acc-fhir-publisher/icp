Extension: AccProviderId
Id: acc-providerid
Title: "ACC Provider ID"
Description: "This represents the person submitting this form to ACC.  It should take the form of their ACC Provider ID."

* ^url = $acc-providerid
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #active
* insert Acc-Vocabulary-Metadata
* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* ^context[+].type = #element
* ^context[=].expression = "Encounter"

* extension 0..0
* value[x] only string
