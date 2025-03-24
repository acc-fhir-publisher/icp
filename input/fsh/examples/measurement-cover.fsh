Instance: icp-tbi-cover-measurement-internal
InstanceOf: QuestionnaireResponse
Usage: #example
* meta.profile = $icp-tbi-cover-causation
* status = #completed
* questionnaire = $acc-cover-causation
* item[0].linkId = "1"
* item[=].text = "Does the client have a personal injury?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
* item[=].text = "Did the client have an accident?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
* item[=].text = "Could the client's injury be due to a work-related gradual process, disease or infection?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
* item[=].text = "Did the accident cause the client's personal injury?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "5"
* item[=].text = "On balance, do you think there's a causal link between the accident and the injury - could the client qualify for ACC support?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "6"
* item[=].text = "What information should be included in your clinical notes?"
* item[=].answer.valueString = "Test"