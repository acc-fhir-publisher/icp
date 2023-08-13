
ValueSet: BodySite
Id: acc-icp-body-site-measure
Title: "bodySite"
Description: "Intention is to use SNOMED bodySite, restricted to the set selected. "

* ^url = $icp-body-site-measure-vs
* insert Acc-Vocabulary-Metadata
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

// * include codes from system $SCT where concept is-a #72696002 "Knee region structure"
// * include codes from system $SCT where concept is-a #16982005 "Shoulder region structure"
// * include codes from system $SCT where concept is-a #37822005 "Lower back structure"
* $SCT#72696002 "Knee region structure"
* $SCT#16982005 "Shoulder region structure"
* $SCT#37822005 "Lower back structure"



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