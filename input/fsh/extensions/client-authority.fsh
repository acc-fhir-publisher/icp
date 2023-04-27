Extension: AccClientAuthority
Id: acc-client-authority
Title: "ACC ICP Client Authority"
Description: "Indicates that the Client has agreed to ACC being able to collect, store, use, & share their information."

* ^url = $icp-acc-client-authority
* ^status = #draft
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension 0..0
* value[x] only boolean