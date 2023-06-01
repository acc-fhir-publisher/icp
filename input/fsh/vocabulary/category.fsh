ValueSet: ICPCategory
Id: acc-icp-category
Title: "Category"
Description: "The complexity category."

* ^url = $icp-category-vs
* ^version = "0.1.0"
* ^experimental = false
* codes from system $icp-category-cs


CodeSystem: ICPCategory
Id: acc-icp-category
Title: "Category"
Description: "The complexity category."

* ^url = $icp-category-cs
* ^caseSensitive = true
* ^version = "0.1.0"
* ^experimental = false

* #psychosocial "Psychosocial"
* #contextual "Contextual"
* #disciplines "Disciplines"
* #co-morbidities "Co-morbidities"
* #vocational "Vocational"