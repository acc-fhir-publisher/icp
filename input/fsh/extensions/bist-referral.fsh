Extension: Icp_BistReferral
Id: acc-icp-bist-referral
Title: "BIST Referral"
Description: "Integrated Care Pathways BIST Referral Reason"

* ^url = $icp-bist-referral
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "Observation"

* extension 2..3
* extension contains
    recommendation 1..1 and
    $icp-bist-referral-source named referral-type 1..1 and
    referral-reason 0..1

* extension[recommendation].url = "recommendation" (exactly)
* extension[recommendation].value[x] only string
* extension[recommendation].valueString 1..1
* extension[recommendation].valueString obeys recommendation-max250-length-invariant

* extension[referral-reason].url = "referral-reason" (exactly)
* extension[referral-reason].value[x] only string
* extension[referral-reason].valueString 1..1
* extension[referral-reason].valueString obeys referral-reason-max250-length-invariant
* extension[referral-reason] ^short = "Used to explain the rationale when referral reason type is 'Other'."

Invariant: referral-reason-max250-length-invariant
Description: "'referral-reason' must be no more than 250 characters."
Expression: "value.length() <= 250"
Severity: #error

Invariant: recommendation-max250-length-invariant
Description: "'recommendation' must be no more than 250 characters."
Expression: "value.length() <= 250"
Severity: #error