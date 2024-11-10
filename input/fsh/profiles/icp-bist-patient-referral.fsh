Profile:        IcpBistPatientReferral
Parent:         ServiceRequest
Id:             acc-icp-bist-patient-referral
Title:          "ACC ICP Patient Referral for BIST"
Description:    "The ACC Patient Referral resource for a BIST measurement."

* ^url = $icp-bist-patient-referral
* insert Acc-Metadata
* ^purpose = "A Patient Referral resource to represent a patient's referral for  an IDT assessment to be completed."
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


* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained ^slicing.ordered = false
* contained ^slicing.description = "Contained resources"

* contained contains 
    acc-provider 1..1 and
    patient 1..1 and
    acc-tbi-provider 1..1
    // cover-and-causation 1..1 and
    // start-c 1..1

* contained[acc-provider] only $acc-provider
* contained[patient] only $icp-patient
* contained[acc-tbi-provider] only $acc-tbi-provider
// * contained[cover-and-causation] only $icp-tbi-cover-causation
// * contained[start-c] only $icp-tbi-start-c

// status
// intent
// priority
* reasonCode 1..1
* reasonCode from $icp-tbi-bist-referral-type-vs (required)

* category 0..0
// * category 1..1
// * category = $SCT#770656003
// * category ^short = "Referral for further assessment." // idt assessment
// * category.coding 1..1

* code 0..0
// * code 1..1
// * code from $icp-bist-measurement-standard-vs
// * code ^definition = "Type of TBI measurement"
// * reasonReference 0..1
// * reasonReference only Reference(Observation)

* supportingInfo 0..1
* supportingInfo only Reference(IcpTBIBIST)
* supportingInfo ^short = "BIST measurement this referral is based on."

* subject ^short = "This is the patient being referred."

// * contained[patient] ^short = "Patient's details."
// * contained[patient] ^definition = "Contained patient resource for the required patient's details."
// * contained[patient].extension[ethnicity] 1..*
// * contained[patient].extension[ethnicity] only $ethnicity
// * contained[patient].extension[ethnicity].valueCodeableConcept 1..1
// * contained[patient].extension[ethnicity].valueCodeableConcept from $icp-bist-ethnicity-vs (required)
// * contained[patient].extension[ethnicity] ^short = "ICP TBI Ethnicity codes for BIST measurement"
// * contained[patient].extension[sex-at-birth] 1..1
// * contained[patient].extension[sex-at-birth] only $sex-at-birth
// * contained[patient].extension[sex-at-birth].valueCodeableConcept 1..1
// * contained[patient].extension[sex-at-birth] ^short = "(male | female | other | unknown)"
// performerType (idt assessment team / care team / practitioner - physiotherapist) SCTID: 394748003 Primary Care Group


* authoredOn only dateTime
* authoredOn obeys dateTime-not-in-future-invariant
* authoredOn 1..1
* authoredOn ^short = "The date and time that the Patient referral to an IDT assessment is created.  This must be in UTC yyyy-MM-dd'T'HH:mm:ss'Z'."
* authoredOn ^definition = "The date and time that the Patient referral to an IDT assessment is created.  This should be in UTC format, and converted to UTC.  e.g. New Zealand Daylight Savings time of 2024-02-19T11:17:44Z should be 2024-02-18T22:17:44Z"

* subject 1..1
* subject only Reference(IcpPatient)

* requester 1..1
* requester only Reference(ACCProvider)
* requester ^short = "This represents the pracitioner referring the patient to a concussion supplier."

* performer 0..1
// * performer[0] only Reference(ACCTbiProvider)
// * performer only Reference(ACCTbiProvider)
// * performer ^short = "This represents the ACC-approved concussion supplier the patient is being referred to."

// * extension ^slicing.discriminator.type = #value
// * extension ^slicing.discriminator.path = "url"
// * extension ^slicing.rules = #open
// * extension ^slicing.ordered = false

// TODO - this must be migrated to PractitionerRole
// * extension contains
//     $acc-vendorid named acc-vendorid 1..1 
    // and
    // $icp-idt-assessment named idt-assessment 1..1
