Profile: IcpMeasurementPROM
Parent: acc-icp-measurement
Id: acc-icp-measurement-prom
Title: "ACC Integrated Care Pathway Site-Specific PROM"
Description: """
This resource profile supports suppliers providing a site-specific patient reported outcome measure (PROM) to ACC.

These PROMS must be submitted through the PROM and Clinical measures API via the supplier's PMS at these time-points:

* Baseline (at entry to the pathway following triage assessment)
* Mid-point
* Exit
* Ad-hoc measures may be taken at any time (for example, at the beginning of using exceptional funding if this has been required).

<div class="tableGridded"></div>

| Body site | Measurement standard | Measurement |
|--- |--- |--- |
| Shoulder | QuickDASH | QuickDASH values range from 1 to 100 |
| Lower back |  Oswestry Disability Index |  Oswestry values 0 to 50 |
| Knee | Knee Injury and Osteoarthritis Outcome Score (KOOS) | KOOS values 0 to 100 |

"""

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