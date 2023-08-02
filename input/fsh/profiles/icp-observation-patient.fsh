Profile: PatientObservation
Parent: acc-icp-observation-base
Id: acc-icp-observation-prom
Title: "ACC Integrated Care Pathway Patient Observation"
Description: "ACC Integrated Care Pathway patient Observation"

* ^url = $icp-observation-prom
* insert Acc-Metadata

* code from $icp-patient-observation-vs (required)
* code 1..1
* code ^definition = "Type of patient component observation"

// * category from $icp-category-patient-observation-vs (required)
// * category 1..1
// * category ^definition = "Site specific Clinical Measurement Standard"