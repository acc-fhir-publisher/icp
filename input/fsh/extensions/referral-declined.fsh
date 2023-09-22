Extension: Icp_ReferralDeclined
Id: acc-icp-referral-declined
Title: "ICP Referral Declined"
Description: "Integrated Care Pathways Referral Declined"

* ^url = $icp-referral-declined
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "Encounter"

* extension 3..4
* extension contains
    date-declined 1..1 and
    reason 1..1 and
    other-reason 0..1 and
    recommended-next-steps 1..1

* extension[date-declined].url = "date-declined" (exactly)
* extension[date-declined].value[x] only date
* extension[date-declined].valueDate 1..1
* extension[date-declined].valueDate obeys date-invariant and date-not-in-future-invariant
* extension[date-declined] ^short = "Date referral declined."
* extension[date-declined] ^definition = "Date referral declined."

* extension[reason].url = "reason" (exactly)
* extension[reason].value[x] only code
* extension[reason].valueCode 1..1
* extension[reason].valueCode from $icp-declined-reason-vs (required)

* extension[other-reason].url = "other-reason" (exactly)
* extension[other-reason].value[x] only string
* extension[other-reason].valueString 0..1
* extension[other-reason].valueString obeys other-reason-max110-length-invariant
* extension[other-reason] ^short = "Descriptor for 'other' exit reason. Mandatory when the exit reason is 'other'."

* extension[recommended-next-steps].url = "recommended-next-steps" (exactly)
* extension[recommended-next-steps].value[x] only string
* extension[recommended-next-steps].valueString 1..1
* extension[recommended-next-steps].valueString obeys recommended-next-steps-1000-length-invariant

* obeys other-reason-invariant and not-other-reason-invariant

Invariant: other-reason-max110-length-invariant
Description: "'other-reason' must be no more than 110 characters."
Expression: "value.length() <= 110"
Severity: #error

Invariant: recommended-next-steps-1000-length-invariant
Description: "'recommended-next-steps' must be no more than 1000 characters."
Expression: "value.length() <= 1000"
Severity: #error