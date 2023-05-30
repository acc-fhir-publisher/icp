Profile:        IcpCaseModify
Parent:         acc-icp-case
Id:             acc-icp-case-modify
Title:          "ACC ICP Episode of Care Service Bundle Update Resource"
Description:    "The ACC ICP Case Service Bundle Update resource based on ACC ICP Case"
* obeys active-status-invariant

* ^url = $icp-case-modify
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZL
* ^status = #draft

* type 0..0
* period 0..0

* extension 1..*
* extension contains
    $icp-service-bundle named serviceBundle 1..1 and
    $icp-exceptional-funding named changeRationale 1..* and
    $icp-supporting-details named supportingDetails 0..1
