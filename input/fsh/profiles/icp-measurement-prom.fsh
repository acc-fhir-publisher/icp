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

| Body site | Measurement standard | Measurement |
|--- |--- |--- |
| Shoulder | QuickDASH © Institute for Work & Health 2006-2020 | QuickDASH values range from 0 to 100 |
| Lower back |  Oswestry Disability Index ODI © Jeremy Fairbank, 1980. All Rights Reserved. |  Oswestry values 0 to 100 |
| Knee | Knee Injury and Osteoarthritis Outcome Score (KOOS) © Ewa Maria Roos, 1998 | KOOS values 0 to 100 |

"""

* ^url = $icp-measurement-prom
* insert Acc-Metadata

// * ^copyright = "ACC New Zealand© 2023+; Licensed Under Creative Commons No Rights Reserved."
* ^copyright = """
ACC New Zealand© 2023+; Licensed Under Creative Commons No Rights Reserved.<br/>
QuickDASH © Institute for Work & Health 2006-2020. All Rights Reserved.<br/>
Oswestry Disability Index ODI © Jeremy Fairbank, 1980. All Rights Reserved.<br/>
KOOS © Ewa Maria Roos, 1998. All Rights Reserved.
"""

* derivedFrom 0..0

* code from $icp-prom-measurement-standard-msk-vs (required)
* code 1..1
* code ^definition = "Type of patient component observation"

* valueInteger obeys prom-quantity-invariant
* valueInteger 0..1
* valueInteger ^short = "The PROM assessment score."

* obeys require-data-absent-or-value-integer-invariant


Invariant: prom-quantity-invariant
Severity: #error
Description: "The value must be between 0 and 100."
Expression: "$this.value.toString().matches('^(?:0*|[1-9][0-9]?|100)$')"

Invariant: require-data-absent-or-value-integer-invariant
Severity: #error
Description: "Either DataAbsentReason or ValueInteger must exist."
Expression: "exists(dataAbsentReason) or exists(valueInteger)"
