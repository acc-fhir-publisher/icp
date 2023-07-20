Extension: IcpServiceBundleChange
Id: acc-icp-service-bundle-change
Title: "ICP Service Bundle Change"
Description: "An extension to capture the reason for a change in the ICP Service Bundle."
* ^url = $icp-service-bundle-change
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 2..3
* extension contains
    $icp-service-bundle named service-bundle 1..1 and
    rationale 1..1 and
    supporting-details 0..1

* extension[rationale].url = "rationale" (exactly)
* extension[rationale].value[x] only code
* extension[rationale].valueCode 1..1
* extension[rationale].valueCode from $icp-service-bundle-change-rationale-vs (required)
* extension[rationale] ^short = "(other | comorbidity-factors | social-support | active-participation | patient-resilience | medication-use | equitable-access | health-literacy | cultural-support | housing-accommodation | finances | travel | return-to-daily-life | return-to-sport | number-of-disciplines | employment | workplace-support | return-to-work-support)"
* extension[rationale] ^definition = "A categorisation of the rationale for service bundle change."

* extension[supporting-details].url = "supporting-details" (exactly)
* extension[supporting-details].value[x] only string
* extension[supporting-details].valueString 0..1
* extension[supporting-details].valueString obeys supporting-details-max-length-invariant
* extension[supporting-details] ^short = "Used to explain the need for a service bundle change, required  when the rationale is 'other'."
* extension[supporting-details] ^definition = "A paragraph outlining the reason/rationale for a modification to the ICP case's service bundle."

* obeys other-rationale-invariant

Invariant: other-rationale-invariant
Severity: #error
Description: "if 'additional-acc-support-needed' is true or reason is not 'goal-achieved', supporting-details and outcome-summary are required."
Expression: "(extension.where(url='rationale').value = 'other' implies extension.where(url='supporting-details').value.exists())"
