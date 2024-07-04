Profile:        IcpBistPatientReferral
Parent:         IcpPatientReferral
Id:             acc-icp-bist-patient-referral
Title:          "ACC ICP Patient Referral"
Description:    "The ACC Patient Referral resource."

* ^url = $icp-bist-patient-referral
* insert Acc-Metadata
* ^purpose = "An ICP Patient Referral resource to represent a patient's referral for  an IDT assessment to be completed."
* ^text.status = #additional

// status
// intent
// category (icp tbi valueset)
// priority
* reasonCode 0..1
* reasonCode from $icp-tbi-bist-referral-type-vs (preferred)

// code - referral to idt assessment
// authoredOn
// requestor (reference practitioner)
// performerType (idt assessment team / care team / practitioner - physiotherapist) SCTID: 394748003 Primary Care Group
// performer (whom the patient is being referred to for the idt assessment)

* extension contains
    $icp-bist-referral named bist-referral 1..1
