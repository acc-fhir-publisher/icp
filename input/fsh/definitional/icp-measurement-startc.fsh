Instance: acc-tbi-start-c
InstanceOf: Questionnaire
Usage: #definition
Title:          "ACC TBI STarT-C"
Description:    "Represents the STarT-C questionnaire for Traumatic Brain Injury (TBI) patients"


* name = "ACCTBIStartC"
* title = "STarT-C"
* url = $acc-tbi-start-c
* status = #draft
* subjectType = #Patient
* publisher = "ACC Integration"
* jurisdiction.coding = urn:iso:std:iso:3166#NZ
* useContext
  * code = $usage-context-type-cs#focus
  * valueCodeableConcept.coding.system = "urn:oid:2.16.578.1.12.4.1.1.8655"
  * valueCodeableConcept.coding.display = "STarT-C"

* item[0]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "1"
  * text = "I have had headaches at some time in the last two weeks."
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-agreedisagree-vs

* item[+]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "2"
  * text = "I have had headaches at some time in the last two weeks."
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-agreedisagree-vs

* item[+]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "3"
  * text = "It is not really safe for a person with a condition like mine to be physically active."
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-agreedisagree-vs

* item[+]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "4"
  * text = "I have felt too tired to do work or daily activities in the last two weeks."
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-agreedisagree-vs

* item[+]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "5"
  * text = "Turning my head quickly makes me feel dizzy or unsteady."
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-agreedisagree-vs

* item[+]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "6"
  * text = "Worrying thoughts have been going through my mind a lot of the time in the last two weeks."
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-agreedisagree-vs

* item[+]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "7"
  * text = "I feel that my concussion symptoms are terrible and are never going to get any better."
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-agreedisagree-vs

* item[+]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "8"
  * text = "In general in the last two weeks, I have not enjoyed all the things I used to enjoy."
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-agreedisagree-vs

* item[+]
  * type = #choice
  * extension.url = $questionnaire-itemControl
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * linkId = "9"
  * text = "Overall, how bothersome have your concussion symptoms been in the last two weeks?"
  * required = true
  * answerValueSet = $icp-tbi-startc-answeroption-overall-vs
