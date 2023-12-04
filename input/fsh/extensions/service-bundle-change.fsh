Extension: IcpServiceBundleChange
Id: acc-icp-service-bundle-change
Title: "ICP Service Bundle Change"
Description: "An extension to capture the reason for a change in the ICP Service Bundle."
* ^url = $icp-service-bundle-change
* insert Acc-Metadata

* ^context[0].type = #element
* ^context[=].expression = "EpisodeOfCare"
* ^context[+].type = #element
* ^context[=].expression = "EpisodeOfCare.extension"

* extension 2..3
* extension contains
    $icp-service-bundle-msk named service-bundle 1..1 and
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
* extension[supporting-details].valueString obeys supporting-details-max50-length-invariant
* extension[supporting-details] ^short = "Used to explain the need for a service bundle change, required  when the rationale is 'other'."
* extension[supporting-details] ^definition = "A paragraph outlining the reason/rationale for a modification to the ICP case's service bundle."

* obeys other-rationale-invariant and not-other-rationale-invariant

Invariant: other-rationale-invariant
Severity: #error
Description: "if 'rationale' is 'other', supporting-details is required."
Expression: "(extension.where(url='rationale').where(value = 'other').exists() implies extension.where(url='supporting-details').value.exists())"

Invariant: not-other-rationale-invariant
Severity: #error
Description: "if 'rationale' is not 'other', supporting-details must not be populated."
Expression: "(extension.where(url='rationale').where(value = 'other').empty() implies extension.where(url='supporting-details').value.empty())"

Invariant: supporting-details-max50-length-invariant
Description: "'supporting-details' must be no more than 250 characters."
Expression: "value.length() <= 50"
Severity: #error