Profile:        IcpCaseCreate
Parent:         IcpCase
Id:             IcpCaseCreate
Title:          "ACC ICP Episode of Care Referral"
Description:    "An ACC Integrated Care Pathway resource based on Episode of Care"
* obeys active-status-invariant and start-date-when-active-finished-invariant

* ^url = $icp-case-create
* ^status = #draft

* type 1..1
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

