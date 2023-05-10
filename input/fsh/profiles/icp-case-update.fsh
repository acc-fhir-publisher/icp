Profile:        IcpCaseUpdate
Parent:         IcpCase
Id:             IcpCaseUpdate
Title:          "ACC ICP Episode of Care Service Bundle Update Resource"
Description:    "An ACC Integrated Care Pathway resource based on Episode of Care"
* obeys active-status-invariant

* ^url = $icp-case-update
* ^status = #draft

* type 0..0
* period 0..0

* extension 1..*
* extension contains
    $icp-service-bundle named serviceBundle 1..1 and
    $icp-exceptional-funding named changeRationale 1..* and
    $icp-supporting-details named supportingDetails 0..1
