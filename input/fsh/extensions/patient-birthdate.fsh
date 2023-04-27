Extension: Icp_patientBirthDate
Id: icp-patient-birthdate
Title: "ICP Patient Birth Date"
Description: "Patient DOB is only included as a secondary validator for ClaimNumber. i.e. as a privacy protection key."

* ^url = $icp-patient-birth-date
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"
* ^status = #draft

* extension 0..0
* value[x] only date