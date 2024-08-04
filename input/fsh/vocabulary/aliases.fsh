//base fhir definitions
Alias: $SCT = http://snomed.info/sct
Alias: $ICD-9CM-diagnosiscodes = http://terminology.hl7.org/CodeSystem/ICD-9CM-diagnosiscodes
Alias: $icd9 = http://terminology.hl7.org/CodeSystem/icd9 
Alias: $ICD10CM = http://hl7.org/fhir/sid/icd-10-cm
Alias: $ICD10PCS = http://www.cms.gov/Medicare/Coding/ICD10
Alias: $icd10ae = http://terminology.hl7.org/CodeSystem/icd10ae

Alias: $episode-of-care-status = http://hl7.org/fhir/episode-of-care-status
Alias: $observation-status = http://hl7.org/fhir/observation-status
Alias: $encounter-status = http://hl7.org/fhir/encounter-status
Alias: $encounter-class = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $resource-status = 	http://hl7.org/fhir/resource-status
Alias: $questionnaire-response = http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse
Alias: $ordinal-value = http://hl7.org/fhir/StructureDefinition/ordinalValue
Alias: $usage-context-type-vs = http://hl7.org/fhir/ValueSet/usage-context-type
Alias: $usage-context-type-cs = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $questionnaire-itemControl = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $questionnaire-item-type-cs = http://hl7.org/fhir/CodeSystem/questionnaire-item-type
Alias: $questionnaire-answers-status = http://hl7.org/fhir/questionnaire-answers-status

// hl7nz
Alias: $hpi-organisation = https://standards.digital.health.nz/id/hpi-organisation
Alias: $iso3166-1-2 = http://hl7.org/fhir/ValueSet/iso3166-1-2
Alias: $ethnicity-code-cs = https://standards.digital.health.nz/ns/ethnic-group-level-4-code
Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity
Alias: $sex-at-birth = http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender

// hl7nz naming systems
Alias: $nhi-patient = https://standards.digital.health.nz/ns/nhi-id
Alias: $acc-claim-number = https://standards.digital.health.nz/ns/acc-45-number

// profiles
Alias: $acc-provider = http://hl7.org.nz/fhir/StructureDefinition/acc-provider
Alias: $icp-case = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case
Alias: $icp-case-create = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-create
Alias: $icp-msk-case-create = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-msk-case-create
Alias: $icp-tbi-case-create = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-tbi-case-create
Alias: $icp-case-modify = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-modify
Alias: $icp-case-exit = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-exit
Alias: $icp-measurement = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement
Alias: $icp-measurement-clinical = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement-clinical
Alias: $icp-measurement-prom = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement-prom
Alias: $icp-measurement-bist = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement-bist
Alias: $icp-referral-decline = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-referral-decline
Alias: $icp-patient = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-patient
Alias: $icp-patient-referral = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-patient-referral
Alias: $icp-bist-patient-referral = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-bist-patient-referral
Alias: $icp-tbi-start-c = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-tbi-start-c
Alias: $icp-tbi-cover-causation = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-tbi-cover-and-causation
Alias: $icp-tbi-bist = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-tbi-bist

// definitions
Alias: $acc-bist = http://hl7.org.nz/fhir/StructureDefinition/acc-bist
Alias: $acc-cover-causation = http://hl7.org.nz/fhir/StructureDefinition/acc-cover-causation
Alias: $acc-tbi-start-c = http://hl7.org.nz/fhir/StructureDefinition/acc-tbi-start-c

// extensions
Alias: $acc-providerid = http://hl7.org.nz/fhir/StructureDefinition/acc-providerid
Alias: $icp-triage = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-triage
Alias: $icp-triage-assessment-date = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-triage-assessment-date
Alias: $icp-acc-client-authority = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-client-authority
Alias: $icp-client-participation-agreement = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-client-participation-agreement
Alias: $icp-exceptional-funding = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exceptional-funding
Alias: $icp-complexity-scores = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-complexity-scores
Alias: $icp-category-co-morbidities = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-category-co-morbidities
Alias: $icp-category-psychosocial = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-category-psychosocial
Alias: $icp-category-contextual = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-category-contextual
Alias: $icp-category-disciplines = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-category-disciplines
Alias: $icp-category-vocational = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-category-vocational
Alias: $icp-referral-source = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-referral-source
Alias: $icp-diagnoses = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-diagnoses
Alias: $icp-diagnosis = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-diagnosis
Alias: $icp-service-bundle-change = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-service-bundle-change
Alias: $icp-referral-declined = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-referral-declined
Alias: $icp-bist-referral = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-bist-referral
Alias: $icp-bist-referral-source = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-bist-referral-source

// value sets with a new coding system and a dedicated extension
Alias: $acc-readcode = http://hl7.org.nz/fhir/StructureDefinition/acc-read-code
Alias: $acc-readcode-cs = http://hl7.org.nz/fhir/CodeSystem/acc-read-code
Alias: $acc-readcode-vs = http://hl7.org.nz/fhir/ValueSet/acc-read-code

