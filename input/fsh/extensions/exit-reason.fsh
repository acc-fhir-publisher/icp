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

* extension 2..4
* extension contains
    reason 1..1 and
    additional-acc-support-needed 1..1 and
    supporting-details 0..1 and
    outcome-summary 0..1

* extension[reason].url = "reason" (exactly)
* extension[reason].value[x] only code
* extension[reason].valueCode 1..1
* extension[reason].valueCode from $icp-exit-reason-vs (required)

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

* obeys recovery-goal-not-achieved-or-acc-support-invariant

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
Expression: "(extension.where(url='additional-acc-support-needed').value = true or extension.where(url='reason').value != 'goal-achieved') implies (extension.where(url='supporting-details').value.exists() and extension.where(url='outcome-summary').value.exists())"
