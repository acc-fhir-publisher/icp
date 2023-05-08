// Extension: IcpPatient
// Id: icp-patient
// Title: "ICP Patient birthdate"
// Description: "Identifies the referred patient's birthdate."

// * ^url = $icp-patient-birth-date
// * ^context[+].type = #element
// * ^context[=].expression = "EpisodeOfCare"
// * ^context[+].type = #element
// * ^context[=].expression = "EpisodeOfCare.extension"

// * extension 0..0
// * birthDate 1..1 
// * birthDate obeys date-invariant and date-not-in-future-invariant

Profile:        IcpPatient
Parent:         NhiPatient
Id:             IcpPatient
Title:          "ICP Patient"
Description:    "The ICP Patient profile"

* ^url = $icp-patient-profile

* ^purpose = "Describe the New Zealand ICP Patient resource profile"
* ^text.status = #additional

//elements that have been removed
* active 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* managingOrganization 0..0
* link 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* name.period 0..0
* name.text 0..0
* identifier.period 0..0

* birthDate 1..1
* birthDate obeys date-invariant and date-not-in-future-invariant