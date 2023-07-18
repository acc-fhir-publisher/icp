Extension: IcpExceptionalFunding
Id: acc-icp-exceptional-funding
Title: "Exceptional Funding"
Description: "Indicates if exceptional is required for this treatment."
* ^url = $icp-exceptional-funding
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 2..*
* extension contains
    rationale 1..* and
    supporting-details 1..1

* extension[rationale].url = "rationale" (exactly)
* extension[rationale].value[x] only code
* extension[rationale].valueCode 1..1
* extension[rationale].valueCode from $icp-funding-rationale-vs (required)
* extension[rationale] ^short = "(other | comorbitity-factors | social-support | active-participation | patient-resilience | medication-use | equitable-access | health-literacy | cultural-support | housing-accommodation | finances | travel | return-to-daily-life | return-to-sport | number-of-disciplines | employment | workplace-support | return-to-work-support)"
* extension[rationale] ^definition = "A categorisation of the rationale for exceptional funding being required."

* extension[supporting-details].url = "supporting-details" (exactly)
* extension[supporting-details].value[x] only string
* extension[supporting-details].valueString 0..1
* extension[supporting-details].valueString obeys supporting-details-max-length-invariant
* extension[supporting-details] ^short = "Used to explain the need for exceptional funding being required as well as providing further context for the client exit."
* extension[supporting-details] ^definition = "A paragraph outlining the reason/rationale. Used to explain the need for exceptional funding being required as well as providing further context for the client exit."
