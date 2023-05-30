Profile:        IcpCase
Parent:         EpisodeOfCare
Id:             acc-icp-case
Title:          "ACC ICP Episode of Care Resource"
Description:    "The ACC ICP Case resource based on Episode of Care"
* obeys end-date-when-active-invariant and end-date-when-finished-invariant

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
* contained ^slicing.description = "Slicing to specifiy an icp patient resource may be returned as a contained resource for the Icp case information"
* contained contains patient 1..1
* contained[patient] only $icp-patient
* contained[patient] ^short = "Contained resource for the Patient's birthDate"
* contained[patient] ^definition = "Contained resource for the patient's birthDate"

* managingOrganization only Reference(Organization)
* managingOrganization 1..1

* period 0..1
* period.start 0..1
* period.start obeys date-invariant and date-not-in-future-invariant
* period.end 0..1
* period.end obeys date-invariant and date-not-in-future-invariant

* status from $icp-status-vs (required)
* status ^short = "active | finished"

* type 0..1
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

* extension 1..*
* extension contains
    $acc-providerid named accProviderId 1..1

Invariant: date-invariant
Severity: #error
Description: "All timestamps SHOULD be represented as Dates (YYYY-MM-DD only)."
Expression: "$this.toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}$')"

Invariant: date-not-in-future-invariant
Severity: #error
Description: "The date value cannot be in the future"
Expression: "$this <= today()"

Invariant: active-status-invariant
Severity: #error
Description: "The status attribute must be set to 'active'."
Expression: "status = 'active'"

Invariant: start-date-when-active-finished-invariant
Severity: #error
Description: "Start date is required when status is active"
Expression: "status = 'active' or status = 'finished' implies period.start.exists()"

Invariant: end-date-when-active-invariant
Severity: #error
Description: "End date is not allowed when status is active"
Expression: "status = 'active' implies period.end.empty()"

Invariant: end-date-when-finished-invariant
Severity: #error
Description: "End date is required when status is finished"
Expression: "status = 'finished' implies period.end.exists()"
