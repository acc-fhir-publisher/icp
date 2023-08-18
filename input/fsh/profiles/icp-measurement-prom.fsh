Profile: IcpMeasurementPROM
Parent: acc-icp-measurement
Id: acc-icp-measurement-prom
Title: "ACC Integrated Care Pathway Site-Specific PROM"
Description: "This resource profile supports suppliers providing a site-specific patient reported outcome measure (PROM) to ACC."

* ^url = $icp-measurement-prom
* insert Acc-Metadata

* code from $icp-patient-observation-vs (required)
* code 1..1
* code ^definition = "Type of patient component observation"

* value[x] only Quantity
* valueQuantity obeys prom-quantity-invariant
* valueQuantity 0..1
* valueQuantity ^short = "The quantity value the PROM."

Invariant: prom-quantity-invariant
Severity: #error
Description: "The value must be between 0 and 150."
Expression: "$this.value.toString().matches('^(?:0*(?:[0-9]|[1-9][0-9]|1[0-4][0-9]|150))$')"
