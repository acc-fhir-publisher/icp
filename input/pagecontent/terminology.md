### ValueSets

These are ValueSets that have been defined in this guide for coded elements.

Each ValueSet resource has a globally unique url (the [Canonical](http://hl7.org/fhir/references.html#canonical) url) that is used to unambiguously identify it.
This url generally should resolve to the to the FHIR ValueSet resource, though the infrastructure to support this is not yet in place. There's a [specific note](http://hl7.org/fhir/valueset.html#ident) in the spec on ValueSet identification.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<div class="tableGridded"></div>

|Id |Canonical url |
|--- |--- | ---|
|[acc-icp-diagnosis-code](ValueSet-acc-icp-diagnosis-code.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-diagnosis-code|
|[acc-read-code](ValueSet-acc-read-code.html)|http://hl7.org.nz/fhir/ValueSet/acc-read-code|
|[acc-icd-9](ValueSet-acc-icd9.html)|http://hl7.org.nz/fhir/ValueSet/acc-icd9-code|
|[acc-icd-10](ValueSet-acc-icd10.html)|http://hl7.org.nz/fhir/ValueSet/acc-icd10-code|
|[icp-exit-reason](ValueSet-acc-icp-exit-reason.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-exit-reason|
|[icp-funding-rationale](ValueSet-acc-icp-funding-rationale.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-funding-rationale|
|[icp-referral-source-type](ValueSet-acc-icp-referral-source-type.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-referral-source-type|
|[icp-service-bundle](ValueSet-acc-icp-service-bundle.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-service-bundle|
|[icp-service-type](ValueSet-acc-icp-service-type.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-service-type|
|[icp-status](ValueSet-acc-icp-status.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-status|
|[icp-error-codes](ValueSet-acc-icp-error.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-error|

### CodeSystems

These are code systems that have been defined in this guide. They define specific concepts that are included in ValueSets.

Each CodeSystem resource has a globally unique url (the canonical url) that is used to unambiguously identify it. The url generally refers to a description of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<div class="tableGridded"></div>

|Id |Canonical url |
|--- |--- | ---|
|[acc-read-code](CodeSystem-acc-read-code.html)|http://hl7.org.nz/fhir/CodeSystem/acc-read-code|
|[acc-icd-9](CodeSystem-acc-icd9.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icd-9|
|[acc-icd-10](CodeSystem-acc-icd10.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icd-10|
|[icp-exit-reason](CodeSystem-acc-icp-exit-reason.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-exit-reason|
|[icp-funding-rationale](CodeSystem-acc-icp-funding-rationale.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-funding-rationale|
|[icp-referral-source-type](CodeSystem-acc-icp-referral-source-type.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-referral-source-type|
|[icp-service-bundle](CodeSystem-acc-icp-service-bundle.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-service-bundle|
|[icp-service-type](CodeSystem-acc-icp-service-type.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-service-type|
|[icp-complexity-score](CodeSystem-acc-icp-complexity-score.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-complexity-score|
|[icp-error-codes](CodeSystem-acc-icp-error.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-error|
