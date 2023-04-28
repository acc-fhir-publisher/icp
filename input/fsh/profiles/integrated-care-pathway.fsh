Profile:        IntegratedCarePathway
Parent:         EpisodeOfCare
Id:             IntegratedCarePathway
Title:          "ACC ICP Episode of Care"
Description:    "An ACC Integrated Care Pathway resource based on Episode of Care"

* ^url = $icp-profile
* ^status = #draft

* statusHistory 0..0
* referralRequest 0..0
* careManager 0..0
* team 0..0
* account 0..0
* diagnosis 0..0

* extension contains
    $icp-service-bundle named serviceBundle 1..1 and
    $icp-acc-client-authority named accClientAuthority 1..1 and
    $icp-client-participation-agreement named clientParticipationAgreement 1..1 and
    $icp-covers-all-claim-diagnoses named coversAllClaimDiagnoses 0..1 and
    $acc-providerid named accProviderId 1..1 and
    $icp-triage-assessment-date named triageAssessmentDate 1..1 and
    Icp_diagnoses named diagnoses 1..* and
    $icp-referral-source named referralSource 1..1 and
    $icp-intended-pathway named intendedPathway 1..1 and
    $icp-complexity-scores named complexityScores 1..1 and
    $icp-exceptional-funding named exceptionalFunding 0..1

* patient only Reference(NzPatient)
* patient 1..1

* managingOrganization only Reference(HpiOrganization)
* managingOrganization 1..1

* period 1..1
* period.start 1..1
* period.end 0..1

* status from $icp-status-vs (required)
* status ^short = "active | finished"
* type 1..1
* type.coding 1..1
* type.coding.system 1..1
* type.coding.system = $icp-service-type-cs
* type.coding.code from $icp-service-type-vs (required)
* type.coding.code 1..1
* type.coding.code ^short = "msk"

* identifier ^slicing.description = "ICP identifiers"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #openAtEnd

* identifier contains
    icpclaimnumber 1..1 and
    patientDob 1..1

* identifier[icpclaimnumber].system = $icp-acc-claim-number (exactly)
* identifier[patientDob].system = $icp-patient-birth-date (exactly)