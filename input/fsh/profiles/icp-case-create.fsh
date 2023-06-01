Profile:        IcpCaseCreate
Parent:         acc-icp-case
Id:             acc-icp-case-create
Title:          "ACC ICP Case Create Resource"
Description:    "ICP Case Create is to be used by the supplier to furnish ACC with the required information following the completion of the triage assessment and the decision to accept the patient into their ICP service."
* obeys active-status-invariant and start-date-when-active-finished-invariant

* ^url = $icp-case-create
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* type 1..1
* type ^short = "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."
* type.coding 1..1
* type.coding.system 1..1
* type.coding.system = $icp-service-type-cs
* type.coding.code from $icp-service-type-vs (required)
* type.coding.code 1..1
* type.coding.code ^short = "msk"

* extension 1..*
* extension contains
    $icp-intended-pathway named intendedPathway 1..1 and
    $icp-service-bundle named serviceBundle 1..1 and
    $icp-acc-client-authority named accClientAuthority 1..1 and
    $icp-client-participation-agreement named clientParticipationAgreement 1..1 and
    $icp-covers-all-claim-diagnoses named coversAllClaimDiagnoses 0..1 and
    $icp-triage-assessment-date named triageAssessmentDate 1..1 and
    $icp-diagnoses named diagnoses 1..* and
    $icp-referral-source named referralSource 1..1 and
    $icp-complexity-scores named complexityScores 1..1 and
    $icp-exceptional-funding named exceptionalFunding 0..1

* extension[intendedPathway] ^short = "(surgical |  non-surgical)"
* extension[serviceBundle] ^short = "(lowerback-bundle1 | lowerback-bundle2 | lowerback-bundle3 | lowerback-bundle4 | lowerback-bundle5 | lowerback-bundle6 | lowerback-bundle7 | shoulder-bundle1 | shoulder-bundle2 | shoulder-bundle3 | shoulder-bundle4 | shoulder-bundle5 | knee-bundle1 | knee-bundle2 | knee-bundle3 | knee-bundle4 | knee-bundle5)"
* extension[accClientAuthority] ^short = "Indicates that the Client has agreed to ACC being able to collect, store, use, &amp; share their information."
* extension[clientParticipationAgreement] ^short = "Indicates that the Client has agreed to participating in ICP."
* extension[coversAllClaimDiagnoses] ^short = "Indicates whether or not the ICP case is treating all the diagnoses on the claim."
* extension[triageAssessmentDate] ^short = "The date the triage assessment was completed."
* extension[diagnoses] ^short = "The diagnoses for the injury being treated."
* extension[referralSource] ^short = "(internal | external | acc | self)"
* extension[complexityScores] ^short = "The scores obtained from the ICP complexity assessment/tool."
* extension[exceptionalFunding] ^short = "Indicates if exceptional is required for this treatment."