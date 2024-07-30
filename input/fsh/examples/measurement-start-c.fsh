Instance: icp-tbi-start-c-measurement-internal
InstanceOf: QuestionnaireResponse
Usage: #inline
* status = #completed
* questionnaire = "http://hl7.org.nz/fhir/StructureDefinition/acc-tbi-start-c"
* item[0].linkId = "1"
* item[=].text = "I have had headaches at some time in the last two weeks."
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-agreedisagree-cs#agree
* item[+].linkId = "2"
* item[=].text = "I have had headaches at some time in the last two weeks."
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-agreedisagree-cs#agree
* item[+].linkId = "3"
* item[=].text = "It is not really safe for a person with a condition like mine to be physically active."
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-agreedisagree-cs#agree
* item[+].linkId = "4"
* item[=].text = "I have felt too tired to do work or daily activities in the last two weeks."
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-agreedisagree-cs#agree
* item[+].linkId = "5"
* item[=].text = "Turning my head quickly makes me feel dizzy or unsteady."
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-agreedisagree-cs#agree
* item[+].linkId = "6"
* item[=].text = "Worrying thoughts have been going through my mind a lot of the time in the last two weeks."
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-agreedisagree-cs#agree
* item[+].linkId = "7"
* item[=].text = "I feel that my concussion symptoms are terrible and are never going to get any better."
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-agreedisagree-cs#agree
* item[+].linkId = "8"
* item[=].text = "In general in the last two weeks, I have not enjoyed all the things I used to enjoy."
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-agreedisagree-cs#agree
* item[+].linkId = "9"
* item[=].text = "Overall, how bothersome have your concussion symptoms been in the last two weeks?"
* item[=].answer.valueCoding = $icp-tbi-startc-answeroption-overall-cs#very-much