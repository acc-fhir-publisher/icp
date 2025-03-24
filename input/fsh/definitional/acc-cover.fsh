Instance: acc-cover-causation
InstanceOf: Questionnaire
Usage: #definition
Title:          "ACC Cover and Causation"
Description:    "Represents the Cover and Causation questionnaire for ACC claims"

* name = "ACCCover"
* title = "Cover and Causation"
* url = $acc-cover-causation
* status = #draft
* subjectType = #Patient
* publisher = "ACC Integration"
* jurisdiction.coding = urn:iso:std:iso:3166#NZ
* useContext
  * code = $usage-context-type-cs#focus
  * valueCodeableConcept.coding.system = "urn:oid:2.16.578.1.12.4.1.1.8655"
  * valueCodeableConcept.coding.display = "Cover and Causation"

* item[0]
  * type = #boolean
  * linkId = "1"
  * text = "Does the client have a personal injury?"
  * required = true

* item[+]
  * type = #boolean
  * linkId = "2"
  * text = "Did the client have an accident?"
  * required = true

* item[+]
  * type = #boolean
  * linkId = "3"
  * text = "Could the client's injury be due to a work-related gradual process, disease or infection?"
  * required = true

* item[+]
  * type = #boolean
  * linkId = "4"
  * text = "Did the accident cause the client's personal injury?"
  * required = true

* item[+]
  * type = #boolean
  * linkId = "5"
  * text = "On balance, do you think there's a causal link between the accident and the injury - could the client qualify for ACC support?"
  * required = true

* item[+]
  * type = #string
  * linkId = "6"
  * text = "What information should be included in your clinical notes?"
  * required = true