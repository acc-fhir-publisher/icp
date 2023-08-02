ValueSet: CategoryClinical
Id: acc-icp-category-clinical-observation
Title: "code-clinical-observation"
Description: "code-Clinical-observation"

* ^url = $icp-category-clinical-observation-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-category-clinical-observation-cs

CodeSystem: ICPCategoryClinicalObservation
Id:  acc-icp-category-clinical-observation
Title: "ICP Category Clinical Observation"
Description: "ICP Category Clinical Observation"

* ^url = $icp-category-clinical-observation-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #"Sitespecific Clinical Measurement Standard" "Site specific Clinical Measurement Standard"