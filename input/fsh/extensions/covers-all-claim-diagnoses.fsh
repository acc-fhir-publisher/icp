Extension: CoversAllClaimDiagnoses
Id: covers-all-claim-diagnoses
Title: "ICP Covers All Claim Diagnoses"
Description: "Indicates whether or not the ICP case is treating all the diagnoses on the claim."

* ^url = $icp-covers-all-claim-diagnoses
* ^status = #draft
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension 0..0
* value[x] only boolean