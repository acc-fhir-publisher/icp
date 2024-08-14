Profile:        IcpBistPatientReferral
Parent:         ACCPatientReferral
Id:             acc-icp-bist-patient-referral
Title:          "ACC ICP Patient Referral for BIST"
Description:    "The ACC Patient Referral resource for a BIST measurement."

* ^url = $icp-bist-patient-referral
* insert Acc-Metadata
* ^purpose = "An ICP Patient Referral resource to represent a patient's referral for  an IDT assessment to be completed."
* ^text.status = #additional


* contained contains 
    acc-provider 1..1 and
    patient 1..1

* contained[acc-provider] only $acc-provider
* contained[patient] only $icp-patient

// status
// intent
// priority
* reasonCode 0..1
* reasonCode from $icp-tbi-bist-referral-type-vs (preferred)

* category 1..1
* category = $SCT#770656003
* category ^short = "Referral for further assessment." // idt assessment
* category.coding 1..1

* code 1..1
* code from $icp-bist-measurement-standard-vs (required)
* code ^definition = "Type of TBI measurement"

// * reasonReference 0..1
// * reasonReference only Reference(Observation)

* supportingInfo 0..1
* supportingInfo only Reference(IcpTBIBIST)
* supportingInfo ^short = "BIST measurement this referral is based on."

* subject ^short = "This is the patient the (IDT) assessment is to be performed on."

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

// authoredOn
// requestor (reference practitioner)
// performerType (idt assessment team / care team / practitioner - physiotherapist) SCTID: 394748003 Primary Care Group
// performer (whom the patient is being referred to for the idt assessment)
