Profile: ClinicalObservation
Parent: acc-icp-observation-base
Id: acc-icp-observation-clinical
Title: "ACC Integrated Care Pathway Clinical Observation"
Description: "ACC Integrated Care Pathway Clinical Observation"

* ^url = $icp-observation-clinical
* insert Acc-Metadata


* code from $icp-clinical-observation-vs (required)
* code 1..1
* code ^definition = "Type of clinical component observation"

* value[x] only Quantity
* valueQuantity obeys clinical-quantity-invariant
* valueQuantity 0..1
* valueQuantity ^short = "The value of the ICP case Observation is restricted to the number of Kg's."
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"

Invariant: clinical-quantity-invariant
Severity: #error
Description: "The value should be a number between 0 and 100, with up to 2 decimal places"
Expression: "$this.toString().matches('^(?:100(?:\\.0{1,2})?|\\d{1,2}(?:\\.\\d{1,2})?)$')"
