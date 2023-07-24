Extension: ClientPatricitionAgreement
Id: acc-icp-client-participation-agreement
Title: "Client Participation Agreement"
Description: "Indicates that the Client has agreed to participating in ICP."

* ^url = $icp-client-participation-agreement
* insert Acc-Metadata

* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension 0..0
* value[x] only boolean