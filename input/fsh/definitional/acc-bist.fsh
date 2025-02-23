Instance: acc-bist
InstanceOf: Questionnaire
Usage: #definition
Title:          "ACC BIST"
Description:    "Represents the Brain Injury Screening Tool (BIST) for ACC."

* name = "ACCBist"
* title = "Brain Injury Screening Tool"
* url = $acc-bist
* status = #draft
* subjectType = #Patient
* publisher = "ACC Integration"
* jurisdiction.coding = urn:iso:std:iso:3166#NZ
* useContext
  * code = $usage-context-type-cs#focus
  * valueCodeableConcept.coding.system = "urn:oid:2.16.578.1.12.4.1.1.8655"
  * valueCodeableConcept.coding.display = "BIST"

* item[0]
  * type = #group
  * linkId = "0"
  * text = "Time of Accident"
  * item[0]
    * linkId = "0.1"
    * text = "Date of injury"
    * type = #date
    * required = true
  * item[+]
    * linkId = "0.2"
    * text = "Time of injury"
    * type = #string
    * required = true
  * item[+]
    * linkId = "0.3"
    * text = "Date of consultation"
    * type = #date
    * required = true
  * item[+]
    * linkId = "0.4"
    * text = "Injury occurred within past 24 hours"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs

* item[+]
  * linkId = "1"
  * type = #group
  * text = "Accident Details"
  * item[0]
    * linkId = "1.1"
    * text = "Please tell me about what happened"
    * type = #text
    * required = true
  * item[+]
    * linkId = "1.2"
    * text = "Are there high risk indicators such as suspicion of skull fracture, focal neurological deficit, high speed, focal blunt trauma, or fall from height (e.g., > 5 stairs)"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.2.1"
    * type = #display
    * text = "**If high risk indicators present, consider referral to Emergency Department or Concussion Service**"
    * enableWhen
      * id = "1.2.1.1.1"
      * operator = #=
      * question = "1.2"
      * answerString = "Yes"
  * item[+]
    * linkId = "1.3"
    * text = "Did the incident occur in traumatic circumstances which could result in emotional or psychological reactions (e.g., assault, domestic violence, fatalities in a car accident)"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.3.1"
    * type = #display
    * text = "**If psychological trauma likely, consider referral to Concussion Service**"
    * enableWhen
      * id = "1.3.1.1.1"
      * operator = #=
      * question = "1.4"
      * answerString = "Yes"
  * item[+]
    * linkId = "1.4"
    * text = "Did anyone with you at the time of injury say anything else about what happened"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.4.1"
    * text = "Please give details"
    * type = #text
    * enableWhen
      * id = "1.4.1.1"
      * operator = #=
      * question = "1.4"
      * answerString = "Yes"
    * required = false
  * item[+]
    * linkId = "1.5"
    * text = "Were you sick or did you vomit"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.5.1"
    * text = "How many times"
    * type = #string
    * enableWhen
      * id = "1.5.1.1.1"
      * operator = #=
      * question = "1.5"
      * answerString = "Yes"
    * required = true
    * item[0]
      * linkId = "1.5.1.1"
      * type = #display
      * text = "**If > 1 vomiting episode, consider referral to the Emergency Department or Concussion Service**"
  * item[+]
    * linkId = "1.6"
    * text = "Were you knocked out (or did you lose consciousness)"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.6.1"
    * text = "How long for (hours/mins)"
    * type = #string
    * enableWhen
      * id = "1.6.1.1.1"
      * operator = #=
      * question = "1.6"
      * answerString = "Yes"
    * required = false
    * item[0]
      * linkId = "1.6.1.1"
      * type = #display
      * text = "**If loss of consciousness > brief, consider referral to Emergency Department or Concussion Service**"
  * item[+]
    * linkId = "1.7"
    * text = "Did you have a fit or seizure straight afterwards (i.e., go stiff or shake violently)"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesnounknown-vs
  * item[+]
    * linkId = "1.7.1"
    * type = #display
    * text = "**If seizure is within a few days of the injury, consider referral to Emergency Department or Concussion Service**"
    * enableWhen
      * id = "1.7.1.1.1"
      * operator = #=
      * question = "1.7"
      * answerString = "Yes"
  * item[+]
    * linkId = "1.8"
    * text = "Are you feeling better, worse, or about the same since the injury"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-betterworsesame-vs
  * item[+]
    * linkId = "1.8.1"
    * type = #display
    * text = "**If symptoms have worsened within the first few days of injury, consider referral to the Emergency Department or Concussion Service**"
    * enableWhen
      * id = "1.8.1.1.1"
      * operator = #=
      * question = "1.8"
      * answerString = "Worse"
  * item[+]
    * linkId = "1.9"
    * text = "Have you had a concussion or brain injury before"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.9.1"
    * text = "How many times"
    * type = #string
    * enableWhen
      * id = "1.9.1.1.1"
      * operator = #=
      * question = "1.9"
      * answerString = "Yes"
    * required = true
  * item[+]
    * linkId = "1.9.2"
    * text = "When was the last injury"
    * type = #date
    * enableWhen
      * id = "1.9.2.1.1"
      * operator = #=
      * question = "1.9"
      * answerString = "Yes"
    * required = true
  * item[+]
    * linkId = "1.9.3"
    * text = "Was it a prolonged recovery (> 3 months to recover)"
    * type = #choice
    * enableWhen
      * id = "1.9.3.1.1"
      * operator = #=
      * question = "1.9"
      * answerString = "Yes"
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.9.4"
    * type = #display
    * text = "**If multiple, recent or unrecovered previous injury, refer to Emergency Department or Concussion Service**"
    * enableWhen
      * id = "1.9.4.1.1"
      * operator = #=
      * question = "1.9"
      * answerString = "Yes"
  * item[+]
    * linkId = "1.10"
    * text = "Are you currently taking any medications that thin the blood e.g., anticoagulants"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.10.1"
    * type = #display
    * text = "**Consider referral to Emergency Department if injury recently sustained (within past few days)**"
    * enableWhen
      * id = "1.10.1.1.1"
      * operator = #=
      * question = "1.10"
      * answerString = "Yes"
  * item[+]
    * linkId = "1.11"
    * text = "Have you ever experienced difficulties with your mental health"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.11.1"
    * type = #display
    * text = "**The person may be at moderate risk of poor recovery and early specialist input may be required. If not recovered by 7-10 days, consider referral to Concussion Service**"
    * enableWhen
      * id = "1.11.1.1.1"
      * operator = #=
      * question = "1.11"
      * answerString = "Yes"
  * item[+]
    * linkId = "1.12"
    * text = "Do you have a history of migraine (severe headache with vomiting or extreme sensitivity to light and sound)"
    * type = #choice
    * required = true
    * answerValueSet = $icp-tbi-bist-answeroption-yesno-vs
  * item[+]
    * linkId = "1.12.1"
    * type = #display
    * text = "**If not recovered by 7-10 days, consider referral to Concussion Service**"
    * enableWhen
      * id = "1.12.1.1.1"
      * operator = #=
      * question = "1.12"
      * answerString = "Yes"
