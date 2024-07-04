Profile:        IcpPatientReferral
Parent:         ServiceRequest
Id:             acc-icp-patient-referral
Title:          "ACC Patient Referral"
Description:    "The ACC Patient Referral resource."

* ^url = $icp-patient-referral
* insert Acc-Metadata
* ^purpose = "A Patient Referral resource."
* ^text.status = #additional

* identifier 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
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
* supportingInfo 0..0
* note 0..0
* patientInstruction 0..0
* relevantHistory 0..0

// status
// intent
// category (icp tbi valueset)
// priority
// reasonCode

* subject only Reference(IcpPatient)
* subject 1..1
* subject ^short = "This is the patient the BIST is being performed on."

* authoredOn only dateTime
* authoredOn obeys dateTime-not-in-future-invariant
* authoredOn 1..1
* authoredOn ^short = "The date and time that the BIST Measurement was created.  This must be in UTC yyyy-MM-dd'T'HH:mm:ss'Z'."
* authoredOn ^definition = "The date and time that the BIST Measurement was created.  This should be in UTC format, and converted to UTC.  e.g. New Zealand Daylight Savings time of 2024-02-19T11:17:44Z should be 2024-02-18T22:17:44Z"

// code - referral to idt assessment
// authoredOn
// requestor (reference practitioner)
// performerType (idt assessment team / care team / practitioner - physiotherapist) SCTID: 394748003 Primary Care Group
// performer (whom the patient is being referred to for the idt assessment)

