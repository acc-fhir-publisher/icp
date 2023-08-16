Profile: IcpMeasurementPatient
Parent: acc-icp-measurement-base
Id: acc-icp-measurement-prom
Title: "ACC Integrated Care Pathway Patient Observation"
Description: "ACC Integrated Care Pathway patient Observation"

* ^url = $icp-measurement-prom
* insert Acc-Metadata

* code from $icp-patient-observation-vs (required)
* code 1..1
* code ^definition = "Type of patient component observation"

* value[x] only Quantity
* valueQuantity obeys prom-quantity-invariant
* valueQuantity 0..1
* valueQuantity ^short = "The quantity value of the ICP case Patient Observation."

Invariant: prom-quantity-invariant
Severity: #error
Description: "The value should be between 0 and 150."
Expression: "$this.value.toString().matches('^(?:0*(?:[0-9]|[1-9][0-9]|1[0-4][0-9]|150))$')"
