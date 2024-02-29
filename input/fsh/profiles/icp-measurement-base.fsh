Profile: IcpMeasurement
Parent: Observation
Id: acc-icp-measurement
Title: "ACC Integrated Care Pathway Observation"
Description: "ACC Integrated Care Pathway Observation"

* ^url = $icp-measurement
* insert Acc-Metadata

* basedOn 0..0
* partOf 0..0
* category 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* interpretation 0..0
* note 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0

* identifier ^slicing.description = "ICP identifiers"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.ordered = false

* identifier 1..1
* identifier contains
    icpclaimnumber 1..1

* identifier[icpclaimnumber].system = $acc-claim-number (exactly)
* identifier[icpclaimnumber].value 1..1
* identifier[icpclaimnumber].value obeys acc-claim-number
* identifier[icpclaimnumber].value ^short = "The ACC 45 number."
* identifier[icpclaimnumber] ^short = "The ACC 45 number to be used in combination with the contained patient's date of birth, as the ICP case idenfitier."
* identifier[icpclaimnumber].id 0..0
* identifier[icpclaimnumber].extension 0..0
* identifier[icpclaimnumber].period 0..0
* identifier[icpclaimnumber].assigner 0..0

* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #closed
* contained ^slicing.description = "Slicing to specifiy an icp patient resource must be returned as a contained resource for the ICP case"
* contained contains patient 1..1
* contained[patient] only $icp-patient
* contained[patient] ^short = "Patient's date of birth."
* contained[patient] ^definition = "Contained patient resource for the required patient's date of birth."

* performer only Reference(Organization)
* performer 1..1
* performer ^short = "This is the ACC Vendor ID, in most cases this is the organisation's HPI ID."

* subject only Reference(IcpPatient)
* subject 1..1
* subject ^short = "This is the patient that the ICP case is associated with."

* status from $icp-status-observation-vs (required)
* status 1..1
* status ^short = "final"
* status ^definition = "The Status of the ICP case Observation is restricted to final."

* effectiveDateTime only dateTime
* effectiveDateTime obeys dateTime-not-in-future-invariant
* effectiveDateTime 1..1
* effectiveDateTime ^short = "The date and time that the ICP case Observation was created.  This must be in UTC yyyy-MM-dd'T'HH:mm:ss'Z'."
* effectiveDateTime ^definition = "The date and time that the ICP case Observation was created.  This should be in UTC format, and converted to UTC.  e.g. New Zealand Daylight Savings time of 2024-02-19T11:17:44Z should be 2024-02-18T22:17:44Z"

* dataAbsentReason from $icp-data-absent-reason-vs
* dataAbsentReason 0..1
* dataAbsentReason ^short = "The reason why the ICP case Observation value is not present."

* extension 2..2
* extension contains
    $acc-providerid named acc-providerid 1..1 and
    $icp-recorded-outcome-stage named stage 1..1

* extension[acc-providerid] ^short = "The ACC provider ID associated with the ICP case"
* extension[stage] ^short = "The stage of the ICP case Observation."

Invariant: dateTime-not-in-future-invariant
Severity: #error
Description: "The date value cannot be in the future"
Expression: "$this <= now()"