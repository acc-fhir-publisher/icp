Profile: ClinicalObservation
Parent: acc-icp-observation-base
Id: acc-icp-observation-clinical
Title: "ACC Integrated Care Pathway Clinical Observation"
Description: "ACC Integrated Care Pathway Clinical Observation"

* ^url = $icp-observation-clinical
* insert Acc-Metadata


* code from $icp-clinical-observation-vs (required)
* code 1..1
* code ^definition = "Type of clinical component observation"

// * category from $icp-category-clinical-observation-vs (required)
// * category 1..1
// * category ^definition = "Site specific Clinical Measurement Standard"