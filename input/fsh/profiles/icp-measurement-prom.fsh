Profile: IcpMeasurementPROM
Parent: acc-icp-measurement
Id: acc-icp-measurement-prom
Title: "ACC Integrated Care Pathway Site-Specific PROM"
Description: "This resource profile supports suppliers providing a site-specific patient reported outcome measure (PROM) to ACC."

* ^url = $icp-measurement-prom
* insert Acc-Metadata

* code from $icp-prom-measurement-standard-msk-vs (required)
* code 1..1
* code ^definition = "Type of patient component observation"

* valueInteger obeys prom-quantity-invariant
* valueInteger 0..1
* valueInteger ^short = "The PROM assessment score."

* obeys require-data-absent-or-value-integer-invariant


Invariant: prom-quantity-invariant
Severity: #error
Description: "The value must be between 0 and 150."
Expression: "$this.value.toString().matches('^(?:0*(?:[0-9]|[1-9][0-9]|1[0-4][0-9]|150))$')"

Invariant: require-data-absent-or-value-integer-invariant
Severity: #error
Description: "Either DataAbsentReason or ValueInteger must exist."
Expression: "exists(dataAbsentReason) or exists(valueInteger)"