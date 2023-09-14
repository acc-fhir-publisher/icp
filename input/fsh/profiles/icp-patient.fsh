Profile:        IcpPatient
Parent:         NzPatient
Id:             acc-icp-patient
Title:          "ACC ICP Patient"
Description:    "The ACC ICP Patient resource based on NzPatient.  Used to verify that an ICP Case has a valid claim."

* ^url = $icp-patient
* insert Acc-Metadata
* ^purpose = "An ICP Patient resource is used within an Icp Case, as a data point to verify weither an Icp case has a valid claim"
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