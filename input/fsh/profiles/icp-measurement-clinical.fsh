Profile: IcpMeasurementClinical
Parent: acc-icp-measurement
Id: acc-icp-measurement-clinical
Title: "ACC Integrated Care Pathway Clinical Observation"
Description: """
This resource profile supports suppliers providing site-specific clinical measures to ACC for ICP purposes.

When the valueQuantity is provided, the value is expressed as a percentage from the following calculation:

<div class="tableGridded"></div>

| Measurement | Calculation |
|--- |--- |
| Shoulder | Kilogram of force measurement of the injured arm as a percentage of the measurement from the non-injured arm |
| Lower back | Kilogram of force measurement of the lower back as a percentage of the normative value of 20kg (195Nm) |
| Knee | Kilogram of force measurement of the injured knee as a percentage of the measurement from the non-injured knee |

"""

* ^url = $icp-measurement-clinical
* insert Acc-Metadata

* code from $icp-clinical-measurement-standard-msk-vs (required)
* code 1..1
* code ^definition = "Type of clinical component observation"

* value[x] only Quantity
* valueQuantity obeys clinical-quantity-invariant and mandatory-icp-measurement-clinical-invariant
* valueQuantity 0..1
* valueQuantity ^short = "The strength measurement, expressed as a percentage from the calculation.  See the definition for more information."
* valueQuantity ^definition = """
    * The strength measurement, expressed as a percentage from the following calculation:
        * Shoulder: Kilogram of force measurement of the injured arm as a percentage of the measurement from the non-injured arm
        * Lower back: Kilogram of force measurement of the lower back as a percentage of the normative value of 20kg (195Nm)
        * Knee: Kilogram of force measurement of the injured knee as a percentage of the measurement from the non-injured knee
"""
* valueQuantity.code = #kg
* valueQuantity.system = "http://unitsofmeasure.org"

* obeys require-data-absent-or-value-quantity-invariant


Invariant: clinical-quantity-invariant
Severity: #error
Description: "The value must be a number between 0 and 100, with up to 2 decimal places"
Expression: "$this.value.as(decimal) >= 0 and $this.value.as(decimal) <= 100 and $this.value.as(decimal).precision() <= 2"

Invariant: mandatory-icp-measurement-clinical-invariant
Severity: #error
Description: "The clinical component observation must have a code and system"
Expression: "$this.code.exists() and $this.system.exists() and $this.unit.empty()"

Invariant: require-data-absent-or-value-quantity-invariant
Severity: #error
Description: "Either DataAbsentReason or ValueQuantity must exist."
Expression: "exists(dataAbsentReason) or exists(valueQuantity)"