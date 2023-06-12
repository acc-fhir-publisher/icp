### ValueSets

These are ValueSets that have been defined in this guide for coded elements.

Each ValueSet resource has a globally unique url (the [Canonical](http://hl7.org/fhir/references.html#canonical) url) that is used to unambiguously identify it.
This url generally should resolve to the to the FHIR ValueSet resource, though the infrastructure to support this is not yet in place. There's a [specific note](http://hl7.org/fhir/valueset.html#ident) in the spec on ValueSet identification.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<div class="tableGridded"></div>

|Id |Canonical url |
|--- |--- | ---|
|[icp-category](ValueSet-acc-icp-category.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-category|
|[icp-diagnosis-side](ValueSet-acc-icp-diagnosis-side.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-diagnosis-side|
|[icp-exit-reason](ValueSet-acc-icp-exit-reason.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-exit-reason|
|[icp-funding-rationale](ValueSet-acc-icp-funding-rationale.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-funding-rationale|
|[icp-intended-pathway](ValueSet-acc-icp-funding-rationale.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-intended-pathway|
|[icp-referral-source-type](ValueSet-acc-icp-referral-source-type.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-referral-source-type|
|[icp-service-bundle](ValueSet-acc-icp-service-bundle.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-service-bundle|
|[icp-service-type](ValueSet-acc-icp-service-type.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-service-type|
|[icp-status](ValueSet-acc-icp-status.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-status|
|[icp-subcategory](ValueSet-acc-icp-subcategory.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-subcategory|
|[icp-subcategory-score](ValueSet-acc-icp-subcategory-score.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-subcategory-score|
|[icp-category-score](ValueSet-acc-icp-category-score.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-category-score|
|[icp-complexity-score](ValueSet-acc-icp-complexity-score.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-complexity-score|
|[icp-diagnosis-codes](ValueSet-acc-icp-diagnosis-codes.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-diagnosis-codes|
|[icp-error-codes](ValueSet-acc-icp-error.html)|http://hl7.org.nz/fhir/ValueSet/acc-icp-error|

### CodeSystems

These are code systems that have been defined in this guide. They define specific concepts that are included in ValueSets. It is preferable to use an international code system such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem resource has a globally unique url (the canonical url) that is used to unambiguously identify it. The url generally refers to a description of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<div class="tableGridded"></div>

|Id |Canonical url |
|--- |--- | ---|
|[icp-category](CodeSystem-acc-icp-category.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-category|
|[icp-diagnosis-side](CodeSystem-acc-icp-diagnosis-side.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-diagnosis-side|
|[icp-exit-reason](CodeSystem-acc-icp-exit-reason.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-exit-reason|
|[icp-funding-rationale](CodeSystem-acc-icp-funding-rationale.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-funding-rationale|
|[icp-intended-pathway](CodeSystem-acc-icp-funding-rationale.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-intended-pathway|
|[icp-referral-source-type](CodeSystem-acc-icp-referral-source-type.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-referral-source-type|
|[icp-service-bundle](CodeSystem-acc-icp-service-bundle.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-service-bundle|
|[icp-service-type](CodeSystem-acc-icp-service-type.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-service-type|
|[icp-subcategory](CodeSystem-acc-icp-subcategory.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-subcategory|
|[icp-subcategory-score](CodeSystem-acc-icp-subcategory-score.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-subcategory-score|
|[icp-category-score](CodeSystem-acc-icp-category-score.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-category-score|
|[icp-complexity-score](CodeSystem-acc-icp-complexity-score.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-complexity-score|
|[icp-error-codes](CodeSystem-acc-icp-error.html)|http://hl7.org.nz/fhir/CodeSystem/acc-icp-error|
