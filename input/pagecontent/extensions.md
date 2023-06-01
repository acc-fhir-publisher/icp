
<div class="tableGridded"></div>

|Id |Canonical url | Description |
|--- |--- | --- |
|[Status](StructureDefinition-acc-icp-status.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-status|The Status of the ICP case (Active or Finished)|
|[AccProviderId](StructureDefinition-acc-providerid.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-providerid|This should represent the person providing the data to ACC.|
|[Service Type](StructureDefinition-acc-icp-service-type.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-service-type|The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion.|
|[Intended Pathway](StructureDefinition-acc-icp-intended-pathway.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-intended-pathway|Indicates if the pathway is expected to be surgical or non-surgical|
|[Service Bundle](StructureDefinition-acc-icp-service-bundle.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-service-bundle|Indicates the ICP service bundle selected for the treatment|
|[ClientAuthority](StructureDefinition-acc-icp-client-authority.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-client-authority|Indicates that the Client has agreed to ACC being able to collect, store, use, &amp; share their information.|
|[ClientParticipationAgreement](StructureDefinition-acc-icp-client-participation-agreement.html)|http://hl7.org.nz/fhir/StructureDefinition/client-participation-agreement|Indicates that the Client has agreed to participating in ICP.|
|[CoversAllClaimDiagnoses](StructureDefinition-acc-icp-covers-all-claim-diagnoses.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-covers-all-claim-diagnoses|Indicates whether or not the ICP case is treating all the diagnoses on the claim.|
|[Triage Assessment Date](StructureDefinition-acc-icp-triage-assessment-date.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-triage-assessment-date|The date the triage assessment was completed|
|[Diagnoses](StructureDefinition-acc-icp-diagnoses.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-diagnoses|The diagnoses for the injury being treated.|
|[Diagnosis Codes](StructureDefinition-acc-icp-diagnosis-codes.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-diagnosis-codes|The diagnosis codes for the injury being treated.|
|[Diagnosis Side](StructureDefinition-acc-icp-diagnosis-side.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-diagnosis-side|The body side this diagnosis code relates to.|
|[Referral Source Type](StructureDefinition-acc-icp-referral-source-type.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-referral-source-type|The source of the referral.  e.g. Internal is from within the supplier/consortium group.|
|[Referral Source](StructureDefinition-acc-icp-referral-source.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-referral-source|The source of the ICP referral, e.g. ACC referral, GP referral, rongoa referral, etc|
|[Complexity Scores](StructureDefinition-acc-icp-complexity-scores.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-complexity-scores|The scores obtained from the ICP complexity assessment/tool.|
|[Complexity Score](StructureDefinition-acc-icp-complexity-score.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-complexity-score|The score (low, medium, high) for each category/sub-category obtained from the ICP complexity assessment/tool.|
|[Category Scores](StructureDefinition-acc-icp-category-scores.html)|http://hl7.org.nz/fhir/StructureDefinition/covers-all-claim-diagnoses|A complexity category and corresponding complexity score. Also contains the sub-category details (sub-category types and corresponding scores) related to this category.|
|[Category](StructureDefinition-acc-icp-category.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-category|The complexity category.|
|[Category Score](StructureDefinition-acc-icp-category-score.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-category-score|The score (low, medium, high, n/a) for each complexity category.|
|[Subcategory Scores](StructureDefinition-acc-icp-subcategory-scores.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-subcategory-scores|A set of complexity sub-category and corresponding score.|
|[Subcategory](StructureDefinition-acc-icp-subcategory.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-subcategory|The complexity sub-category.|
|[Subcategory Score](StructureDefinition-acc-icp-subcategory-score.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-subcategory-score|The score (low, medium, high, unsure, na) for the complexity sub-category.|
|[Exceptional Funding](StructureDefinition-acc-icp-exceptional-funding.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exceptional-funding|Indicates if exceptional is required for this treatment.|
|[Funding Rationale](StructureDefinition-acc-icp-funding-rationale.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-funding-rationale|A categorisation of the rationale for exceptional funding being required.|
|[Supporting Details](StructureDefinition-acc-icp-supporting-details.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-supporting-details|A paragraph outlining the reason/rational. Used to explain the need for exceptional funding being required as well as providing further context for the client exit.|
|[Exit Reason](StructureDefinition-acc-icp-exit-reason.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exit-reason|A classification of the type reason for the client exit, e.g. client moved, or non-compliance, etc.|
|[AdditionalAccSupport](StructureDefinition-acc-icp-additional-acc-support.html)|http://hl7.org.nz/fhir/StructureDefinition/additional-acc-support|An attribute on the Client Exit flow for the ICP supplier to indicate if the client/patient requires further support from ACC.|
