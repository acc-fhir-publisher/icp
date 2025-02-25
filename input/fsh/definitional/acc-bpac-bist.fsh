
Instance: acc-bpac-bist
InstanceOf: Questionnaire
Usage: #definition
Title:          "ACC BIST"
Description:    "Represents the Brain Injury Screening Tool (BIST) for ACC."

* name = "ACC BIST - 20202"
* title = "ACC BIST - 20202"
* status = #active
* publisher = "BPAC"
* jurisdiction.coding = urn:iso:std:iso:3166#NZ
* useContext[0]
  * code = #M1 "Module form"
  * valueCodeableConcept = #M1 "Module form"
* useContext[+]
  * code = #MCF "MCF form"
  * valueCodeableConcept = #MCF "MCF form"
* meta
  * security = $smartcare-module#acc
  * tag[0] = $formbuilder-runtime-version#13.2.1
  * tag[+] = $form-tags#"NZ test 1 release 17/04/24"
  * tag[+] = $formbuilder-editor-version#1.30.0
* extension[0]
  * extension.url = $indexable-data-questionnaire-specialty-condition
  * url = $application-indexable-data
* extension[+]
  * url = $form-data-source
  * valueString = "previous-response"
* extension[+]
  * url = $questionnaire-layout-type
  * valueString = "tabs"
* extension[+]
  * url = $questionnaire-has-been-published
  * valueBoolean = true
* extension[+]
  * extension[0]
    * extension[0]
      * url = "language"
      * valueString = "application/x-fhir-query"
    * extension[+].url = "description"
    * extension[+].url = "variable-condition"
    * extension[+]
      * url = "name"
      * valueString = "Patient"
    * extension[+]
      * url = "expression"
      * valueString = "AccBistPatientDataSourceId"
    * url = $variable
  * extension[+]
    * extension[0]
      * url = "language"
      * valueString = "application/x-fhir-query"
    * extension[+].url = "description"
    * extension[+].url = "variable-condition"
    * extension[+]
      * url = "name"
      * valueString = "Claim"
    * extension[+]
      * url = "expression"
      * valueString = "AccBistClaimDataSourceId"
    * url = $variable
  * extension[+]
    * extension[0]
      * url = "language"
      * valueString = "application/x-fhir-query"
    * extension[+].url = "description"
    * extension[+].url = "variable-condition"
    * extension[+]
      * url = "name"
      * valueString = "Practitioner"
    * extension[+]
      * url = "expression"
      * valueString = "AccBistPractitionerDataSourceId"
    * url = $variable
  * extension[+]
    * extension[0]
      * url = "language"
      * valueString = "application/x-fhir-query"
    * extension[+].url = "description"
    * extension[+].url = "variable-condition"
    * extension[+]
      * url = "name"
      * valueString = "Location"
    * extension[+]
      * url = "expression"
      * valueString = "AccBistLocationDataSourceId"
    * url = $variable
  * url = $variables
* extension[+]
  * extension
    * extension
      * url = $permissions-permission-name
      * valueString = "naViewPerm"
    * url = $permissions-permission
  * url = $permissions

