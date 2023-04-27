Extension: ClientPatricitionAgreement
Id: client-participation-agreement
Title: "ICP Client Participation Agreement"
Description: "Indicates that the Client has agreed to participating in ICP."

* ^url = $icp-client-participation-agreement
* ^status = #draft
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension 0..0
* value[x] only boolean