* item[+]
  * linkId = "2"
  * text = "Symptom scale"
  * type = #group
  * item[0]
    * linkId = "2.0"
    * type = #display
    * text = "Compared with before the accident, please rate how much you experience the following symptoms:"
  * item[+]
    * linkId = "2.1"
    * type = #group
    * text = "**Physical:**"
    * item[0]
      * linkId = "2.1.1"
      * text = "Headache (my head hurts)"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.1.2"
      * text = "My neck hurts"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.1.3"
      * text = "I don't like bright lights"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.1.4"
      * text = "I don't like loud noises"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.1.0"
      * text = "Total physical score (out of 40)"
      * type = #decimal
      * initial[0].valueDecimal = 0
  * item[+]
    * linkId = "2.2"
    * text = "**Vestibular-ocular:**"
    * type = #group
    * item[0]
      * linkId = "2.2.1"
      * text = "I fell dizzy or like I could be sick"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs    
    * item[+]
      * linkId = "2.2.2"
      * text = "If I close my eyes, I feel like I am at sea"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs    
    * item[+]
      * linkId = "2.2.3"
      * text = "I have trouble with my eyesight (vision)"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs    
    * item[+]
      * linkId = "2.2.4"
      * text = "I feel clumsy (bumping into or dropping things more than usual)"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.2.0"
      * text = "Total vestibular score (out of 40)"
      * type = #decimal
      * initial[0].valueDecimal = 0
  * item[+]
    * linkId = "2.3"
    * type = #group
    * text = "**Cognitive:**"
    * item[0]
      * linkId = "2.3.1"
      * text = "It takes me longer to think"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.3.2"
      * text = "I forget things"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.3.3"
      * text = "I get confused easily"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.3.4"
      * text = "I have trouble concentrating"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.3.0"
      * text = "Total cognitive score (out of 40)"
      * type = #decimal
      * initial[0].valueDecimal = 0
  * item[+]
    * linkId = "2.4"
    * text = "**If more than 24 hours post-injury, please also rate these physical symptoms:**"
    * type = #group
    * item[0]
      * linkId = "2.4.1"
      * text = "I get angry or irritated easily"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.4.2"
      * text = "I just don't feel right"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.4.3"
      * text = "I feel tired during the day"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
    * item[+]
      * linkId = "2.4.4"
      * text = "I need to sleep a lot more or find it hard to sleep at night"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs


