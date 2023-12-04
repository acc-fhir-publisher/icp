Extension: AccClientAuthority
Id: acc-icp-client-authority
Title: "Client Authority"
Description: "Indicates that the Client has agreed to ACC being able to collect, store, use, & share their information."

* ^url = $icp-acc-client-authority
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "Encounter.extension"

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 0..0
* value[x] only boolean