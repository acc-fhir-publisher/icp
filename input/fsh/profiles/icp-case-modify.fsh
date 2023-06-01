Profile:        IcpCaseModify
Parent:         acc-icp-case
Id:             acc-icp-case-modify
Title:          "ACC ICP Episode of Care Service Bundle Update Resource"
Description:    "This profile supports suppliers needing to inform ACC of a change to the selected Service Bundle, Intended Pathway (surgical/non-surgical), and or Exceptional Funding Required."
* obeys active-status-invariant

* ^url = $icp-case-modify
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* type 0..0
* period 0..0

* extension 1..*
* extension contains
    $icp-service-bundle named serviceBundle 1..1 and
    $icp-funding-rationale named changeRationale 1..* and
    $icp-exceptional-funding named exceptionalFunding 0..1 and
    $icp-supporting-details named supportingDetails 0..1

* extension[serviceBundle] ^short = "The updated ICP service bundle for the treatment."
* extension[changeRationale] ^short = "(other | comorbitity-factors | social-support | active-participation | patient-resilience | medication-use | equitable-access | health-literacy | cultural-support | housing-accomodation | finances | travel | return-to-daily-life | return-to-sport | number-of-disciplines | employment | workplace-support | return-to-work-support)"
* extension[exceptionalFunding] ^short = "Indicates if exceptional is required for this treatment."
* extension[supportingDetails] ^short = "Used to explain the need for exceptional funding being required as well as providing further context for the client exit."

// require invariant to require supporting details when exceptionalFunding is 'other'