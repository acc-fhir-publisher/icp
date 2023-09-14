ValueSet: ICPServiceType
Id: acc-icp-service-type
Title: "Service Type"
Description: "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."

* ^url = $icp-service-type-vs
* insert Acc-Vocabulary-Metadata

* include codes from system $icp-service-type-cs


CodeSystem: ICPServiceType
Id: acc-icp-service-type
Title: "Service Type"
Description: "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."

* ^url = $icp-service-type-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #msk "Muscular Skeletal"