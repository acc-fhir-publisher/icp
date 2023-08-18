Profile: IcpMeasurementClinical
Parent: acc-icp-measurement
Id: acc-icp-measurement-clinical
Title: "ACC Integrated Care Pathway Clinical Observation"
Description: "This resource profile supports suppliers providing site-specific clinical measures to ACC for ICP purposes."

* ^url = $icp-measurement-clinical
* insert Acc-Metadata

* code from $icp-clinical-observation-vs (required)
* code 1..1
* code ^definition = "Type of clinical component observation"

* value[x] only Quantity
* valueQuantity obeys clinical-quantity-invariant
* valueQuantity 0..1
* valueQuantity ^short = "The strength measurement, expressed in kilograms of force."
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"

Invariant: clinical-quantity-invariant
Severity: #error
Description: "The value must be a number between 0 and 100, with up to 2 decimal places"
Expression: "$this.value.as(decimal) >= 0 and $this.value.as(decimal) <= 100 and $this.value.as(decimal).precision() <= 2"
