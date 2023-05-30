Extension: AccClientAuthority
Id: acc-icp-client-authority
Title: "Client Authority"
Description: "Indicates that the Client has agreed to ACC being able to collect, store, use, & share their information."

* ^url = $icp-acc-client-authority
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension 0..0
* value[x] only boolean