* item[+]
  * linkId = "3"
  * text = "Outcomes and Recommendations"
  * type = #group
  * item[0]
    * linkId = "3.1"
    * text = "Total symptom severity score within 24 hours (out of 120)"
    * type = #decimal
    * initial[0].valueDecimal = 0
  * item[+]
    * linkId = "3.1.1"
    * type = #display
    * text = "**If score is 50 or more, consider referral to Concussion Service as this person is likely to be at moderate risk of poor recovery**"
    * enableWhen
      * id = "3.1.0.0"
      * operator = #>
      * question = "3.1"
      * answerDecimal = 50
  * item[+]
    * linkId = "3.1.2"
    * type = #display
    * text = "**If < 50, this person is at low risk, monitor and follow up in 7 - 10 days**"
    * enableWhen
      * id = "3.1.2.0"
      * operator = #<=
      * question = "3.1"
      * answerDecimal = 50
  * item[+]
    * linkId = "3.2"
    * text = "Total symptom severity score > 24 hours (out of 160)"
    * type = #decimal
    * initial[0].valueDecimal = 0
  * item[+]
    * linkId = "3.2.1"
    * type = #display
    * text = "**If score is 66 or more, consider referral to Concussion Service as this person is likely to be at moderate risk of poor recovery**"
    * enableWhen
      * id = "3.2.1.0"
      * operator = #>=
      * question = "3.2"
      * answerDecimal = 66
  * item[+]
    * linkId = "3.2.2"
    * type = #display
    * text = "**If < 66, this person is at low risk, monitor and follow up in 7 - 10 days. If minimal improvement in scores since previous visit, consider referral to Concussion Service**"
    * enableWhen
      * id = "3.2.2.0"
      * operator = #<
      * question = "3.2"
      * answerDecimal = 66
  * item[+]
    * linkId = "3.3"
    * type = #group
    * text = "**Injuries to the brain can affect how a person feels, behaves, thinks, and how able they are to do everyday tasks**\n\nOn a scale of 0 to 10, where 0 means that you do not feel the injury has had any impact on you at all, and 10 means you feel that the injury stops you from doing anything, how much do you feel your injury is impacting on you at this point in time:"
    * item[0]
      * linkId = "3.3.1.0"
      * text = "Impact of injury"
      * type = #choice
      * required = false
      * answerValueSet = $icp-tbi-bist-answeroption-range-vs
