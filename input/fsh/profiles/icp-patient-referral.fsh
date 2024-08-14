Profile:        ACCPatientReferral
Parent:         ServiceRequest
Id:             acc-patient-referral
Title:          "ACC Patient Referral"
Description:    "The ACC Patient Referral resource."

* ^url = $icp-patient-referral
* insert Acc-Metadata
* ^purpose = "A Patient Referral resource."
* ^text.status = #additional

* basedOn 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* replaces 0..0
* requisition 0..0
* doNotPerform 0..0
* orderDetail 0..0
* quantity[x] 0..0
* encounter 0..0
* occurrence[x] 0..0
* asNeeded[x] 0..0
* specimen 0..0
* bodySite 0..0
* locationCode 0..0
* locationReference 0..0
* insurance 0..0
* note 0..0
* patientInstruction 0..0
* relevantHistory 0..0

* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained ^slicing.ordered = false
* contained ^slicing.description = "Slicing to specifiy an icp patient resource must be returned as a contained resource for the ICP case"

* identifier ^slicing.description = "ICP identifiers"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
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


// status
// intent
// priority

* authoredOn only dateTime
* authoredOn obeys dateTime-not-in-future-invariant
* authoredOn 1..1
* authoredOn ^short = "The date and time that the Patient referral to an IDT assessment is created.  This must be in UTC yyyy-MM-dd'T'HH:mm:ss'Z'."
* authoredOn ^definition = "The date and time that the Patient referral to an IDT assessment is created.  This should be in UTC format, and converted to UTC.  e.g. New Zealand Daylight Savings time of 2024-02-19T11:17:44Z should be 2024-02-18T22:17:44Z"

* performer only Reference(Organization)
* performer 1..1
* performer ^short = "This is the ACC Vendor ID, in most cases this is the organisation's HPI ID."

* requester 1..1
* requester only Reference(ACCProvider)

* subject 1..1
* subject only Reference(IcpPatient)

// * extension contains
//     $acc-providerid named acc-providerid 1..1