Alias: $icp-exit-reason = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exit-reason
Alias: $icp-exit-reason-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-exit-reason
Alias: $icp-exit-reason-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-exit-reason

Alias: $icp-declined-reason-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-declined-reason
Alias: $icp-declined-reason-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-declined-reason

Alias: $icp-recorded-outcome-stage = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-recorded-outcome-stage
Alias: $icp-recorded-outcome-stage-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-recorded-outcome-stage
Alias: $icp-recorded-outcome-stage-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-recorded-outcome-stage

Alias: $icp-service-bundle-msk = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-service-bundle-msk
Alias: $icp-service-bundle-msk-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-service-bundle-msk
Alias: $icp-service-bundle-msk-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-service-bundle-msk

Alias: $icp-service-bundle-tbi = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-service-bundle-tbi
Alias: $icp-service-bundle-tbi-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-service-bundle-tbi
Alias: $icp-service-bundle-tbi-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-service-bundle-tbi

Alias: $icp-complexity-score = http://hl7.org.nz/fhir/StructureDefinition/acc-icp-complexity-score
Alias: $icp-complexity-score-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-complexity-score
Alias: $icp-complexity-score-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-complexity-score

// value sets with a (new) coding system
Alias: $icp-service-bundle-change-rationale-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-service-bundle-change-rationale
Alias: $icp-service-bundle-change-rationale-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-service-bundle-change-rationale

Alias: $icp-exceptional-funding-rationale-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-exceptional-funding-rationale
Alias: $icp-exceptional-funding-rationale-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-exceptional-funding-rationale

Alias: $acc-icd9-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icd9
Alias: $acc-icd9-vs = http://hl7.org.nz/fhir/ValueSet/acc-icd9

Alias: $acc-icd10-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icd10
Alias: $acc-icd10-vs = http://hl7.org.nz/fhir/ValueSet/acc-icd10

Alias: $icp-service-type-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-service-type
Alias: $icp-service-type-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-service-type

Alias: $icp-diagnosis-side-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-diagnosis-side
Alias: $icp-diagnosis-side-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-diagnosis-side

Alias: $icp-referral-source-type-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-referral-source-type
Alias: $icp-referral-source-type-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-referral-source-type
Alias: $icp-msk-referral-source-type-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-msk-referral-source-type
Alias: $icp-tbi-referral-source-type-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-referral-source-type
Alias: $icp-tbi-bist-referral-source-type-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-bist-referral-source-type
Alias: $icp-tbi-bist-referral-type-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-bist-referral-type

Alias: $icp-error-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-error
Alias: $icp-error-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-error

Alias: $icp-data-absent-reason-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-data-absent-reason
Alias: $icp-data-absent-reason-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-data-absent-reason

Alias: $icp-clinical-measurement-standard-msk-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-clinical-msk-measurement-standard
Alias: $icp-clinical-measurement-standard-msk-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-clinical-msk-measurement-standard

Alias: $icp-prom-measurement-standard-msk-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-prom-msk-measurement-standard
Alias: $icp-prom-measurement-standard-msk-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-prom-msk-measurement-standard

Alias: $icp-bist-measurement-standard-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-bist-measurement-standard

Alias: $icp-category-clinical-observation-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-category-clinical-observation
Alias: $icp-category-clinical-observation-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-category-clinical-observation

Alias: $icp-category-patient-observation-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-category-patient-observation
Alias: $icp-category-patient-observation-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-category-patient-observation

Alias: $icp-tbi-startc-answeroption-agreedisagree-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-startc-answeroption-agreedisagree
Alias: $icp-tbi-startc-answeroption-agreedisagree-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-tbi-startc-answeroption-agreedisagree

Alias: $icp-tbi-startc-answeroption-overall-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-startc-answeroption-overall
Alias: $icp-tbi-startc-answeroption-overall-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-tbi-startc-answeroption-overall

Alias: $icp-tbi-bist-answeroption-yesno-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-bist-answeroption-yesno
Alias: $icp-tbi-bist-answeroption-yesnounknown-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-bist-answeroption-yesno-unknown
Alias: $icp-tbi-bist-answeroption-yesno-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-tbi-bist-answeroption-yesno

Alias: $icp-tbi-bist-answeroption-range-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-bist-answeroption-range
Alias: $icp-tbi-bist-answeroption-range-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-tbi-bist-answeroption-range

Alias: $icp-tbi-bist-answeroption-betterworsesame-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-tbi-bist-answeroption-betterworsesame
Alias: $icp-tbi-bist-answeroption-betterworsesame-cs = http://hl7.org.nz/fhir/CodeSystem/acc-icp-tbi-bist-answeroption-betterworsesame

// value sets with an existing coding system
Alias: $icp-episodeofcare-status-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-episodeofcare-status
Alias: $icp-diagnoses-code-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-diagnosis-code
Alias: $icp-status-observation-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-observation-status
Alias: $icp-encounter-status-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-encounter-status
Alias: $icp-encounter-class-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-encounter-class
Alias: $icp-bist-ethnicity-vs = http://hl7.org.nz/fhir/ValueSet/acc-icp-bist-ethnicity