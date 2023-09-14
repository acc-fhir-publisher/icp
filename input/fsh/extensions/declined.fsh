Extension: Icp_Declined
Id: acc-icp-declined
Title: "ICP Declined"
Description: "Integrated Care Pathways Declined"

* ^url = $icp-declined
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
* extension[date-declined] ^short = "Date referral declined."
* extension[date-declined] ^definition = "Date referral declined."

* extension[reason].url = "reason" (exactly)
* extension[reason].value[x] only code
* extension[reason].valueCode 1..1
* extension[reason].valueCode from $icp-declined-reason-vs (required)

* extension[other-reason].url = "other-reason" (exactly)
* extension[other-reason].value[x] only string
* extension[other-reason].valueString 0..1
* extension[other-reason] ^short = "Descriptor for 'other' exit reason. Mandatory when the exit reason is 'other'."

* extension[recommended-next-steps].url = "recommended-next-steps" (exactly)
* extension[recommended-next-steps].value[x] only string
* extension[recommended-next-steps].valueString 1..1