Profile:        IcpCaseCreate
Parent:         acc-icp-case
Id:             acc-icp-case-create
Title:          "ACC ICP Case Create Resource"
Description:    "ICP Case Create is to be used by the supplier to furnish ACC with the required information following the completion of the triage assessment and the decision to accept the patient into their ICP service."

* ^url = $icp-case-create
* insert Acc-Metadata

* type 1..1
* type ^short = "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."
* type.coding 1..1
* type.coding.system 1..1
* type.coding.system = $icp-service-type-cs
* type.coding.code from $icp-service-type-vs (required)
* type.coding.code 1..1
* type.coding.code ^short = "msk"

* status ^definition = "The Status of the ICP case (must be Active)."

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension ^slicing.ordered = false

* extension 8..9
* extension contains
    $icp-service-bundle named service-bundle 1..1 and
    $icp-exceptional-funding named exceptional-funding 0..1 and
    $icp-referral-source named referral-source 1..1 and
    $icp-diagnoses named diagnoses 1..1 and
    $icp-complexity-scores named complexity-scores 1..1 and
    $icp-acc-client-authority named acc-client-authority 1..1 and
    $icp-client-participation-agreement named client-participation-agreement 1..1 and
    $icp-triage-assessment-date named triage-assessment-date 1..1

* extension[service-bundle] ^short = "(icpkar1 | icpkar2 | icpkar3 | icpkrr1 | icpkrr2 | icpkrr3 | icpkrr4 | icpkrr5 | icpspr1 | icpspr2 | icpspr3 | icpspr4 | icpspr5 | icpspr6 | cpspr7  icpspr8 | icpshr1 | icpshr2 | icpshr3 | icpshr4 | icpshr5 | icpshr6)"
* extension[exceptional-funding] ^short = "Indicates if exceptional funding is required for this treatment."
* extension[acc-client-authority] ^short = "Indicates that the Client has agreed to ACC being able to collect, store, use, &amp; share their information."
* extension[client-participation-agreement] ^short = "Indicates that the Client has agreed to participating in ICP."
* extension[triage-assessment-date] ^short = "The date the triage assessment was completed."
* extension[diagnoses] ^short = "The diagnoses for the injury being treated."
* extension[referral-source] ^short = "(gp | physio | specialist | allied | employer | rongoa | other | acc | patient)"
* extension[complexity-scores] ^short = "The scores obtained from the ICP complexity assessment/tool."

* obeys active-status-invariant and start-date-when-active-finished-invariant

Invariant: start-date-when-active-finished-invariant
Severity: #error
Description: "Start date is required when status is active"
Expression: "status = 'active' implies period.start.exists()"