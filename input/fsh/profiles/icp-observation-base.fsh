Profile: ObservationBase
Parent: Observation
Id: acc-icp-observation-base
Title: "ACC Integrated Care Pathway Observation"
Description: "ACC Integrated Care Pathway Observation"

* ^url = $acc-icp-observation-base
* insert Acc-Metadata

* identifier ^slicing.description = "ICP identifiers"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #closed
* identifier ^slicing.ordered = false
* identifier contains
    icpclaimnumber 1..1
* identifier[icpclaimnumber].system = $acc-claim-number (exactly)
* identifier[icpclaimnumber].value 1..1
* identifier[icpclaimnumber] ^short = "The ACC claim number to be used in combination with the contained patient's date of birth, as the ICP case idenfitier."

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

* bodySite from $icp-body-site-measure-vs (required)
* bodySite 1..1
* bodySite ^short = "The body site of the ICP case Observation is restricted to the body site of the injury."

* effectiveDateTime only dateTime obeys date-not-in-future-invariant
* effectiveDateTime 1..1
* effectiveDateTime ^short = "The date and time that the ICP case Observation was created."
* effectiveDateTime ^definition = "The date and time that the ICP case Observation was created."   

* dataAbsentReason from $icp-data-absent-reason-vs
* dataAbsentReason 0..1
* dataAbsentReason ^short = "The reason why the ICP case Observation is not present."

* value[x] only Quantity
* valueQuantity 0..1 

* extension contains
    $acc-providerid named accProviderId 1..1 and
    $icp-stage-observation-care named stage 1..1

* extension[accProviderId] ^short = "The ACC provider ID associated with the ICP case"
* extension[stage] ^short = "some words for the stage"
