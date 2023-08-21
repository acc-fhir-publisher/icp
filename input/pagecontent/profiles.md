
### Profiles for use by PMS vendors

\
An ICP "Episode of Care" represents the period during which a contracted Integrated Care Pathways (ICP) supplier is providing a patient with treatment for a specific injury.

"Integrated Care Pathways" is a new type of service that Accident Compensation Corporation (ACC) contracts suppliers for. It is a provider-managed pathway that commissions outcomes rather than specified treatments. It’s focused on moderate complexity client needs whereby healthcare providers are empowered with autonomy & agency to use their skill set to assist clients back to independence.

An ICP "Episode of Care" is also referred to as an "ICP Case". It runs from the point when the supplier has completed their triage assessment and decided to enter the patient into their ICP service, until the point at which the patient is exited from that service.

The ICP Observation/Measurement resource is used to provide clinical/functional measurement details to ACC. (AKA site-specific clinical measures and PROMs)

There are five ICP profiles available:

<div class="tableGridded"></div>

|Id |Canonical url | Description | |
|--- |--- | --- | ---|
|[IcpCaseCreate](StructureDefinition-acc-icp-case-create.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-create|ICP Case Create is to be used by the supplier to furnish ACC with the required information following the completion of the triage assessment and the decision to accept the patient into their ICP service.|[example](EpisodeOfCare-icp-create.html)|
|[IcpCaseModify](StructureDefinition-acc-icp-case-modify.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-modify|This profile supports suppliers needing to inform ACC of a change to the selected Service Bundle and/or Exceptional Funding Required.|[example](EpisodeOfCare-A101112-2022-11-17.html)|
|[IcpCaseExit](StructureDefinition-acc-icp-case-exit.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-finished|This profile supports suppliers needing to inform ACC of a patient being exited from their ICP service.|[example](EpisodeOfCare-A101113-2002-11-17.html)|
|[IcpMeasurementClinical](StructureDefinition-acc-icp-measurement-clinical.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement-clinical|This profile supports suppliers providing site-specific clinical measures to ACC.|[example](Observation-icp-clinical-measurement.html)|
|[IcpMeasurementPROM](StructureDefinition-acc-icp-measurement-prom.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement-prom|This profile supports suppliers providing site-specific patient reported outcome measures (PROMs) to ACC.|[example](Observation-icp-prom-measurement.html)|

### Additional Profile resources

There are two additional profiles which are not intended to be used directly, but are required to support the three profiles listed above.  Icp Case is the parent resource, and Icp Patient is a contained resource within each.

<div class="tableGridded"></div>

|Id |Canonical url | Description|
|--- |--- | ---|
|IcpCase|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case|This is the base profile/structure that Case-Create, Case-Update, and Case-Exit build upon.|
|IcpPatient|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-patient|This is used as a contained resource within Case-Create, Case-Update, Case-Exit, Measurement-Clinical and Measurement-Patient. It represents the patient being treated.|
|IcpMeasurement|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-measurement|This is the base profile/structure that Measurement-Clinical and Measurement-PROM build upon.|
