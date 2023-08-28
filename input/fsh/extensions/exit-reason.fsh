Extension: Icp_ExitReason
Id: acc-icp-exit-reason
Title: "Exit Reason"
Description: "Integrated Care Pathways Exit Reason"

* ^url = $icp-exit-reason
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 2..5
* extension contains
    reason 1..1 and
    other-reason 0..1 and
    additional-acc-support-needed 1..1 and
    supporting-details 0..1 and
    outcome-summary 0..1

* extension[reason].url = "reason" (exactly)
* extension[reason].value[x] only code
* extension[reason].valueCode 1..1
* extension[reason].valueCode from $icp-exit-reason-vs (required)

* extension[other-reason].url = "other-reason" (exactly)
* extension[other-reason].value[x] only string
* extension[other-reason].valueString 0..1
* extension[other-reason].valueString obeys other-reason-max250-length-invariant
* extension[other-reason] ^short = "Descriptor for 'other' exit reason. Mandatory when the exit reason is 'other'."

* extension[additional-acc-support-needed].url = "additional-acc-support-needed" (exactly)
* extension[additional-acc-support-needed].value[x] only boolean
* extension[additional-acc-support-needed].valueBoolean 1..1

* extension[supporting-details].url = "supporting-details" (exactly)
* extension[supporting-details].value[x] only string
* extension[supporting-details].valueString 0..1
* extension[supporting-details].valueString obeys supporting-details-max250-length-invariant
* extension[supporting-details] ^short = "Used to explain the client exit reason not being 'Recovery goal achieved'."
* extension[supporting-details] ^definition = "A paragraph outlining the reason/rationale for the client exit.  Required when the exit reason is not 'Recovery goal achieved' or additional ACC support required."

* extension[outcome-summary].url = "outcome-summary" (exactly)
* extension[outcome-summary].value[x] only string
* extension[outcome-summary].valueString 0..1
* extension[outcome-summary].valueString obeys outcome-summary-max-length5000-invariant
* extension[outcome-summary] ^short = "A summary of the client's recovery outcome."
* extension[outcome-summary] ^definition = "A summary of the client's recovery outcome.  Required when the exit reason is not 'Recovery goal achieved' or additional ACC support required."

* obeys recovery-goal-not-achieved-or-acc-support-invariant and not-recovery-goal-achieved-and-acc-support-invariant and other-reason-invariant and not-other-reason-invariant

Invariant: other-reason-invariant
Severity: #error
Description: "if reason code is 'other', other-reason is required."
Expression: "(extension.where(url='reason').value = 'other' implies extension.where(url='other-reason').value.exists())"

Invariant: not-other-reason-invariant
Severity: #error
Description: "if reason code is not 'other', other-reason must not be populated."
Expression: "(extension.where(url='reason').value != 'other' implies extension.where(url='other-reason').value.empty())"

Invariant: other-reason-max250-length-invariant
Description: "'other-reason' must be no more than 250 characters."
Expression: "value.length() <= 250"
Severity: #error

Invariant: supporting-details-max250-length-invariant
Description: "'supporting-details' must be no more than 250 characters."
Expression: "value.length() <= 250"
Severity: #error

Invariant: outcome-summary-max-length5000-invariant
Description: "'supporting-details' must be no more than 5000 characters."
Expression: "value.length() <= 5000"
Severity: #error

Invariant: recovery-goal-not-achieved-or-acc-support-invariant
Severity: #error
Description: "if 'additional-acc-support-needed' is true or reason is not 'goal-achieved', supporting-details and outcome-summary are required."
Expression: "((extension.where(url='additional-acc-support-needed').value = true or extension.where(url='reason').value != 'goal-achieved') implies (extension.where(url='supporting-details').value.exists() and extension.where(url='outcome-summary').value.exists()))"

Invariant: not-recovery-goal-achieved-and-acc-support-invariant
Severity: #error
Description: "if 'additional-acc-support-needed' is false and reason is 'goal-achieved', supporting-details and outcome-summary must not be populated."
Expression: "((extension.where(url='additional-acc-support-needed').value = false and extension.where(url='reason').value = 'goal-achieved') implies (extension.where(url='supporting-details').value.empty() and extension.where(url='outcome-summary').value.empty()))"
