Instance: icp-tbi-cover-measurement-internal
InstanceOf: QuestionnaireResponse
Usage: #example
* meta.profile = $icp-tbi-cover-causation
* status = #completed
* questionnaire = "http://hl7.org.nz/fhir/StructureDefinition/acc-cover-causation"
* item[0].linkId = "1"
* item[=].text = "Does the client have a personal injury?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
* item[=].text = "Did the client have an accident?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
* item[=].text = "Did the client have an accident?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
* item[=].text = "Did the accident cause the client's personal injury?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "5"
* item[=].text = "Did the accident cause the client's personal injury?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "6"
* item[=].text = "What information should be included in your clinical notes?"
* item[=].answer.valueString = "Test"