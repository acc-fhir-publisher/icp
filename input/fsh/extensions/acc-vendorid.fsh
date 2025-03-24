Extension: AccVendorId
Id: acc-vendorrid
Title: "ACC Vendor ID"
Description: "This represents the organization through which a provider is submitting this form to ACC.  It should take the form of their ACC Vendor ID."

* ^url = $acc-vendorid
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #active
* insert Acc-Vocabulary-Metadata
* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "Observation"
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"

* extension 0..0
* value[x] only string
