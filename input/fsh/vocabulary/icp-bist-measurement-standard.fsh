ValueSet: ICPBistMeasurementStandard
Id: acc-icp-bist-measurement-standard
Title: "Traumatic Brain Injury and Concussion Snomed Codes"
Description: "This ValueSet includes Snomed codes for traumatic brain injury and concussion."

* ^url = $icp-bist-measurement-standard-vs
* insert Acc-Vocabulary-Metadata

* include $SCT#367386002 // Concussion without loss of consciousness, initial encounter
* include $SCT#81000004 // Concussion with loss of consciousness of 30 minutes or less, initial encounter
* include $SCT#406002007 // Concussion with loss of consciousness of unspecified duration, initial encounter
* include $SCT#73211009 // Diffuse traumatic brain injury without loss of consciousness, initial encounter
* include $SCT#28154006 // Diffuse traumatic brain injury with loss of consciousness of 30 minutes or less, initial encounter
* include $SCT#13243005 // Diffuse traumatic brain injury with loss of consciousness of unspecified duration, initial encounter

* include $SCT#367391005 // Concussion without loss of consciousness, subsequent encounter
* include $SCT#365834001 // Concussion with loss of consciousness of 30 minutes or less, subsequent encounter
* include $SCT#15167005 // Concussion with loss of consciousness of unspecified duration, subsequent encounter
* include $SCT#60480006 // Diffuse traumatic brain injury without loss of consciousness, subsequent encounter
* include $SCT#288871005 // Diffuse traumatic brain injury with loss of consciousness of 30 minutes or less, subsequent encounter
* include $SCT#21320005 // Diffuse traumatic brain injury with loss of consciousness of unspecified duration, subsequent encounter

* include $SCT#54542-1 // Concussion severity
* include $SCT#54552-0 // History of concussion
* include $SCT#55426-8 // Brain injury score
* include $SCT#72145-9 // Brain injury severity assessment panel
