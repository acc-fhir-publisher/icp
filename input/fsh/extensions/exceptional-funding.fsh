Invariant: conditionally-required-field
Severity: #error
Description: "If 'rationale' contains 'other', 'supportingDetails' must be populated"
Expression: "rationale contains 'other' implies supportingDetails.exists()"

Extension: IcpExceptionalFunding
Id: acc-icp-exceptional-funding
Title: "Exceptional Funding"
Description: "Indicates if exceptional is required for this treatment."
// * obeys conditionally-required-field

* ^url = $icp-exceptional-funding
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 1..*

* extension contains
    $icp-funding-rationale named rationale 1..* and
    $icp-supporting-details named supportingDetails 0..1

* extension[rationale] ^short = "(other | comorbitity-factors | social-support | active-participation | patient-resilience | medication-use | equitable-access | health-literacy | cultural-support | housing-accommodation | finances | travel | return-to-daily-life | return-to-sport | number-of-disciplines | employment | workplace-support | return-to-work-support)"
* extension[rationale] ^definition = "A categorisation of the rationale for exceptional funding being required."
* extension[supportingDetails] ^short = "Used to explain the need for exceptional funding being required as well as providing further context for the client exit."
* extension[supportingDetails] ^definition = "A paragraph outlining the reason/rational. Used to explain the need for exceptional funding being required as well as providing further context for the client exit."