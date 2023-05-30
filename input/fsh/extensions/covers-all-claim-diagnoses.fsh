Extension: CoversAllClaimDiagnoses
Id: acc-icp-covers-all-claim-diagnoses
Title: "Covers All Claim Diagnoses"
Description: "Indicates whether or not the ICP case is treating all the diagnoses on the claim."

* ^url = $icp-covers-all-claim-diagnoses
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZL
* ^status = #draft
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension 0..0
* value[x] only boolean