* item[0]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"4de97738-1636-dbe8-8bd5-ed2d1007a220\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "604b88f5-d404-6683-7680-744941147a9a"
  * text = "Claim number"
  * type = #group
  * item
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"a6aaed7b-7ba7-8af0-1ff3-5e25eafce705\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "cfdcec28-1325-a279-2604-4fc29e477d36"
    * text = "ACC Claim numbers"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "875f04a8-2c11-00f7-989a-d2295da80cef"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "1d4765db-8626-cc6d-06d7-e157dd6428db"
        * text = "**Select claim number:**\n\nSelect an existing claim number for this injury, or start a new claim"
        * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#mcf
      * extension[+]
        * url = $mcf-configuration-id
        * valueString = "acc-bist-claim-numbers-table-id"
      * extension[+]
        * url = $mcf-configuration-name
        * valueString = "acc-bist-claim-numbers-table"
      * linkId = "e503f5df-88fa-aa3f-6e6a-3a3c0b663b7c"
      * text = "ACC Claim Numbers"
      * type = #display
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"89d5d5a7-76f1-05b1-a983-37a333d7e8b9\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "dd54effd-cadb-bbd8-26e5-c375a346ae76"
  * text = "Accident details"
  * type = #group
  * item[0]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"d35947ee-73b2-3122-2590-757d7e5a3a54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "477e1544-d220-f793-02b7-ebf79054f367"
    * text = "Time of accident"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#date-picker
      * extension[+]
        * url = $questionnaire-information-date-picker-restriction
        * valueCodeableConcept = $date-picker-restriction#past
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"15564247-5f6c-e649-7fb8-17f1c59a5dd6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"cd767db3-2dde-f47e-a33f-a9f464de5c99\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $datepicker-should-populate-today
        * valueBoolean = false
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Claim.accidentDate"
      * linkId = "d3813771-921e-0d0f-4ff6-851bc880121d"
      * text = "Date of injury"
      * type = #date
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#time-picker
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"d40d0647-52f7-1133-5fec-b0d15077f1b8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ec0699ba-2d38-5270-9409-0663b8c42eec\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Claim.accidentTime"
      * linkId = "3c4b9927-4ebf-8207-c8dc-1d4caf8d28fb"
      * text = "Time of injury"
      * type = #time
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#date-picker
      * extension[+]
        * url = $questionnaire-information-date-picker-restriction
        * valueCodeableConcept = $date-picker-restriction#past
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"940baac0-eb6b-3aef-6558-bd13e8ba3ce0\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $datepicker-should-populate-today
        * valueBoolean = true
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"70c2cd09-b0ef-adc9-28c5-55e5bd7360c4\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "c1e034ae-39dd-66ec-ca03-5cfee995a009"
      * text = "Date of consultation"
      * type = #date
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"13d8341f-4147-688d-d67b-7e4783b9b36b\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"656cf716-6490-ae8b-ee18-244cdf59f6d8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
      * text = "Injury occurred within past 24 hours"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
  * item[+]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"a192bd5e-e189-6f34-533d-274c8f63dd78\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "7c5ad9cf-35c9-791f-ecf8-57471f86fefc"
    * text = "Accident details"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"ff7579da-fc85-3f2f-8b9e-4c43b9fcea76\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"8f90665f-e6c0-3025-ab54-7dbcf615e56a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "b5db59e5-43c5-8668-041e-baa0523702ac"
      * text = "Please tell me about what happened"
      * type = #text
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e2a22903-7eb3-6826-5864-563309a535b9\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"d26734f3-46a2-fe97-7c1c-94f4a4e51d30\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "2480750a-d6fa-2c6e-7fc7-40d2569e938d"
      * text = "Are there high-risk indicators such as suspicion of skull fracture, focal neurological deficit, high speed, focal blunt trauma, or fall from height (e.g., > 5 stairs)"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e2a22903-7eb3-6826-5864-563309a535b9\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"d26734f3-46a2-fe97-7c1c-94f4a4e51d30\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "1099711a-1c5f-cf83-c242-7948add4b7d4"
      * text = "Did the incident occur in traumatic circumstances which could result in emotional or psychological reactions (e.g., assault, domestic violence, fatalities in a car accident)"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6cf29651-a794-7cd2-ee4e-3a3753b6dbab\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"1b634f70-de67-c862-6959-8a6110caa7da\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "20acb126-54c3-e63a-68f8-3b0217792e76"
      * text = "Did anyone with you at the time of injury say anything else about what happened"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"3a5ca16d-6adb-491c-b938-12f5679e3d90\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"aff20f09-ae47-3d03-aed5-68ba7cfea6ca\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "ae27dd88-0cc0-d8dc-9897-a0a6ac340950"
      * text = "Please give details"
      * type = #text
      * enableWhen
        * id = "4779e409-0a3a-01d2-e21f-a2f2a1b26bce"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "20acb126-54c3-e63a-68f8-3b0217792e76"
        * operator = #=
        * answerString = "Yes"
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6cf29651-a794-7cd2-ee4e-3a3753b6dbab\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"a9ea181d-0b87-e526-99d5-3f388cd1dbbc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "07a20c2a-e34b-8d6c-7eb9-cbadaa74aff9"
      * text = "Were you sick or did you vomit"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#number
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueDecimal = 0
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
        * valueInteger = 1
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e756a8d0-f331-a5bd-a017-ddb32ecc29e7\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"e3c7ab65-e2a7-1db6-afed-3af51368ccbe\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "3d561610-f162-ecfb-00e7-56357f4ac2c1"
      * text = "How many times"
      * type = #quantity
      * enableWhen
        * id = "dd902ecb-2030-3199-774e-a7a81910e167"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "07a20c2a-e34b-8d6c-7eb9-cbadaa74aff9"
        * operator = #=
        * answerString = "Yes"
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6cf29651-a794-7cd2-ee4e-3a3753b6dbab\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"f845d631-9ed1-9c28-fc4f-f95854e90330\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "998b3d51-eba5-5101-c3f3-7537a2826580"
      * text = "Were you knocked out (or did you lose consciousness)"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
      * answerOption[+].valueString = "Unknown"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6cf29651-a794-7cd2-ee4e-3a3753b6dbab\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"a1b85901-d747-3b49-310b-cce444e10809\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "06cd326d-1ba8-ea02-d4e3-0f8d724fb5fa"
      * text = "Did you have a fit or seizure straight afterwards (i.e., go stiff or shake violently)"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
      * answerOption[+].valueString = "Unknown"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6cf29651-a794-7cd2-ee4e-3a3753b6dbab\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"d31577bd-d576-13b0-1d7c-aca6a4f8c0b0\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "8d87deb7-8818-f790-d3ce-4902b0b8d95b"
      * text = "Are you feeling better, worse, or about the same since the injury"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Better"
      * answerOption[+].valueString = "Worse"
      * answerOption[+].valueString = "About the same"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6cf29651-a794-7cd2-ee4e-3a3753b6dbab\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"4f4184b9-51e1-6702-49a2-a865ece6c0c7\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "cfd82297-8071-f469-2e79-15191f7554a1"
      * text = "Have you had a concussion or brain injury before"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#number
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueDecimal = 1
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e52208aa-abf3-f883-8b76-efba97d8e98f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"c0d4ee61-7774-0612-610e-6790308f844e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "39bcf1e3-8743-53b8-3d5c-b5830a414943"
      * text = "How many times"
      * type = #quantity
      * enableWhen
        * id = "2e1bb961-fad9-e2a8-558d-344a3293c70f"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "cfd82297-8071-f469-2e79-15191f7554a1"
        * operator = #=
        * answerString = "Yes"
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#date-picker
      * extension[+]
        * url = $questionnaire-information-date-picker-restriction
        * valueCodeableConcept = $date-picker-restriction#past
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"8beb2a44-3f44-f95b-2ac9-7af26d593c8e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"37d8ed9e-09d6-d2b4-dcf7-4cb405199426\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "34d85b59-da5d-e40a-0072-4be01c5e2955"
      * text = "When was the last injury"
      * type = #date
      * enableWhen
        * id = "9e9cc51c-ea4a-4681-a267-567248b7a60f"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "cfd82297-8071-f469-2e79-15191f7554a1"
        * operator = #=
        * answerString = "Yes"
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"d8eaedce-e8ca-0117-dc4a-6f64bec875ad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"6703d905-6dc0-30d8-d028-4d34dd077e49\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "93ffbeb6-acde-7883-b13c-b861139e2a01"
      * text = "Was it a prolonged recovery (> 3 months to recover)"
      * type = #choice
      * enableWhen
        * id = "8399c110-b462-969b-983c-50edd3c2c1a4"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "cfd82297-8071-f469-2e79-15191f7554a1"
        * operator = #=
        * answerString = "Yes"
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6f07909e-3b59-6588-8ae1-b05e8283a584\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"b2a89ab7-a8e9-cb2b-30c1-69be33460052\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "6ec00706-8935-5b2c-e776-71a7abeab973"
      * text = "Are you currently taking any medications that thin the blood e.g., anticoagulants"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6f07909e-3b59-6588-8ae1-b05e8283a584\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2ac56257-4b29-00df-720b-42d52c2db341\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "def327f0-e8b7-c090-36e1-5c2f4f3b01f6"
      * text = "Have you ever experienced difficulties with your mental health"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"6f07909e-3b59-6588-8ae1-b05e8283a584\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"de609de9-9fe0-98f4-75c6-1cbf73088e7d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "24786db5-a459-371a-8e91-078c125d1356"
      * text = "Do you have a history of migraine (severe headache with vomiting or extreme sensitivity to light and sound)"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"b48618e8-5a75-8bde-7d44-123a566ba054\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "1aeefdd3-210f-3edc-fc10-0c488f054611"
  * text = "Symptom scale"
  * type = #group
  * item
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"0655027f-57c4-abae-0160-eafeac21d0de\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "132c4769-39c9-16f2-32c6-47f580c02eca"
    * text = "Symptom scale"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "fbdc70b5-65e9-551f-eac9-ea17e917fc7f"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "9ef37f8a-0eff-68bc-5fcc-2204acd4fa8d"
        * text = "Please ask your patient the following questions:"
        * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#mcf
      * extension[+]
        * url = $mcf-configuration-id
        * valueString = "acc-bist-symptom-scale-header-id"
      * extension[+]
        * url = $mcf-configuration-name
        * valueString = "acc-bist-symptom-scale-header"
      * linkId = "8eba2434-1564-4584-6971-1bcbbcb0e97a"
      * text = "Symptom scale header"
      * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "ad0d0923-8c59-64a4-4353-f866b7568c0b"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "fbdd4438-9826-36df-1cd6-212b2556351a"
        * text = "**Physical:**"
        * type = #display
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "4439ab02-769d-d7c9-04cd-16da25b8d155"
      * text = "Headache (my head hurts)"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"43bdec52-fb46-e964-eef3-14ab35efedd6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "649ee4dd-5c2c-80a5-75ad-576a27d24d8c"
        * text = "Headache (my head hurts)"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "649ee4dd-5c2c-80a5-75ad-576a27d24d8c"
          * url = $questionnaire-linked-total-score-items
        * linkId = "3dc85f1f-5c49-b7aa-f1da-b3a36fb932d2"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "adcc4190-a80e-03be-7dc1-80eb4d6a3aba"
      * text = "My neck hurts"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"5075cd1d-8495-b957-bf8f-41d83aeef393\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "fb296612-8718-7ebf-ceb2-c88fe247d0ae"
        * text = "My neck hurts"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "fb296612-8718-7ebf-ceb2-c88fe247d0ae"
          * url = $questionnaire-linked-total-score-items
        * linkId = "a52fbffc-6c8d-ec0f-78d0-fed570941c47"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "a37f8af0-b6a6-2672-0e50-7fdc442c3818"
      * text = "I don't like bright lights"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"b093ec2b-5b08-7850-c738-5117059a3778\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "fd7a2fb1-057d-a3c6-81ad-46e813a33eda"
        * text = "I don't like bright lights"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "fd7a2fb1-057d-a3c6-81ad-46e813a33eda"
          * url = $questionnaire-linked-total-score-items
        * linkId = "6441b3a7-4394-7a82-ed23-8b21d2a4c90f"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "567f262f-6b77-91cc-bc08-9b699ff792c7"
      * text = "I don't like loud noises"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "98315a2c-010c-a3fb-404d-1ef46f1b76f6"
        * text = "I don't like loud noises"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "98315a2c-010c-a3fb-404d-1ef46f1b76f6"
          * url = $questionnaire-linked-total-score-items
        * linkId = "a21220ee-f70a-ad57-4c4b-aeeb69aeeb25"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#total-score
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * extension[0]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "649ee4dd-5c2c-80a5-75ad-576a27d24d8c"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "fb296612-8718-7ebf-ceb2-c88fe247d0ae"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "fd7a2fb1-057d-a3c6-81ad-46e813a33eda"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "98315a2c-010c-a3fb-404d-1ef46f1b76f6"
        * url = $questionnaire-linked-total-score-items
      * linkId = "52dc63e5-cd45-a3b0-ad32-9e141a83d1cb"
      * text = "Total physical score (out of 40)"
      * type = #decimal
      * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "ac00575b-b239-702e-839c-a0ca36a1cbee"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "4df3a643-9264-8325-c544-33124256d0ba"
        * text = "**Vestibular-ocular:**"
        * type = #display
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "b9e4da41-6665-5f79-a804-560d0f02c47b"
      * text = "I feel dizzy or like I could be sick"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "e4aecd4f-f3f2-c4c5-b73a-91978353c51e"
        * text = "I feel dizzy or like I could be sick"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "e4aecd4f-f3f2-c4c5-b73a-91978353c51e"
          * url = $questionnaire-linked-total-score-items
        * linkId = "9f096e62-7069-b061-32b0-813b125abf70"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "4713c995-deaf-66b9-56fa-becae450f445"
      * text = "If I close my eyes, I feel like I am at sea"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "d60a3770-4327-8ace-acb7-f682ff573dc5"
        * text = "If I close my eyes, I feel like I am at sea"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "d60a3770-4327-8ace-acb7-f682ff573dc5"
          * url = $questionnaire-linked-total-score-items
        * linkId = "eccfd6b5-3b34-51c5-9652-66dc9a7a308a"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "8e86f368-cf1a-e6c9-0651-7dc61931a8fd"
      * text = "I have trouble with my eyesight (vision)"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "a405f89b-aee6-76c3-3274-00a6a64412c9"
        * text = "I have trouble with my eyesight (vision)"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "a405f89b-aee6-76c3-3274-00a6a64412c9"
          * url = $questionnaire-linked-total-score-items
        * linkId = "c8c04df4-58ed-dbd6-4bf7-5434da6b6d9a"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "2957b123-e6be-ef67-6142-643dd5115d42"
      * text = "I feel clumsy (bumping into or dropping things)"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "e990a88e-d6a2-3340-9b60-831eb7647bfd"
        * text = "I feel clumsy (bumping into or dropping things)"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "e990a88e-d6a2-3340-9b60-831eb7647bfd"
          * url = $questionnaire-linked-total-score-items
        * linkId = "6b83c98e-eb9e-17ba-35ab-ca4d8353fc3f"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#total-score
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * extension[0]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "e4aecd4f-f3f2-c4c5-b73a-91978353c51e"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "d60a3770-4327-8ace-acb7-f682ff573dc5"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "a405f89b-aee6-76c3-3274-00a6a64412c9"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "e990a88e-d6a2-3340-9b60-831eb7647bfd"
        * url = $questionnaire-linked-total-score-items
      * linkId = "227e8a8e-83d9-28ac-ce45-f4d8e2b33c8a"
      * text = "Total vestibular score (out of 40)"
      * type = #decimal
      * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "8163f6e7-b45b-bf70-25d5-6a272e54e84d"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "0b219e69-d2c4-30a2-12d3-65663d3b186f"
        * text = "**Cognitive:**"
        * type = #display
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "037d5a09-5803-8191-527f-00d2dc1fc073"
      * text = "It takes me longer to think"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "271beefa-219f-56dc-d065-dc7f9c40b4b0"
        * text = "It takes me longer to think"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "271beefa-219f-56dc-d065-dc7f9c40b4b0"
          * url = $questionnaire-linked-total-score-items
        * linkId = "9499e9b1-e021-f327-3bdc-4498fc9c38b9"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "5ee18372-f4d4-29c5-fc08-65c8a4f28124"
      * text = "I forget things"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "4cd53427-0913-ffb8-09bf-8a85c156169f"
        * text = "I forget things"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "4cd53427-0913-ffb8-09bf-8a85c156169f"
          * url = $questionnaire-linked-total-score-items
        * linkId = "0c1e6c65-1407-1628-28bc-3b9ac5b0c2d1"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "49b8014a-eb00-61f9-97ef-0ef47f182368"
      * text = "I get confused easily"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "24a62b83-3d45-1dc0-660e-4f3559b271b8"
        * text = "I get confused easily"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "24a62b83-3d45-1dc0-660e-4f3559b271b8"
          * url = $questionnaire-linked-total-score-items
        * linkId = "b48f29d8-83ba-d8c9-09ab-b4725c7f339a"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "0a303380-670d-9606-fa9f-0b94f045373b"
      * text = "I have trouble concentrating"
      * type = #group
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "1600c5f8-b5a7-3806-172e-5c79ad3d15df"
        * text = "I have trouble concentrating"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "1600c5f8-b5a7-3806-172e-5c79ad3d15df"
          * url = $questionnaire-linked-total-score-items
        * linkId = "b46b9bbc-b834-5a26-75df-c36cfd3386ef"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#total-score
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * extension[0]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "271beefa-219f-56dc-d065-dc7f9c40b4b0"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "4cd53427-0913-ffb8-09bf-8a85c156169f"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "24a62b83-3d45-1dc0-660e-4f3559b271b8"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "1600c5f8-b5a7-3806-172e-5c79ad3d15df"
        * url = $questionnaire-linked-total-score-items
      * linkId = "110b56eb-3567-b53f-11bd-fcc17197719d"
      * text = "Total cognitive score (out of 40)"
      * type = #decimal
      * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "f09e82f6-5aad-3d70-8ddf-c0a791c83b03"
      * type = #display
      * enableWhen
        * id = "5c04b7a1-4a8b-a1a7-61b1-529faf332025"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "No"
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "89ccdd50-bacc-e3fa-0d54-b98461cb0ec5"
        * text = "**If more than 24 hours post-injury, please also rate these physical symptoms:**"
        * type = #display
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "c8a2f7a2-7282-de64-5756-3cfbaa848300"
      * text = "I get angry or irritated easily"
      * type = #group
      * enableWhen
        * id = "40b334e5-6598-64e5-956b-3c74c5719d33"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "No"
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "a82eb15e-afdc-7037-8201-5d88d50c3f7d"
        * text = "I get angry or irritated easily"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "a82eb15e-afdc-7037-8201-5d88d50c3f7d"
          * url = $questionnaire-linked-total-score-items
        * linkId = "b0324526-62f2-7490-b8d1-328f82f41b98"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "c98564a6-4e8f-957f-9f3b-8de4a9acfff2"
      * text = "I feel restless"
      * type = #group
      * enableWhen
        * id = "732b91ac-572d-5c87-9dab-2a33575c6aa5"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "No"
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "0af296ab-f09e-48d6-85f4-62e230ad8cf0"
        * text = "I feel restless"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "0af296ab-f09e-48d6-85f4-62e230ad8cf0"
          * url = $questionnaire-linked-total-score-items
        * linkId = "ade568fd-9ae0-6681-e1eb-08d1ede38742"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "93477887-a79c-1c45-cd67-25cda52d5099"
      * text = "I feel tired during the day"
      * type = #group
      * enableWhen
        * id = "88f12fb5-43b4-fb7c-2761-1809fb1161e7"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "No"
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "99e2f0a4-ea93-c2df-96f9-a9c3834655ba"
        * text = "I feel tired during the day"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "99e2f0a4-ea93-c2df-96f9-a9c3834655ba"
          * url = $questionnaire-linked-total-score-items
        * linkId = "6e668680-6fc5-3b69-ca29-6df82198e151"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#table-row
      * linkId = "2102c7b6-0490-ba51-2757-7f61f0046d4b"
      * text = "I need to sleep a lot more or find it hard to sleep at night"
      * type = #group
      * enableWhen
        * id = "72c4ac80-a85c-a693-be7f-50a043b9d622"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "No"
      * required = false
      * item[0]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#radio-button
        * extension[+]
          * url = $questionnaire-choiceOrientation
          * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
        * extension[+]
          * url = $layout-columns
          * valueString = "3-columns"
        * extension[+]
          * url = $clearable-text
          * valueString = "Clear selection"
        * extension[+]
          * url = $eligible-when-conditions
          * valueString = "{\"id\":\"2b6ae2e0-a4ec-2c06-53bc-ade791407cad\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $valid-when-conditions
          * valueString = "{\"id\":\"911fe459-2315-3a48-47dc-d1b91b14d27e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
        * extension[+]
          * url = $clearable
          * valueBoolean = false
        * linkId = "d86bdf62-5e16-584b-be3f-0f19956f0a4f"
        * text = "I need to sleep a lot more or find it hard to sleep at night"
        * type = #choice
        * required = true
        * answerOption[0]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 0
          * valueString = "0"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 1
          * valueString = "1"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 2
          * valueString = "2"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 3
          * valueString = "3"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 4
          * valueString = "4"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 5
          * valueString = "5"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 6
          * valueString = "6"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 7
          * valueString = "7"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 8
          * valueString = "8"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 9
          * valueString = "9"
        * answerOption[+]
          * extension
            * url = $questionnaire-ordinalValue
            * valueDecimal = 10
          * valueString = "10"
      * item[+]
        * extension[0]
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#total-score
        * extension[+]
          * url = $questionnaire-hidden
          * valueBoolean = false
        * extension[+]
          * extension
            * url = $questionnaire-linked-total-score-items-items
            * valueString = "d86bdf62-5e16-584b-be3f-0f19956f0a4f"
          * url = $questionnaire-linked-total-score-items
        * linkId = "9033a3d5-f7d6-7262-99da-d9d9c98a4919"
        * text = "Score"
        * type = #decimal
        * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#total-score
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * extension[0]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "a82eb15e-afdc-7037-8201-5d88d50c3f7d"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "0af296ab-f09e-48d6-85f4-62e230ad8cf0"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "99e2f0a4-ea93-c2df-96f9-a9c3834655ba"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "d86bdf62-5e16-584b-be3f-0f19956f0a4f"
        * url = $questionnaire-linked-total-score-items
      * linkId = "80b44067-3ade-b428-fded-ed36667a47fa"
      * text = "Total 24 hour post-injury physical score (out of 40)"
      * type = #decimal
      * enableWhen
        * id = "49fa4e49-a5a5-ecc8-046c-be7143ce2653"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "No"
      * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#total-score
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * extension[0]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "649ee4dd-5c2c-80a5-75ad-576a27d24d8c"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "fb296612-8718-7ebf-ceb2-c88fe247d0ae"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "fd7a2fb1-057d-a3c6-81ad-46e813a33eda"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "98315a2c-010c-a3fb-404d-1ef46f1b76f6"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "e4aecd4f-f3f2-c4c5-b73a-91978353c51e"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "d60a3770-4327-8ace-acb7-f682ff573dc5"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "a405f89b-aee6-76c3-3274-00a6a64412c9"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "e990a88e-d6a2-3340-9b60-831eb7647bfd"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "271beefa-219f-56dc-d065-dc7f9c40b4b0"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "4cd53427-0913-ffb8-09bf-8a85c156169f"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "24a62b83-3d45-1dc0-660e-4f3559b271b8"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "1600c5f8-b5a7-3806-172e-5c79ad3d15df"
        * url = $questionnaire-linked-total-score-items
      * linkId = "6636e6fd-3c79-e6ca-fdd9-023ce1389831"
      * text = "Total symptom severity score (out of 120)"
      * type = #decimal
      * enableWhen
        * id = "f005e449-9f0d-cc38-9968-d256d23a274f"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "Yes"
      * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#total-score
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * extension[0]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "649ee4dd-5c2c-80a5-75ad-576a27d24d8c"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "fb296612-8718-7ebf-ceb2-c88fe247d0ae"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "fd7a2fb1-057d-a3c6-81ad-46e813a33eda"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "98315a2c-010c-a3fb-404d-1ef46f1b76f6"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "e4aecd4f-f3f2-c4c5-b73a-91978353c51e"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "d60a3770-4327-8ace-acb7-f682ff573dc5"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "a405f89b-aee6-76c3-3274-00a6a64412c9"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "e990a88e-d6a2-3340-9b60-831eb7647bfd"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "271beefa-219f-56dc-d065-dc7f9c40b4b0"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "4cd53427-0913-ffb8-09bf-8a85c156169f"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "24a62b83-3d45-1dc0-660e-4f3559b271b8"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "1600c5f8-b5a7-3806-172e-5c79ad3d15df"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "a82eb15e-afdc-7037-8201-5d88d50c3f7d"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "0af296ab-f09e-48d6-85f4-62e230ad8cf0"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "99e2f0a4-ea93-c2df-96f9-a9c3834655ba"
        * extension[+]
          * url = $questionnaire-linked-total-score-items-items
          * valueString = "d86bdf62-5e16-584b-be3f-0f19956f0a4f"
        * url = $questionnaire-linked-total-score-items
      * linkId = "0597f621-3855-fcaf-d7fb-bf42a65f3d2b"
      * text = "Total symptom severity score (out of 160)"
      * type = #decimal
      * enableWhen
        * id = "c41c4ac2-3f33-9603-c5d4-64fe6286fafa"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "No"
      * initial.valueDecimal = 0
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#ruleset-field
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * url = $rules-code
        * valueCode = #BIST
      * extension[+]
        * url = $rules-output-parameter
        * valueString = "endorsed12Score"
      * extension[+]
        * url = $rules-output-type
        * valueString = "number"
      * linkId = "9e494968-dbeb-b5ae-3241-957617a40770"
      * text = "Endorsed (out of 12)"
      * type = #choice
      * enableWhen
        * id = "da1d893c-47ae-cf85-1b98-1aa6c6e32ebb"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "Yes"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#ruleset-field
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * url = $rules-code
        * valueCode = #BIST
      * extension[+]
        * url = $rules-output-parameter
        * valueString = "endorsedTotal"
      * extension[+]
        * url = $rules-output-type
        * valueString = "number"
      * linkId = "2df943f9-307c-5b05-d7a2-cd619fd016bf"
      * text = "Endorsed (out of 16)"
      * type = #choice
      * enableWhen
        * id = "f1586085-de2c-0b98-20b4-54dfbfa99594"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "81927019-006c-7ae6-fcfa-e3242c8e75c4"
        * operator = #=
        * answerString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#ruleset-field
      * extension[+]
        * url = $questionnaire-hidden
        * valueBoolean = false
      * extension[+]
        * url = $rules-code
        * valueCode = #BIST
      * extension[+]
        * url = $rules-output-parameter
        * valueString = "dominantGroup"
      * extension[+]
        * url = $rules-output-type
        * valueString = "string"
      * linkId = "33b59517-b4e4-f5f0-3c4a-af379c1edc50"
      * text = "Dominant group description"
      * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#readonly-text
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = "http://fhir.bestpractice.org.nz/fhir/StructureDefinition/data-overridable"
    * valueBoolean = false
  * extension[+]
    * url = "http://fhir.bestpractice.org.nz/fhir/StructureDefinition/questionnaire-selected-external-data-item"
    * valueString = "age"
  * linkId = "74d94b9d-400f-9db9-e402-81b12e4e232b"
  * text = "Age"
  * type = #string
  * required = false
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"80b60a51-5585-376b-a8c8-753714218e75\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "4d60e31a-0a1b-6e98-b839-a6be125f2102"
  * text = "Impact score"
  * type = #group
  * item
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"5509b580-ab16-589e-8515-54697a852e71\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "b09fab7d-e83b-daa4-d54d-2bc5c3ed5323"
    * text = "Impact score"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "a526292e-c1fa-519e-cdbc-e4baa70300b1"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "466b8272-2890-517b-fcf6-fafe1ee701b0"
        * text = "**Injuries to the brain can affect how a person feels, behaves, thinks, and how able they are to do everyday tasks**\n\nOn a scale of 0 to 10, where 0 means that you do not feel the injury has had any impact on you at all, and 10 means you feel that the injury stops you from doing anything, how much do you feel your injury is impacting on you at this point in time:"
        * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal-equal-space
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"55d2e575-67bf-8883-b320-0afa23059517\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2d1bf9fe-895c-c264-cb9f-1f7e934e49d5\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * linkId = "8d17b21e-00c0-33d2-ea4e-a0c9647ae75c"
      * text = "Impact of injury"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "0"
      * answerOption[+].valueString = "1"
      * answerOption[+].valueString = "2"
      * answerOption[+].valueString = "3"
      * answerOption[+].valueString = "4"
      * answerOption[+].valueString = "5"
      * answerOption[+].valueString = "6"
      * answerOption[+].valueString = "7"
      * answerOption[+].valueString = "8"
      * answerOption[+].valueString = "9"
      * answerOption[+].valueString = "10"
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"bb0742ab-355f-f6c6-e7bb-0330f8ba3713\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "1b1463e7-8f79-b112-78b5-63562c718543"
  * text = "Physical examination"
  * type = #group
  * item
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"90980113-f892-b9fa-4c23-7682445353da\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "405a02b2-09bd-ac7b-1bbf-973bcbffd5fe"
    * text = "Physical examination"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e7167e52-8e43-2fe7-95f5-a54360a141c0\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Note base of skull fracture:\n* haemotympanum\n* bruising behind the ear\n* rhinorrhoea"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"34453013-41f9-ef64-a510-5fe19091792a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "55a9d3e3-5d84-dd47-8002-e46fc831b2c6"
      * text = "Evidence of skull fracture"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"0bfa9aa4-2ff2-a82e-19b2-e7cd8090a224\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ce0a1dc1-2804-104f-f138-0bbee91f252a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "27586f48-90c5-8b80-f957-79d34b4651c6"
      * text = "Please give details"
      * type = #text
      * enableWhen
        * id = "9d453839-e8bb-4d0e-9574-30980bb08c91"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "55a9d3e3-5d84-dd47-8002-e46fc831b2c6"
        * operator = #=
        * answerString = "Yes"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"1e5f3ccf-e1e7-bfb6-25a7-cd5a179474e8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "E.g., spinal, other fractures, dental, and abdominal injuries"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"bbc0d0d7-a1df-9f69-fbdd-0f6a03df4ca8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "cf456c31-0550-718f-7e96-66d1baada245"
      * text = "Other significant injuries"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"0bfa9aa4-2ff2-a82e-19b2-e7cd8090a224\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ce0a1dc1-2804-104f-f138-0bbee91f252a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "115d0341-637a-684e-c05e-d72b51451970"
      * text = "Please give details"
      * type = #text
      * enableWhen
        * id = "9d453839-e8bb-4d0e-9574-30980bb08c91"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "cf456c31-0550-718f-7e96-66d1baada245"
        * operator = #=
        * answerString = "Yes"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "7a8f25dd-04eb-f4b4-b2fb-98dba3fb1fbb"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "1bfe283c-c3e7-45dd-7ccf-fbf53db6838d"
        * text = "**Neurological examination:**"
        * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"08e0ed4f-da82-82a0-c035-7c0d359d4177\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"08f15825-e922-0f79-607c-bdcbff32c37d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "33352cf0-53bf-13ac-5268-954008b0be2e"
      * text = "Abnormality of gait"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"0bfa9aa4-2ff2-a82e-19b2-e7cd8090a224\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ce0a1dc1-2804-104f-f138-0bbee91f252a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "1f31017d-f306-4554-7e07-040f1bfa4b32"
      * text = "Please give details"
      * type = #text
      * enableWhen
        * id = "9d453839-e8bb-4d0e-9574-30980bb08c91"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "33352cf0-53bf-13ac-5268-954008b0be2e"
        * operator = #=
        * answerString = "Yes"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "f2511f67-e620-368b-3352-64336c7e404f"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "b14e105b-b005-6e34-7d8e-0bb9f8cd76b1"
        * text = "**Upper limb:**"
        * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e2a93418-b995-3967-dd57-7fc272811f80\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"81307636-23ef-3fc9-3410-c1262dcb6317\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "6eb239a3-b5ea-f46b-939b-165004089b4a"
      * text = "Upper limb tone"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Hypotonia"
      * answerOption[+].valueString = "Hypertonia"
      * answerOption[+].valueString = "Normal tone"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "035c6086-4399-9f86-9f30-acb5ed4400fa"
      * text = "Side"
      * type = #choice
      * enableWhen[0]
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "6eb239a3-b5ea-f46b-939b-165004089b4a"
        * operator = #=
        * answerString = "Hypotonia"
      * enableWhen[+]
        * id = "5f86c3c2-f934-ae63-f978-deb99235e9d3"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "6eb239a3-b5ea-f46b-939b-165004089b4a"
        * operator = #=
        * answerString = "Hypertonia"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e2a93418-b995-3967-dd57-7fc272811f80\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"81307636-23ef-3fc9-3410-c1262dcb6317\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "58f714e9-0c9c-79ef-0a49-2b624172ad89"
      * text = "Upper limb power"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Reduced"
      * answerOption[+].valueString = "Normal power"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "fd4ba90f-0c51-f38f-8408-994ecc62f87b"
      * text = "Side"
      * type = #choice
      * enableWhen
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "58f714e9-0c9c-79ef-0a49-2b624172ad89"
        * operator = #=
        * answerString = "Reduced"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#check-box
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"3f42db71-1848-3253-4bee-ce8cc898231f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"85ae356a-110d-d289-7aad-4599cccb3996\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "913bfe12-4ff4-8dd7-4c8b-ad28f81e1ea5"
      * text = "Upper limb sensation"
      * type = #choice
      * required = false
      * answerOption[0]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Altered fine touch"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Altered pain/sharp sensation"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = true
        * valueString = "Normal sensation"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "0375054b-7126-ea8b-13df-86c8317b6291"
      * text = "Side"
      * type = #choice
      * enableWhen[0]
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "913bfe12-4ff4-8dd7-4c8b-ad28f81e1ea5"
        * operator = #=
        * answerString = "Altered fine touch"
      * enableWhen[+]
        * id = "6f3fd40d-0d79-4f30-8576-d91ffe78adb0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "913bfe12-4ff4-8dd7-4c8b-ad28f81e1ea5"
        * operator = #=
        * answerString = "Altered pain/sharp sensation"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"03771e68-0ca4-f72d-6edd-645598656cf5\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"25100ea8-200a-2712-cb8e-bd212c1ec3c9\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "20804cc5-8e38-e8d5-3215-435d7ba8ed1e"
      * text = "Upper limb reflexes normal"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#check-box
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"88b0ca40-89c3-ddcb-95fe-5ca2438f838c\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2498d903-0a11-1a59-d0a0-06cf28980096\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "fbe5d8c4-8d88-62bc-7cdd-ace891a76597"
      * text = "Reflexes tested"
      * type = #choice
      * enableWhen
        * id = "c823c6d5-2f46-9715-a855-ce7312e42366"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "20804cc5-8e38-e8d5-3215-435d7ba8ed1e"
        * operator = #=
        * answerString = "No"
      * required = false
      * answerOption[0]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "L. Brachioradialis"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "L. Deltoid"
      * answerOption[+].valueString = "L. Biceps"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "R. Brachioradialis"
      * answerOption[+].valueString = "R. Deltoid"
      * answerOption[+].valueString = "R. Biceps"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e58e7937-8fd0-5dc1-adb3-d8adc78e8ae3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"4be9c9a4-ec41-78f9-f1cd-b63148218560\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "3357cbda-4506-68b4-8cc1-ee9bd6b952c1"
      * text = "Please state abnormality"
      * type = #string
      * enableWhen
        * id = "6685ea8b-27bd-44fa-06a0-77c1e946e600"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "20804cc5-8e38-e8d5-3215-435d7ba8ed1e"
        * operator = #=
        * answerString = "No"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"90f0fc69-d902-405f-b2d0-a57c9177dbbd\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"274e3b82-310a-47ea-c570-457480be2fa3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "5a9b42b6-a12d-7baf-dc05-04a300b21aac"
      * text = "Upper limb vibration sense"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Intact"
      * answerOption[+].valueString = "Abnormal (reduced)"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "88114e19-a1b2-0485-8a24-9ced2a78a032"
      * text = "Side"
      * type = #choice
      * enableWhen
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "5a9b42b6-a12d-7baf-dc05-04a300b21aac"
        * operator = #=
        * answerString = "Abnormal (reduced)"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"90f0fc69-d902-405f-b2d0-a57c9177dbbd\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"274e3b82-310a-47ea-c570-457480be2fa3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "85c86289-5170-f4bf-c8ac-2e92e93bd5f3"
      * text = "Upper limb joint position sense"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Intact"
      * answerOption[+].valueString = "Abnormal (reduced)"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "01313e25-2aa6-a3e2-4c8e-96cbe949da0b"
      * text = "Side"
      * type = #choice
      * enableWhen
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "85c86289-5170-f4bf-c8ac-2e92e93bd5f3"
        * operator = #=
        * answerString = "Abnormal (reduced)"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "501ad295-81cf-aef5-3c14-b128feb04a4a"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "d9874ede-7361-deff-baf5-869fb6d1411b"
        * text = "**Lower limb:**"
        * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e2a93418-b995-3967-dd57-7fc272811f80\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"81307636-23ef-3fc9-3410-c1262dcb6317\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "172fc4f0-9e70-a5e8-8e2b-287a57c75f7e"
      * text = "Lower limb tone"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Hypotonia"
      * answerOption[+].valueString = "Hypertonia"
      * answerOption[+].valueString = "Normal tone"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "4d1e47cc-5720-f4f2-d4d2-83e50e522896"
      * text = "Side"
      * type = #choice
      * enableWhen[0]
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "172fc4f0-9e70-a5e8-8e2b-287a57c75f7e"
        * operator = #=
        * answerString = "Hypotonia"
      * enableWhen[+]
        * id = "5f86c3c2-f934-ae63-f978-deb99235e9d3"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "172fc4f0-9e70-a5e8-8e2b-287a57c75f7e"
        * operator = #=
        * answerString = "Hypertonia"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e2a93418-b995-3967-dd57-7fc272811f80\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"81307636-23ef-3fc9-3410-c1262dcb6317\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "7ab9f7ed-5903-3a55-cdc8-a9240afffa27"
      * text = "Lower limb power"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Reduced"
      * answerOption[+].valueString = "Normal"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "7582cbd7-4c5c-58f1-4a60-ed34895a5375"
      * text = "Side"
      * type = #choice
      * enableWhen
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "7ab9f7ed-5903-3a55-cdc8-a9240afffa27"
        * operator = #=
        * answerString = "Reduced"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#check-box
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"3f42db71-1848-3253-4bee-ce8cc898231f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"85ae356a-110d-d289-7aad-4599cccb3996\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "f266288d-32e3-a594-c721-58e35df6a501"
      * text = "Lower limb sensation"
      * type = #choice
      * required = false
      * answerOption[0]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Altered fine touch"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Altered pain/sharp sensation"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = true
        * valueString = "Normal sensation"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "bb401fd2-e8fd-cebb-6592-4e6ad6d6f16a"
      * text = "Side"
      * type = #choice
      * enableWhen[0]
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "f266288d-32e3-a594-c721-58e35df6a501"
        * operator = #=
        * answerString = "Altered fine touch"
      * enableWhen[+]
        * id = "6f3fd40d-0d79-4f30-8576-d91ffe78adb0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "f266288d-32e3-a594-c721-58e35df6a501"
        * operator = #=
        * answerString = "Altered pain/sharp sensation"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"03771e68-0ca4-f72d-6edd-645598656cf5\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"25100ea8-200a-2712-cb8e-bd212c1ec3c9\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "67c8a150-a80d-cafc-c8f2-ef6577e6ed7d"
      * text = "Lower limb reflexes normal"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#check-box
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"88b0ca40-89c3-ddcb-95fe-5ca2438f838c\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2498d903-0a11-1a59-d0a0-06cf28980096\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "548d723c-dc92-af49-1900-ff0d913511b4"
      * text = "Reflexes tested"
      * type = #choice
      * enableWhen
        * id = "c823c6d5-2f46-9715-a855-ce7312e42366"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "67c8a150-a80d-cafc-c8f2-ef6577e6ed7d"
        * operator = #=
        * answerString = "No"
      * required = false
      * answerOption[0]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "L. Knee"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "L. Ankle"
      * answerOption[+].valueString = "L. Plantar"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "R. Knee"
      * answerOption[+].valueString = "R. Ankle"
      * answerOption[+].valueString = "R. Plantar"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e58e7937-8fd0-5dc1-adb3-d8adc78e8ae3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"4be9c9a4-ec41-78f9-f1cd-b63148218560\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "21ae8e6e-52b7-057a-f42d-136320d08140"
      * text = "Please state abnormality"
      * type = #string
      * enableWhen
        * id = "6685ea8b-27bd-44fa-06a0-77c1e946e600"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "67c8a150-a80d-cafc-c8f2-ef6577e6ed7d"
        * operator = #=
        * answerString = "No"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"90f0fc69-d902-405f-b2d0-a57c9177dbbd\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"274e3b82-310a-47ea-c570-457480be2fa3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "dd9edad2-21a4-e031-d083-ea775a298eb4"
      * text = "Lower limb vibration sense"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Intact"
      * answerOption[+].valueString = "Abnormal (reduced)"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "39cb1de0-493c-5b69-eeed-b30e32a08715"
      * text = "Side"
      * type = #choice
      * enableWhen
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "dd9edad2-21a4-e031-d083-ea775a298eb4"
        * operator = #=
        * answerString = "Abnormal (reduced)"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"90f0fc69-d902-405f-b2d0-a57c9177dbbd\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"274e3b82-310a-47ea-c570-457480be2fa3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "c4ec6154-56a0-d915-be83-0bf3a2e1370e"
      * text = "Lower limb joint position sense"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Intact"
      * answerOption[+].valueString = "Abnormal (reduced)"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "1e4af20b-6767-6d0e-690f-6c81ec8816ac"
      * text = "Side"
      * type = #choice
      * enableWhen
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "c4ec6154-56a0-d915-be83-0bf3a2e1370e"
        * operator = #=
        * answerString = "Abnormal (reduced)"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "32c17d53-f413-0a0a-9806-cfb00724a782"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "89ea47d6-eaa5-4b34-97c8-ce9fdb2e1c1f"
        * text = "**Coordination:**"
        * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"8f4617b0-7702-a761-4aaa-76217a3cb1f6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"6a1cd6d9-1858-9f42-9e6b-c80b1c6f7eb0\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "99d5df32-a4ac-9a4a-c4a4-85071a26b450"
      * text = "Coordination normal"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"b47501cb-9a56-34b7-6193-6ec9def2a017\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"a1fd0675-2b73-1b6b-f6da-613fefc9dde9\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "b106bc52-d1b7-09b4-bc32-5b7eb9ba1506"
      * text = "Coordination deficit"
      * type = #choice
      * enableWhen
        * id = "3afa5ff7-9c9e-4222-b001-842589e56639"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "99d5df32-a4ac-9a4a-c4a4-85071a26b450"
        * operator = #=
        * answerString = "No"
      * required = false
      * answerOption[0].valueString = "Upper limbs"
      * answerOption[+].valueString = "Lower limbs"
      * answerOption[+].valueString = "Upper and lower limbs"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#horizontal
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f42a9c10-87aa-8f8b-3cb7-1d99436b38d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"2bb11e0a-6f54-abbc-e0e7-6c80abfebacc\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "fdd9c39b-6de2-9416-b453-2b0d7488f1da"
      * text = "Side"
      * type = #choice
      * enableWhen
        * id = "3165d029-463c-9df4-6958-5c467aecc9e0"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "99d5df32-a4ac-9a4a-c4a4-85071a26b450"
        * operator = #=
        * answerString = "No"
      * required = false
      * answerOption[0].valueString = "Left"
      * answerOption[+].valueString = "Right"
      * answerOption[+].valueString = "Bilateral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"bd0802be-77bb-6296-2854-f772c062ead2\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"be90f447-9231-e0d9-2e7d-258c50fda72c\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "E,g., tests carried out and results"
      * linkId = "dc09fdb2-5546-b3d7-c528-158b0a3482ab"
      * text = "Please give details"
      * type = #text
      * enableWhen
        * id = "6b82920e-5997-d451-03fc-1e5bb40ce45a"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "99d5df32-a4ac-9a4a-c4a4-85071a26b450"
        * operator = #=
        * answerString = "No"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#inline
      * linkId = "da44c1da-25e3-3768-2dba-f67543461e9d"
      * type = #display
      * item
        * extension
          * url = $questionnaire-itemControl
          * valueCodeableConcept = $questionnaire-item-control#inline
        * linkId = "c8399e97-4394-32cb-cc7d-f0a6230d78da"
        * text = "**Cranial nerves:**"
        * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"dd1fa74f-2298-ccfc-2b2b-f8c04012c768\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"5ea7a0b0-b5cd-2ca0-c651-930372dd7484\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "c2859a5e-6057-5ac4-55d7-124340313f1a"
      * text = "Cranial nerves tested"
      * type = #choice
      * required = false
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"dd1fa74f-2298-ccfc-2b2b-f8c04012c768\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"5ea7a0b0-b5cd-2ca0-c651-930372dd7484\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "7784e363-b9b3-c164-119d-9e5b6c67928f"
      * text = "Cranial nerve deficit"
      * type = #choice
      * enableWhen
        * id = "618fd2d0-a40a-f05d-824b-5742e92b18ea"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "c2859a5e-6057-5ac4-55d7-124340313f1a"
        * operator = #=
        * answerString = "Yes"
      * required = false
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#check-box
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#vertical
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"57f3def5-fe83-1cd6-639c-3f11e55f49f1\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"dc9d05c8-6854-ddf1-6b5b-6fa1bda72dbb\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "842189ca-f322-497e-25c6-334bedd6a765"
      * text = "Cranial nerve deficit(s)"
      * type = #choice
      * enableWhen
        * id = "66e703ac-0cf5-61d2-ac43-b9cbbe58b4ee"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "7784e363-b9b3-c164-119d-9e5b6c67928f"
        * operator = #=
        * answerString = "Yes"
      * required = false
      * answerOption[0]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "CN I (olfactory)"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "CN II (optic)"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "CN III, IV, VI (oculomotor, trochlear, abducens)"
      * answerOption[+].valueString = "CN V (trigeminal)"
      * answerOption[+].valueString = "CN VII (facial)"
      * answerOption[+].valueString = "CN VIII (vestibulocochlear)"
      * answerOption[+].valueString = "CN IX, X, XII (glossopharyngeal, vagus, hypoglossal"
      * answerOption[+].valueString = "CN XI (spinal accessory)"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"99aeca40-4ced-49cb-c3cf-c2a583ba5d54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Including which side has reduced sense of smell"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ba413dc4-28bb-80f8-6edc-219404b52b2d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "9b2cebd4-7066-a1d8-21a9-697769b57e7e"
      * text = "CN I deficit"
      * type = #text
      * enableWhen
        * id = "2e6ead26-d2ff-1aa9-406c-198e250d4e36"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "842189ca-f322-497e-25c6-334bedd6a765"
        * operator = #=
        * answerString = "CN I (olfactory)"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"99aeca40-4ced-49cb-c3cf-c2a583ba5d54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Visual acuity, visual fields, fundoscopy"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ba413dc4-28bb-80f8-6edc-219404b52b2d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "6afe1fc8-f152-6b4c-db60-17160fc4c66f"
      * text = "CN II deficit"
      * type = #text
      * enableWhen
        * id = "2e6ead26-d2ff-1aa9-406c-198e250d4e36"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "842189ca-f322-497e-25c6-334bedd6a765"
        * operator = #=
        * answerString = "CN II (optic)"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"99aeca40-4ced-49cb-c3cf-c2a583ba5d54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Pupil size, ptosis, strabismus, eye movements, pupillary reflexes (light and accommodation)"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ba413dc4-28bb-80f8-6edc-219404b52b2d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "13e87fed-4eb7-b703-27da-373126691be4"
      * text = "CN III, IV, VI deficit"
      * type = #text
      * enableWhen
        * id = "2e6ead26-d2ff-1aa9-406c-198e250d4e36"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "842189ca-f322-497e-25c6-334bedd6a765"
        * operator = #=
        * answerString = "CN III, IV, VI (oculomotor, trochlear, abducens)"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"99aeca40-4ced-49cb-c3cf-c2a583ba5d54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Sensation (all three divisions), corneal reflex, motor function, jaw jerk"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ba413dc4-28bb-80f8-6edc-219404b52b2d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "e4b7bd2e-18c5-bc59-db1e-14f188cba0a0"
      * text = "CN V deficit"
      * type = #text
      * enableWhen
        * id = "2e6ead26-d2ff-1aa9-406c-198e250d4e36"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "842189ca-f322-497e-25c6-334bedd6a765"
        * operator = #=
        * answerString = "CN V (trigeminal)"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"99aeca40-4ced-49cb-c3cf-c2a583ba5d54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Facial movements"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ba413dc4-28bb-80f8-6edc-219404b52b2d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "a97e8d83-afcd-d99f-3aac-50c0363ce087"
      * text = "CN VII deficit"
      * type = #text
      * enableWhen
        * id = "2e6ead26-d2ff-1aa9-406c-198e250d4e36"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "842189ca-f322-497e-25c6-334bedd6a765"
        * operator = #=
        * answerString = "CN VII (facial)"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"99aeca40-4ced-49cb-c3cf-c2a583ba5d54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Whisper test, Rhinne and Weber's tests"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ba413dc4-28bb-80f8-6edc-219404b52b2d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "1c0d69f1-316c-d2d6-34fa-34c6fbede8f8"
      * text = "CN VIII deficit"
      * type = #text
      * enableWhen
        * id = "2e6ead26-d2ff-1aa9-406c-198e250d4e36"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "842189ca-f322-497e-25c6-334bedd6a765"
        * operator = #=
        * answerString = "CN VIII (vestibulocochlear)"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"99aeca40-4ced-49cb-c3cf-c2a583ba5d54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Cough, speech/articulation, uvular movement, gag reflex, appearance and movements of tongue"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ba413dc4-28bb-80f8-6edc-219404b52b2d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "6fc6f331-69d8-fc06-27d0-c081061e021e"
      * text = "CN IX, X, XII deficit"
      * type = #text
      * enableWhen
        * id = "2e6ead26-d2ff-1aa9-406c-198e250d4e36"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "842189ca-f322-497e-25c6-334bedd6a765"
        * operator = #=
        * answerString = "CN IX, X, XII (glossopharyngeal, vagus, hypoglossal"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"92b12ba1-06f5-5591-0e6b-86f398112919\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $questionnaire-information-hover
        * valueString = "Sternocleidomastoid and trapezius"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"bcf6a5a1-2da6-ccc3-8852-0e6c60386f75\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "7240730c-1fd5-622b-dd8b-351240806889"
      * text = "CN XI"
      * type = #text
      * enableWhen
        * id = "3cfc2c6e-5132-e9b6-f84b-398a3c4abd5d"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "842189ca-f322-497e-25c6-334bedd6a765"
        * operator = #=
        * answerString = "CN XI (spinal accessory)"
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"99aeca40-4ced-49cb-c3cf-c2a583ba5d54\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"783a0b80-6db1-f8f4-c7e4-e657ce6554e8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "04139f55-b235-2441-76e6-bab2040eb888"
      * text = "Other comments on physical examination"
      * type = #text
      * required = false
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"73fe8f54-ad4a-6746-285e-dc0c669efae4\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "29fac8b1-960d-86c0-1037-9a0e18668b32"
  * text = "Decision"
  * type = #group
  * item[0]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"fa21046b-e252-b8ee-3686-fa4fa00a7ef1\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "77742a37-f115-f6a5-f351-9072e3c76084"
    * text = "Diagnosis"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f2ba44ab-570a-208c-70d8-7d7920712e0d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"4af5140d-2266-f498-1673-305f0764901a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "709fe161-2597-35bf-1056-eb57c06e3a09"
      * text = "Do you consider this patient to have a diagnosis of concussion"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
      * answerOption[+].valueString = "Unsure"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"cf02fbe2-518b-6f18-bf72-9d7278796900\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"5bc11896-a743-173d-e8de-52532fb67725\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "722337cb-b4a5-76a6-271a-a0a74b641bef"
      * text = "Has this patient recovered from the concussion"
      * type = #choice
      * enableWhen
        * id = "95c13bbc-deb0-675f-ca64-4020e83924cb"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "709fe161-2597-35bf-1056-eb57c06e3a09"
        * operator = #=
        * answerString = "Yes"
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
  * item[+]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"b999b603-6189-cf7c-9b66-276f1327ab2a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "c40f9751-737e-66e7-b7aa-033762edd32e"
    * text = "Decision to refer"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#button-bar
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"81bbbd97-8154-3100-7e86-6cee23e6d32c\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"92ebafa3-3875-1b1d-3ad3-760601bd4485\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "76485f80-eaf4-85d2-a8a5-7cd5fb84001a"
      * text = "Do you feel a referral to the emergency department is appropriate"
      * type = #choice
      * enableWhen
        * id = "9aafa909-77c9-b883-0c33-2564a8e3d04f"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "a51231eb-4df8-790b-c972-07f38c904098"
        * operator = #=
        * answerBoolean = true
      * required = true
      * answerOption[0].valueString = "Yes"
      * answerOption[+].valueString = "No"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#check-box
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#vertical
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"df180087-68b4-0512-5e94-5087fc5c81e2\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"f2121bbc-6e1c-39d3-a7f6-ce7a2136a9c6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "0b5fbd16-bc77-7b01-6808-f4ec6dfaa868"
      * text = "Do you intend to create a referral based on this assessment"
      * type = #choice
      * required = true
      * answerOption[0]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Emergency department"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Concussion services"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Vestibular physiotherapist"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Other"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = true
        * valueString = "No referral"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"f15aedee-10d2-5970-124d-50ac6c550608\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"336fb2c2-eb7b-8d05-0e3b-738a32c392c8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "c2e2a26e-5fb9-ff78-aac6-36f03ed16acc"
      * text = "Please state other referral"
      * type = #string
      * enableWhen
        * id = "5ecc1156-e1e3-dd65-ada5-1326b94926e7"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "0b5fbd16-bc77-7b01-6808-f4ec6dfaa868"
        * operator = #=
        * answerString = "Other"
      * required = true
  * item[+]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"0376bfa5-6b51-e155-e37d-3e6171b7d6d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "61750ed9-71a7-74a4-e705-ae70b73f2523"
    * text = "Comments"
    * type = #group
    * item
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-area
      * extension[+]
        * url = $rows
        * valueInteger = 4
      * extension[+]
        * url = $max-rows
        * valueInteger = 16
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"af21865c-cecb-3335-5947-729804c09ab3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"29b8c863-4564-9998-c0d4-ac9de2464882\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "bd14c97d-4241-a996-dcef-e2404225b5e2"
      * text = "Additional comments from the current appointment"
      * type = #text
      * required = false
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"51daa4fe-642c-536d-672b-323421a1c8b8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "a620be23-57c7-3c2e-4e89-98bd94b4e8ef"
  * text = "BIST progress"
  * type = #group
  * item[0]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"842889f9-d710-d22d-a17a-7b942d62729b\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "97fb5b6c-b9c4-3469-9b18-f62da19796d6"
    * text = "Assessment progress"
    * type = #group
    * item
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#mcf
      * extension[+]
        * url = $mcf-configuration-id
        * valueString = "acc-bist-progress-tab-view-id"
      * extension[+]
        * url = $mcf-configuration-name
        * valueString = "acc-bist-progress-tab-view"
      * linkId = "c788967c-7847-1508-a526-81a55a48e3b5"
      * text = "BIST progress tab view"
      * type = #display
  * item[+]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"d215ad38-d902-ce8d-4619-f100ad544e11\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "3028723c-8190-7832-d227-1f455404b348"
    * text = "Comments"
    * type = #group
    * item
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#mcf
      * extension[+]
        * url = $mcf-configuration-id
        * valueString = "acc-bist-progress-comments-table-id"
      * extension[+]
        * url = $mcf-configuration-name
        * valueString = "acc-bist-progress-comments-table"
      * linkId = "b6126f1b-33b8-c374-6213-8f7c9b1b5f64"
      * text = "BIST comments table"
      * type = #display
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"e7183adc-3b10-c211-e449-a09c17f53c67\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "667e2cac-32f4-6899-1d30-174a695257b4"
  * text = "Education"
  * type = #group
  * item
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"83116c36-1a1b-c66c-c0c9-3c87a11c5317\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "ab7a1936-260b-45f3-c860-981808a17100"
    * text = "Education content"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#check-box
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#vertical
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"3a1cf5e1-cb86-c025-b8f9-1c1685d1d8f9\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"b0e05e1a-8223-7e3e-dea7-d655158ddf7b\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "2984c8bc-5620-e8f9-4025-6bbba0920d37"
      * text = "Send educational content to:"
      * type = #choice
      * required = true
      * answerOption[0]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Email"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Mobile"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Hard copy provided"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = true
        * valueString = "Not supplied"
    * item[+]
      * extension[0]
        * url = $questionnaire-information-form-only
        * valueBoolean = true
      * extension[+]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#message-box
      * linkId = "9af0aecb-e6ec-5dfd-6629-877fdfedf2a1"
      * text = "Education content has been provided. You can select an option below to resend"
      * type = #display
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#check-box
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#vertical
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"dd8220f9-364b-4516-d1c0-9e379dfbd384\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ad2390e1-1ab3-98f3-50ec-8bec4c86dd3f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "a4a6c194-69b2-0195-659f-2bb554941d81"
      * text = "Send educational content to:"
      * type = #choice
      * required = false
      * answerOption[0]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Email"
      * answerOption[+]
        * extension
          * url = $none-of-the-above
          * valueBoolean = false
        * valueString = "Mobile"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"adfc4638-33fe-f9c4-2689-6db8b3b48763\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"d4227d44-e7a1-99b3-b3df-496795651775\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "048ed550-b543-49af-d925-d852f41e3adc"
      * text = "Email"
      * type = #string
      * enableWhen[0]
        * id = "dcb08833-0873-65d2-afa7-c30ace4c8ee5"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "2984c8bc-5620-e8f9-4025-6bbba0920d37"
        * operator = #=
        * answerString = "Email"
      * enableWhen[+]
        * id = "258b3720-6463-e816-901a-24297c9a016d"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "a4a6c194-69b2-0195-659f-2bb554941d81"
        * operator = #=
        * answerString = "Email"
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#number
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"bddb1a6b-c5c1-cfc1-23e3-c195e1e55afe\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"a9c88af6-53f3-f875-afa7-9b0577885f71\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "bd3dcaae-13f2-b6e4-7b39-feec105a5367"
      * text = "Mobile"
      * type = #quantity
      * enableWhen[0]
        * id = "74cb0165-4a45-48ce-ac6f-5fdcaa74aa74"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "2984c8bc-5620-e8f9-4025-6bbba0920d37"
        * operator = #=
        * answerString = "Mobile"
      * enableWhen[+]
        * id = "0209fbd1-e8bf-d805-e109-90e49440247d"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "a4a6c194-69b2-0195-659f-2bb554941d81"
        * operator = #=
        * answerString = "Mobile"
      * required = true
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"bb4f2957-b2f2-e5e3-6d26-3e0373f0093f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "2dc32449-f70e-4c46-f576-a09faebda094"
  * text = "Patient details"
  * type = #group
  * item[0]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"a1a9da68-292e-9823-77f1-f77d2659d268\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "263e0594-c466-5c7b-a584-f7af1a289142"
    * text = "Patient details"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"9d6050b7-7098-2047-e4fc-ea3164baaa0f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"e5f979ad-8ec4-0da5-68b9-7180ae8e1ff9\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.firstName"
      * extension[+]
        * extension
          * extension
            * url = $naViewPerm
            * valueString = "naViewPerm"
          * url = $access-level-view
        * url = $access-level
      * linkId = "03e36387-b872-1a4e-eb0c-48a53a979f9e"
      * text = "First name"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"9d6050b7-7098-2047-e4fc-ea3164baaa0f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ccf25291-a6e0-ea8e-527a-23a5f9bf3b1f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.lastName"
      * extension[+]
        * extension
          * extension
            * url = $naViewPerm
            * valueString = "naViewPerm"
          * url = $access-level-view
        * url = $access-level
      * linkId = "c8d94679-3937-c736-70a0-b9c6fb0439ae"
      * text = "Last name"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#date-picker
      * extension[+]
        * url = $questionnaire-information-date-picker-restriction
        * valueCodeableConcept.coding.system = $date-picker-restriction
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"b8cbbef3-d6c9-6bda-2e19-d56ac872dfe1\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"11ccccff-0194-e8b4-e039-762fe74801a5\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.birthDate"
      * extension[+]
        * extension
          * extension
            * url = $naViewPerm
            * valueString = "naViewPerm"
          * url = $access-level-view
        * url = $access-level
      * linkId = "176e27b8-1489-985f-6d2a-4d9ccbe1ce6c"
      * text = "Date of birth"
      * type = #date
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"89b13fbb-8ab4-6e02-6f04-3d5f6839deae\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"4f82bf39-f254-a6d0-4f82-136a1026381e\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.nhi"
      * extension[+]
        * extension
          * extension
            * url = $naViewPerm
            * valueString = "naViewPerm"
          * url = $access-level-view
        * url = $access-level
      * linkId = "fcb35de7-5396-c1f0-62d7-bd31f896522e"
      * text = "NHI"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#vertical
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"b07b40ae-a895-d1a2-ea2e-b48e9fbb5051\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"d1eba72f-655e-01c2-00ea-7e96e8a28983\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.gender"
      * linkId = "fd056bcc-6b26-fb3b-1cf3-9df1d03b0581"
      * text = "Gender"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Female"
      * answerOption[+].valueString = "Male"
      * answerOption[+].valueString = "Other"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"cf38ac97-98c8-08f3-b217-475174354538\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"e9888ee0-643b-65db-f1ee-a25e31c32812\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "45cebce6-3226-bb75-a5c3-d8f237bb22b5"
      * text = "Other gender"
      * type = #string
      * enableWhen
        * id = "91780452-8cb2-c3de-11a8-a1b64fa06342"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "fd056bcc-6b26-fb3b-1cf3-9df1d03b0581"
        * operator = #=
        * answerString = "Other"
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#radio-button
      * extension[+]
        * url = $questionnaire-choiceOrientation
        * valueCodeableConcept = $choice-list-orientation#vertical
      * extension[+]
        * url = $layout-columns
        * valueString = "3-columns"
      * extension[+]
        * url = $clearable-text
        * valueString = "Clear selection"
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"91c9af66-7163-4d59-8770-cdd08b542317\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"7c0aeaaa-9e75-63ee-1bbe-0d50f8f2c272\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.birthSex"
      * linkId = "1bf0400e-9a61-9120-6ae9-5fd08ccdfbe5"
      * text = "Birth sex"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "Female"
      * answerOption[+].valueString = "Male"
      * answerOption[+].valueString = "Other"
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e7939e44-acb9-aa9c-193f-9e7a5ea02d5c\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"d8a5acfd-bd99-2d5a-f750-e67906c673b7\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "bd7c4c1d-5efb-5602-4dfd-9286be1d69f8"
      * text = "Other birth sex"
      * type = #string
      * enableWhen
        * id = "04fae9b0-b9b6-1d0a-1d7e-f41dea6d6836"
        * extension
          * url = $questionnaire-item-enable-when-operator
          * valueString = "="
        * question = "1bf0400e-9a61-9120-6ae9-5fd08ccdfbe5"
        * operator = #=
        * answerString = "Other"
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#drop-down-multiselect
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"dab6a77e-108d-41c3-f16f-53c914cc6cf8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"ef3f594c-923f-4408-9b51-4b11cfe1221d\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.ethnicity"
      * linkId = "5e7a8712-6899-cd9d-b44d-a87533acff68"
      * text = "Ethnicity"
      * type = #choice
      * required = true
      * answerOption[0].valueString = "European nfd"
      * answerOption[+].valueString = "NZ European"
      * answerOption[+].valueString = "British nfd"
      * answerOption[+].valueString = "Celtic nfd"
      * answerOption[+].valueString = "Channel Islander"
      * answerOption[+].valueString = "Cornish"
      * answerOption[+].valueString = "English"
      * answerOption[+].valueString = "Irish"
      * answerOption[+].valueString = "Manx"
      * answerOption[+].valueString = "Scottish"
      * answerOption[+].valueString = "Welsh"
      * answerOption[+].valueString = "British nec"
      * answerOption[+].valueString = "Dutch"
      * answerOption[+].valueString = "Greek"
      * answerOption[+].valueString = "Polish"
      * answerOption[+].valueString = "South Slav nfd"
      * answerOption[+].valueString = "Croatian"
      * answerOption[+].valueString = "Dalmatian"
      * answerOption[+].valueString = "Macedonian"
      * answerOption[+].valueString = "Serbian"
      * answerOption[+].valueString = "Slovenian"
      * answerOption[+].valueString = "Bosnian"
      * answerOption[+].valueString = "South Slav nec"
      * answerOption[+].valueString = "Italian"
      * answerOption[+].valueString = "German"
      * answerOption[+].valueString = "Australian"
      * answerOption[+].valueString = "Albanian"
      * answerOption[+].valueString = "Armenian"
      * answerOption[+].valueString = "Austrian"
      * answerOption[+].valueString = "Belgian"
      * answerOption[+].valueString = "Bulgarian"
      * answerOption[+].valueString = "Belorussian"
      * answerOption[+].valueString = "Cypriot nfd"
      * answerOption[+].valueString = "Czech"
      * answerOption[+].valueString = "Danish"
      * answerOption[+].valueString = "Estonian"
      * answerOption[+].valueString = "Finnish"
      * answerOption[+].valueString = "Flemish"
      * answerOption[+].valueString = "French"
      * answerOption[+].valueString = "Hungarian"
      * answerOption[+].valueString = "Icelandic"
      * answerOption[+].valueString = "Latvian"
      * answerOption[+].valueString = "Lithuanian"
      * answerOption[+].valueString = "Maltese"
      * answerOption[+].valueString = "Norwegian"
      * answerOption[+].valueString = "Portuguese"
      * answerOption[+].valueString = "Romanian"
      * answerOption[+].valueString = "Gypsy"
      * answerOption[+].valueString = "Russian"
      * answerOption[+].valueString = "Slavic"
      * answerOption[+].valueString = "Slovak"
      * answerOption[+].valueString = "Spanish"
      * answerOption[+].valueString = "Swedish"
      * answerOption[+].valueString = "Swiss"
      * answerOption[+].valueString = "Ukrainian"
      * answerOption[+].valueString = "American"
      * answerOption[+].valueString = "Canadian"
      * answerOption[+].valueString = "New Caledonian"
      * answerOption[+].valueString = "South African European"
      * answerOption[+].valueString = "Afrikaner"
      * answerOption[+].valueString = "Zimbabwean European"
      * answerOption[+].valueString = "European nec"
      * answerOption[+].valueString = "Māori"
      * answerOption[+].valueString = "Pacific Peoples nfd"
      * answerOption[+].valueString = "Samoan"
      * answerOption[+].valueString = "Cook Islands Māori"
      * answerOption[+].valueString = "Tongan"
      * answerOption[+].valueString = "Niuean"
      * answerOption[+].valueString = "Tokelauan"
      * answerOption[+].valueString = "Fijian"
      * answerOption[+].valueString = "Indigenous Australian"
      * answerOption[+].valueString = "Hawaiian"
      * answerOption[+].valueString = "Kiribati"
      * answerOption[+].valueString = "Nauruan"
      * answerOption[+].valueString = "Papua New Guinean"
      * answerOption[+].valueString = "Pitcairn Islander"
      * answerOption[+].valueString = "Rotuman"
      * answerOption[+].valueString = "Tahitian"
      * answerOption[+].valueString = "Solomon Islander"
      * answerOption[+].valueString = "Tuvaluan"
      * answerOption[+].valueString = "Ni Vanuatu"
      * answerOption[+].valueString = "Pacific Peoples nec"
      * answerOption[+].valueString = "Asian nfd"
      * answerOption[+].valueString = "Southeast Asian nfd"
      * answerOption[+].valueString = "Filipino"
      * answerOption[+].valueString = "Cambodian"
      * answerOption[+].valueString = "Vietnamese"
      * answerOption[+].valueString = "Burmese"
      * answerOption[+].valueString = "Indonesian"
      * answerOption[+].valueString = "Lao"
      * answerOption[+].valueString = "Malay"
      * answerOption[+].valueString = "Thai"
      * answerOption[+].valueString = "Karen"
      * answerOption[+].valueString = "Chin"
      * answerOption[+].valueString = "Southeast Asian nec"
      * answerOption[+].valueString = "Chinese nfd"
      * answerOption[+].valueString = "Hong Kong Chinese"
      * answerOption[+].valueString = "Cambodian Chinese"
      * answerOption[+].valueString = "Malaysian Chinese"
      * answerOption[+].valueString = "Singaporean Chinese"
      * answerOption[+].valueString = "Vietnamese Chinese"
      * answerOption[+].valueString = "Taiwanese"
      * answerOption[+].valueString = "Chinese nec"
      * answerOption[+].valueString = "Indian nfd"
      * answerOption[+].valueString = "Bengali"
      * answerOption[+].valueString = "Fijian Indian"
      * answerOption[+].valueString = "Indian Tamil"
      * answerOption[+].valueString = "Punjabi"
      * answerOption[+].valueString = "Sikh"
      * answerOption[+].valueString = "Anglo Indian"
      * answerOption[+].valueString = "Malaysian Indian"
      * answerOption[+].valueString = "South African Indian"
      * answerOption[+].valueString = "Indian nec"
      * answerOption[+].valueString = "Sri Lankan nfd"
      * answerOption[+].valueString = "Sinhalese"
      * answerOption[+].valueString = "Sri Lankan Tamil"
      * answerOption[+].valueString = "Sri Lankan nec"
      * answerOption[+].valueString = "Japanese"
      * answerOption[+].valueString = "Korean"
      * answerOption[+].valueString = "Afghani"
      * answerOption[+].valueString = "Bangladeshi"
      * answerOption[+].valueString = "Nepalese"
      * answerOption[+].valueString = "Pakistani"
      * answerOption[+].valueString = "Tibetan"
      * answerOption[+].valueString = "Eurasian"
      * answerOption[+].valueString = "Bhutanese"
      * answerOption[+].valueString = "Maldivian"
      * answerOption[+].valueString = "Mongolian"
      * answerOption[+].valueString = "Asian nec"
      * answerOption[+].valueString = "Middle Eastern nfd"
      * answerOption[+].valueString = "Algerian"
      * answerOption[+].valueString = "Arab"
      * answerOption[+].valueString = "Assyrian"
      * answerOption[+].valueString = "Egyptian"
      * answerOption[+].valueString = "Iranian/Persian"
      * answerOption[+].valueString = "Iraqi"
      * answerOption[+].valueString = "Israeli/Jewish"
      * answerOption[+].valueString = "Jordanian"
      * answerOption[+].valueString = "Kurd"
      * answerOption[+].valueString = "Lebanese"
      * answerOption[+].valueString = "Moroccan"
      * answerOption[+].valueString = "Palestinian"
      * answerOption[+].valueString = "Syrian"
      * answerOption[+].valueString = "Turkish"
      * answerOption[+].valueString = "Middle Eastern nec"
      * answerOption[+].valueString = "Latin American nfd"
      * answerOption[+].valueString = "Argentinian"
      * answerOption[+].valueString = "Bolivian"
      * answerOption[+].valueString = "Brazilian"
      * answerOption[+].valueString = "Chilean"
      * answerOption[+].valueString = "Colombian"
      * answerOption[+].valueString = "Ecuadorian"
      * answerOption[+].valueString = "Mexican"
      * answerOption[+].valueString = "Peruvian"
      * answerOption[+].valueString = "Puerto Rican"
      * answerOption[+].valueString = "Uruguayan"
      * answerOption[+].valueString = "Venezuelan"
      * answerOption[+].valueString = "Latin American nec"
      * answerOption[+].valueString = "Jamaican"
      * answerOption[+].valueString = "Kenyan"
      * answerOption[+].valueString = "Nigerian"
      * answerOption[+].valueString = "African American"
      * answerOption[+].valueString = "Caribbean"
      * answerOption[+].valueString = "Somali"
      * answerOption[+].valueString = "Eritrean"
      * answerOption[+].valueString = "Ethiopian"
      * answerOption[+].valueString = "Ghanaian"
      * answerOption[+].valueString = "Burundian"
      * answerOption[+].valueString = "Congolese"
      * answerOption[+].valueString = "Sudanese"
      * answerOption[+].valueString = "Zambian"
      * answerOption[+].valueString = "Other Zimbabwean"
      * answerOption[+].valueString = "African nec"
      * answerOption[+].valueString = "Indigenous American"
      * answerOption[+].valueString = "Mauritian"
      * answerOption[+].valueString = "Seychellois"
      * answerOption[+].valueString = "Other South African"
      * answerOption[+].valueString = "New Zealander"
      * answerOption[+].valueString = "Aboriginal Australian"
      * answerOption[+].valueString = "Torres Strait Islander"
      * answerOption[+].valueString = "Other ethnicity nec"
      * answerOption[+].valueString = "Don't know"
      * answerOption[+].valueString = "Refused to answer"
      * answerOption[+].valueString = "Repeated value"
      * answerOption[+].valueString = "Response unidentifiable"
      * answerOption[+].valueString = "Response outside scope"
      * answerOption[+].valueString = "Not stated"
  * item[+]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"1efa2bf0-7a6e-60b8-d717-85e88f6f0a49\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "affc1a44-c7c9-fc8b-bad6-9b0ba5cf89ac"
    * text = "Patient address"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"67c4e4d6-8288-e0ae-3a7d-082ebac69b6b\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"1a12a7f9-2a62-0e62-6b80-a891ac6702fb\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.street"
      * linkId = "29e6f6be-ce14-e490-8f90-5dd1bb88e981"
      * text = "Street"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"47db7fda-6e68-2058-a2bb-79bc7ee5311f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"bb74aa78-41e8-1504-4083-c6739fbcf35a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.suburb"
      * linkId = "616527e1-3934-d716-f129-87e1f59ab45c"
      * text = "Suburb"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"42704a1a-81e3-190e-f761-e0088a990ef8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"5fdbdef5-ebc1-cade-a54c-49effdd28b96\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.city"
      * linkId = "78aaa9e7-39f8-97a0-23a1-328727b70abb"
      * text = "City"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"1f12e8d0-6a34-42c3-eaaf-69fc0cd3ea52\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"5d772f36-ba5b-f631-34f1-937beed6f9d3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.postcode"
      * linkId = "192f3985-82e0-ca5c-e574-a5b3f5626921"
      * text = "Postcode"
      * type = #string
      * required = false
  * item[+]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"09ce3756-b6da-0799-75af-0a99dd376450\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "463cad26-ccb6-1782-b166-84f35b8176eb"
    * text = "Patient contact details"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"612b3c8f-79fc-e70e-4a59-59ba5e7f9d22\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.mobile"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"6d85fc93-8134-ca7f-0f4d-c6feeca94e64\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "7fa49ad6-1929-11e4-2386-f0c5013054ef"
      * text = "Mobile"
      * type = #string
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"76e8374b-961f-9c95-f742-419f654b0dab\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"d3bbe2fb-cfca-360a-68c2-601ee10152d7\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Patient.email"
      * linkId = "7ea584dd-7623-dc35-a333-274d621cdac9"
      * text = "Email"
      * type = #string
      * required = false
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#tab
  * extension[+]
    * url = $valid-when-conditions
    * valueString = "{\"id\":\"f3fcbfef-a2f3-beeb-6e5f-223400cb74c8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
  * linkId = "280906d6-ec92-ba82-abc8-e9c2a28ebb50"
  * text = "Provider details"
  * type = #group
  * item[0]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"0d3a5b11-1744-161a-2dc4-45b622dd42a3\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "9492fc6a-55f2-e2bd-fa84-9c80e300e174"
    * text = "Clinician details"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"9c084fef-7288-c259-27c5-cbf04b3e08a1\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"6ec019c6-5824-5a5c-ee5b-6f430343235c\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Practitioner.name"
      * linkId = "57ee43af-edf5-1b98-cc1c-b77a0c7cd610"
      * text = "Name"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"158a01ba-e753-ff24-be66-95b77186adf0\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"46f2e8a6-8408-d1af-72ef-f8822bfee9b4\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Practitioner.accProviderId"
      * linkId = "e0ecb802-a804-c196-91c3-85bc7da2a8c2"
      * text = "ACC provider ID"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"e91e8514-83c3-2bfb-a832-e603ea3d2991\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"f4fcdcca-8351-38d6-ddc8-cc8532d9d23a\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Location.name"
      * linkId = "1fe7a18c-dda4-b5b7-d81c-2f21988b1024"
      * text = "Practice name"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"a56bb449-4233-1b78-cb96-16171804cfc5\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"7334cedd-cb35-2082-aa1e-7eb03fc32031\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Location.accFacilityId"
      * linkId = "6619a29e-6904-770e-b6e1-caa7c0690a0a"
      * text = "ACC facility ID"
      * type = #string
      * required = true
  * item[+]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"8ffeb3a2-62b8-aa9f-66f4-b57ca85eb120\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "c565a411-e138-8a71-e4e3-c028127be576"
    * text = "Provider address"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"872fed3c-e48c-6baa-b0e0-be4457efa0d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"1611dbd0-4af0-ba0c-8cfd-0332f731cfc8\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Practitioner.street"
      * linkId = "651f9e22-80e7-6ad1-5306-ef782c09745d"
      * text = "Street"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"75c153a1-9186-7857-ba8e-762fc84147c2\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"8e712776-9dfe-21ce-d7da-d545305cc7d6\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Practitioner.suburb"
      * linkId = "5c386c17-3d45-99ca-748e-23d8159e4f9c"
      * text = "Suburb"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"d29f4507-2fcd-2a55-e398-bcd6941fde5f\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $clearable
        * valueBoolean = false
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"1cd5a537-f053-bb0f-0fa5-4ba3de802382\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Practitioner.city"
      * linkId = "fb0f00aa-5b5d-579f-1b95-273716525d9c"
      * text = "City"
      * type = #string
      * required = true
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"036046db-8088-9cfb-979b-2b8079f76f4b\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"7af445b1-c1fa-ee8b-aa06-89084a885cac\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Practitioner.postcode"
      * linkId = "de0635ff-4bde-54c4-c01b-e8915d945591"
      * text = "Postcode"
      * type = #string
      * required = false
  * item[+]
    * extension[0]
      * url = $questionnaire-itemControl
      * valueCodeableConcept = $questionnaire-item-control#list
    * extension[+]
      * url = $valid-when-conditions
      * valueString = "{\"id\":\"92238db1-fa60-6bcc-67b8-94aff1f8788b\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
    * linkId = "50e5749b-17e6-3075-76f4-3ba1eb276b7c"
    * text = "Provider contact details"
    * type = #group
    * item[0]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"90441e0e-e232-5eb7-bc07-9525cf2897a2\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Practitioner.mobile"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"b34c2fd8-24d7-a385-a309-4fcb4c763c31\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * linkId = "c4f62f2a-00bf-3174-d6dc-2f36dab2ed03"
      * text = "Mobile"
      * type = #string
      * required = false
    * item[+]
      * extension[0]
        * url = $questionnaire-itemControl
        * valueCodeableConcept = $questionnaire-item-control#text-box
      * extension[+]
        * url = $eligible-when-conditions
        * valueString = "{\"id\":\"3ba6bff1-3701-4713-32fd-dd1b18f6f8eb\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $valid-when-conditions
        * valueString = "{\"id\":\"030eea1d-17d7-d5a6-a553-e16fc20ee202\",\"operator\":\"or\",\"type\":\"group\",\"returnType\":\"boolean\"}"
      * extension[+]
        * url = $prepopulation-field-path
        * valueString = "Practitioner.email"
      * linkId = "fa1d5d88-b8aa-691f-088d-e223705bd331"
      * text = "Email"
      * type = #string
      * required = false
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "outcomeEDReferral"
  * extension[+]
    * url = $rules-output-type
    * valueString = "boolean"
  * linkId = "a51231eb-4df8-790b-c972-07f38c904098"
  * text = "Outcome ED referral"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingAge"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "aedd11d2-0814-e723-3247-1f36911576e2"
  * text = "Age weight"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingTrauma"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "caef507e-0d08-2e25-a2aa-bd484cb59526"
  * text = "Trauma weight"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingTimesVomited"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "b51f80fd-dd63-71b3-e488-c946fdcb9c26"
  * text = "Vomit weight"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingLOC"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "42a05af8-ad84-7e66-572b-8605f6b8477d"
  * text = "LOC weight"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingSymptomsExperience"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "47df88f0-d5b0-9b06-0a31-777040912294"
  * text = "Symptoms experience weight"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingPriorTBI"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "25a82bc7-1b04-3fe8-2f30-082076a5b75c"
  * text = "Prior TBI weighting"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingProlongedRecovery"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "676f937c-574e-4c28-dd24-65ee9b7d93d3"
  * text = "Prolonged recovery weighting"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingMHDisorder"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "6fae9e39-9797-66c4-7236-6fec867df7cb"
  * text = "MH disorder weighting"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingDomVO"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "834484c0-3ef6-9e35-cb3f-04f046f29888"
  * text = "Dom VO weighting"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingMigraine"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "b2c33d75-9008-1941-e0bf-759456a4ff0d"
  * text = "Migraine weighting"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingSeverity160"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "33ca4de1-1d93-d13b-e726-c72b39c72ea2"
  * text = "Symptoms score 160 weighting"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingImpactScore"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "edda66c2-d94c-0629-efac-4dcf815f27bb"
  * text = "Impact weighting"
  * type = #choice
* item[+]
  * extension[0]
    * url = $questionnaire-itemControl
    * valueCodeableConcept = $questionnaire-item-control#ruleset-field
  * extension[+]
    * url = $questionnaire-hidden
    * valueBoolean = true
  * extension[+]
    * url = $rules-code
    * valueCode = #BIST
  * extension[+]
    * url = $rules-output-parameter
    * valueString = "weightingTotal"
  * extension[+]
    * url = $rules-output-type
    * valueString = "number"
  * linkId = "f300185f-01a7-6785-7370-cd92ad07c334"
  * text = "Weightings total"
  * type = #choice