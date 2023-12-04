Extension: ClientPatricitionAgreement
Id: acc-icp-client-participation-agreement
Title: "Client Participation Agreement"
Description: "Indicates that the Client has agreed to participating in ICP."

* ^url = $icp-client-participation-agreement
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "Encounter.extension"

* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 0..0
* value[x] only boolean