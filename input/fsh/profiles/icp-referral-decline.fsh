Profile:        IcpReferralDecline
Parent:         Encounter
Id:             acc-icp-referral-decline
Title:          "ACC ICP Referral Decline Resource"
Description:    "The ICP Referral Decline profile is to be used by ICP suppliers to furnish ACC with the required information following them declining an ICP referral."

* ^url = $icp-referral-decline
* insert Acc-Metadata

* classHistory 0..0
* statusHistory 0..0
* priority 0..0
* episodeOfCare 0..0
* basedOn 0..0
* participant 0..0
* appointment 0..0
* period 0..0
* length 0..0
* reasonCode 0..0
* reasonReference 0..0
* diagnosis 0..0
* account 0..0
* hospitalization 0..0
* location 0..0
* partOf 0..0
* type 0..0

* serviceProvider only Reference(Organization)
* serviceProvider 1..1
* serviceProvider ^short = "This is the ACC Vendor ID, in most cases this is the organisation's HPI ID."

* subject only Reference(IcpPatient)
* subject 1..1

* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "Slicing to specifiy an icp patient resource must be returned as a contained resource for the ICP case"
* contained contains patient 1..1
* contained[patient] only $icp-patient
* contained[patient] ^short = "Patient's date of birth."
* contained[patient] ^definition = "Contained patient resource for the required patient's date of birth."

* serviceType 1..1
* serviceType ^short = "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."
* serviceType.coding 1..1
* serviceType.coding.system 1..1
* serviceType.coding.system = $icp-service-type-cs
* serviceType.coding.code from $icp-service-type-vs (required)
* serviceType.coding.code 1..1
* serviceType.coding.code ^short = "msk"

* status from $icp-encounter-status-vs (required)
* status ^short = "finished"
* status ^definition = "The Status of the encounter can only be finished (Finished)."

* class from $icp-encounter-class-vs (required)
* class ^short = "PRENC"
* class ^definition = "The class of the encounter can only be pre-admission (pre-admission)."

* identifier ^slicing.description = "ICP identifiers"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.ordered = false

* identifier contains
    icpclaimnumber 1..1

* identifier[icpclaimnumber].system = $acc-claim-number (exactly)
* identifier[icpclaimnumber].value 1..1
* identifier[icpclaimnumber].value obeys acc-claim-number
* identifier[icpclaimnumber] ^short = "The ACC claim number to be used in combination with the contained patient's date of birth, as the ICP case idenfitier."


* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension ^slicing.ordered = false

* extension 3..4
* extension contains
    $acc-providerid named acc-providerid 1..1 and
    $icp-referral-source named referral-source 1..1 and
    $icp-referral-declined named referral-declined 1..1 and
    $icp-triage named triage 0..1

* extension[triage].extension[client-participation-agreement].valueBoolean 0..0

* extension[acc-providerid] ^short = "The ACC provider Id of the practioner providing this information"
* extension[referral-source] ^short = "(gp | physio | specialist | allied | employer | rongoa | other | acc | patient)"
* extension[referral-declined] ^short = "The declined reason and details for declining the referral"
* extension[triage] ^short = "The triage assessment of the patient must be present when a triage has been performed"
