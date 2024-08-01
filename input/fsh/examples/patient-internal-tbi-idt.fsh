Instance: patient-internal-tbi-idt
InstanceOf: Patient
Usage: #inline
Description: "Contained patient examples reference"

* meta.profile = $icp-patient

* birthDate = "2003-03-20"

* extension[0].url = $ethnicity
* extension[=].valueCoding = $ethnicity-code-cs#10000

* extension[+].url = $sex-at-birth
* extension[=].valueCoding = $administrative-gender#male