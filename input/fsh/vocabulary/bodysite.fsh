ValueSet: BodySite
Id: acc-icp-body-site-measure
Title: "bodySite"
Description: "Intention is to use SNOMED bodySite, restricted to the set selected. "

* ^url = $icp-body-site-measure-vs
* insert Acc-Vocabulary-Metadata

* $SCT#72696002 "Knee region structure"
* $SCT#16982005 "Shoulder region structure"
* $SCT#264072009 "Structure of surface region of lower back"

// * include codes from system $SCT

// CodeSystem: ACCBodySite
// Id: acc-icp-body-site-measure
// Title: "Body Site Code"
// Description: "Intention is to use SNOMED bodySite, restricted to the set selected ."

// * ^url = $icp-body-site-measure-cs
// * ^caseSensitive = true
// * insert Acc-Vocabulary-Metadata

// * #72696002 "Knee region structure" "Knee"
// * #16982005  "Shoulder region structure" "Shoulder"
// * #264072009  "Lower back region structure" "Lower back"
//Structure of surface region of lower back