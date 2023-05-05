Extension: Icp_triageAssessmentDate
Id: icp-triage-assessment-date
Title: "ICP Triage Assessment Date"
Description: "The date when the triage was performed for the resulting assessment for an ICP referral."

* ^url = $icp-triage-assessment-date
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"
* ^status = #draft

* extension 0..0
* value[x] only date
// * value[x] obeys date-not-in-future
