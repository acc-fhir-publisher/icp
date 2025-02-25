### Profiles for use by PMS vendors

\
An ICP "Episode of Care" represents the period during which a contracted Integrated Care Pathways (ICP) supplier is
providing a patient with treatment for a specific injury.

"Integrated Care Pathways" is a new type of service that Accident Compensation Corporation (ACC) contracts suppliers
for. It is a provider-managed pathway that commissions outcomes rather than specified treatments. It’s focused on
moderate complexity client needs whereby healthcare providers are empowered with autonomy & agency to use their skill
set to assist clients back to independence.

An ICP "Episode of Care" is also referred to as an "ICP Case". It runs from the point when the supplier has completed
their triage assessment and decided to enter the patient into their ICP service, until the point at which the patient is
exited from that service.

The ICP Observation/Measurement resource is used to provide clinical/functional measurement details to ACC. (AKA
site-specific clinical measures and PROMs)

The ICP Referral Decline resource is used to provide ACC with the relevant details when an ICP supplier declines an ICP
referral. This includes pre-triage declines as well as declines that occur after triage has been completed.

There are a number of ICP profiles available:

#### Musculoskeletal (MSK) Profiles

| Name                                                                                 | Canonical url                                                             | Description                                                                                                                                                                                                 |                                                                        |
|--------------------------------------------------------------------------------------|---------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
| [Patient Referral Accept into ICP MSK](StructureDefinition-acc-icp-case-create.html) | <http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-create>          | ICP Case Create is to be used by the supplier to furnish ACC with the required information following the completion of the triage assessment and the decision to accept the patient into their ICP service. | [example](EpisodeOfCare-icp-create-case-msk.html)                      |
| [Service Bundle Update to ICP MSK](StructureDefinition-acc-icp-case-modify.html)     | <http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-modify>          | This profile supports suppliers needing to inform ACC of a change to the selected Service Bundle and/or Exceptional Funding Required.                                                                       | [example](EpisodeOfCare-icp-modify-case.html)                          |
| [Patient Exit from ICP MSK](StructureDefinition-acc-icp-case-exit.html)              | <http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-finished>        | This profile supports suppliers needing to inform ACC of a patient being exited from their ICP service.                                                                                                     | [example](EpisodeOfCare-icp-exit-case.html)                            |
| [Clinical Measurement](StructureDefinition-acc-icp-measurement-clinical.html)        | <http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement-clinical> | This profile supports suppliers providing site-specific clinical measures to ACC.                                                                                                                           | [example](Observation-icp-clinical-measurement-shoulder-strength.html) |
| [PROM Measurement](StructureDefinition-acc-icp-measurement-prom.html)                | <http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement-prom>     | This profile supports suppliers providing site-specific patient reported outcome measures (PROMs) to ACC.                                                                                                   | [example](Observation-icp-prom-measurement.html)                       |
| [Referral Decline to ICP MSK](StructureDefinition-acc-icp-referral-decline.html)     | <http://hl7.org.nz/fhir/StructureDefinition/acc-icp-referral-decline>     | This profile enables ICP suppliers to provide the relevant details to ACC when they decline an ICP referral.                                                                                                | [example](Encounter-icp-referral-decline.html)                         |

#### Traumatic Brain Injury (TBI) Profiles

##### Community Care

| Name                                                                                                        | Canonical url                                                               | Description                                                                                                                |                                                   |
|-------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------|
| [Patient Referral for initial BIST submission](StructureDefinition-acc-icp-bist-patient-referral.html)      | <http://hl7.org.nz/fhir/StructureDefinition/acc-icp-bist-patient-referral>  | This definition represents the Community Care Traumatic Brain Injury Screening Tool (BIST) has been completed.                            | |

### Additional Profile resources

There are additional profiles which are not intended to be used directly, and are required to support the product 
profiles listed above. There are also profiles which are only intended to be used as contained resources, such
as ACC ICP Patient, and ACC Provider.

| Name                 | Canonical url                                                                                                    | Description                                                                                                                                                             |
|----------------------|------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ACC Provider         | [http://hl7.org.nz/fhir/StructureDefinition/acc-provider](StructureDefinition-acc-provider.html)                 | This profile is based on the NzPractitioner resource and extends it with an ACC Provider ID.                                                                            |
| ACC ICP Patient      | [http://hl7.org.nz/fhir/StructureDefinition/acc-icp-patient](StructureDefinition-acc-icp-patient.html)           | This is used as a contained resource within Case-Create, Case-Update, Case-Exit, Measurement-Clinical and Measurement-Patient. It represents the patient being treated. |
| ACC Patient Referral | [http://hl7.org.nz/fhir/StructureDefinition/acc-patient-referral](StructureDefinition-acc-patient-referral.html) | This profile represents the acc patient referral to any ICP Service has occurred.                                                                                       |
| ACC ICP Case         | [http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case](StructureDefinition-acc-icp-case.html)                 | This is the base profile/structure that Case-Create, Case-Update, and Case-Exit build upon.                                                                             |
| ACC ICP Measurement  | [http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement](StructureDefinition-acc-icp-measurement.html)   | This is the base profile/structure that Measurement-based profiles build upon.                                                                                          |
| ACC ICP Encounter    | [http://hl7.org.nz/fhir/StructureDefinition/acc-icp-encounter](StructureDefinition-acc-icp-encounter.html)       | This is the base profile/structure that Encounter-based profiles build upon.                                                                                            |
