ValueSet: ICPIntendedPathway
Id: acc-icp-intended-pathway
Title: "Intended Pathway"
Description: "Indicates if the pathway is expected to be surgical or non-surgical."

* ^url = $icp-intended-pathway-vs
* ^version = "0.1.0"
* ^experimental = false

* include codes from system $icp-intended-pathway-cs


CodeSystem: ICPIntendedPathway
Id: acc-icp-intended-pathway
Title: "Intended Pathway"
Description: "Indicates if the pathway is expected to be surgical or non-surgical."

* ^url = $icp-intended-pathway-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #surgical "Surgical"
* #non-surgical "Non Surgical"