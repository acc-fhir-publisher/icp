ValueSet: CategoryPatient
Id: acc-icp-category-patient-observation
Title: "code-patient-observation"
Description: "code-Patient-observation"

* ^url = $icp-category-patient-observation-vs
* insert Acc-Vocabulary-Metadata
* include codes from system $icp-category-patient-observation-cs

CodeSystem: ICPCategoryPatientObservation
Id: acc-icp-category-patient-observation
Title: "ICP Category Patient Observation"
Description: "ICP Category Patient Observation"

* ^url = $icp-category-patient-observation-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #SiteSpecificPROMMeasurementStandard "Site Specific PROM Measurement Standard"