Profile:        IcpCase
Parent:         EpisodeOfCare
Id:             acc-icp-case
Title:          "ACC ICP Episode of Care Resource"
Description:    "The ACC ICP Case resource based on Episode of Care"

* ^url = $icp-case
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* statusHistory 0..0
* referralRequest 0..0
* careManager 0..0
* team 0..0
* account 0..0
* diagnosis 0..0

* patient only Reference(IcpPatient)
* patient 1..1

* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "Slicing to specifiy an icp patient resource must be returned as a contained resource for the ICP case"
* contained contains patient 1..1
* contained[patient] only $icp-patient
* contained[patient] ^short = "Patient's date of birth."
* contained[patient] ^definition = "Contained patient resource for the required patient's date of birth."

* managingOrganization only Reference(Organization)
* managingOrganization 1..1
* managingOrganization ^short = "This is the ACC Vendor ID, in most cases this is the organisation's HPI ID."

* period 0..1
* period.start 0..1
* period.start obeys date-invariant and date-not-in-future-invariant
* period.end 0..1
* period.end obeys date-invariant and date-not-in-future-invariant

* status from $icp-status-vs (required)
* status ^short = "active | finished"
* status ^definition = "The Status of the ICP case (Active or Finished)."

* type 0..1
* type ^short = "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."
* type.coding 1..1
* type.coding.system 1..1
* type.coding.system = $icp-service-type-cs
* type.coding.code from $icp-service-type-vs (required)
* type.coding.code 1..1
* type.coding.code ^short = "msk"

* identifier ^slicing.description = "ICP identifiers"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false

* identifier contains
    icpclaimnumber 1..1

* identifier[icpclaimnumber].system = $icp-acc-claim-number (exactly)
* identifier[icpclaimnumber].value 1..1
* identifier[icpclaimnumber] ^short = "The ACC claim number to be used in combination with the contained patient's date of birth, as the ICP case idenfitier."

* extension contains
    $acc-providerid named accProviderId 1..1

* extension[accProviderId] ^short = "The ACC provider ID associated with the ICP case"

* obeys end-date-when-active-invariant and end-date-when-finished-invariant

Invariant: date-invariant
Severity: #error
Description: "All timestamps SHOULD be represented as Dates (YYYY-MM-DD only)."
Expression: "$this.toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}$')"

Invariant: date-not-in-future-invariant
Severity: #error
Description: "The date value cannot be in the future"
Expression: "$this <= today()"

Invariant: supporting-details-max-length-invariant
Description: "'supporting-details' must be no more than 250 characters."
Expression: "value.length() <= 250"
Severity: #error

Invariant: active-status-invariant
Severity: #error
Description: "The status attribute must be set to 'active'."
Expression: "status = 'active'"

Invariant: end-date-when-active-invariant
Severity: #error
Description: "End date is not allowed when status is active"
Expression: "status = 'active' implies period.end.empty()"

Invariant: end-date-when-finished-invariant
Severity: #error
Description: "End date is required when status is finished"
Expression: "status = 'finished' implies period.end.exists()"