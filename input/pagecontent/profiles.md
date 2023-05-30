
### Profiles for use by PMS vendors

\
An ICP Episode of Care is an association between a patient and an organisation (consortium) for the period during which that organisation was providing ACC-contracted ICP services to treat a specific injury.

There are three ICP profiles available for use by PMS vendors:

<div class="tableGridded"></div>

|Id |Canonical url | Description | |
|--- |--- | --- | ---|
|[IcpCaseCreate](StructureDefinition-acc-icp-case-create.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-create|ICP Episode of Care entry|[example](EpisodeOfCare-icp-create.html)|
|[IcpCaseModify](StructureDefinition-acc-icp-case-modify.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-modify|ICP Case Service-Bundle Change|[example](EpisodeOfCare-A101112-2022-11-17.html)|
|[IcpCaseExit](StructureDefinition-acc-icp-case-exit.html)|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case-finished|ICP Episode of Care exit|[example](EpisodeOfCare-A101113-2002-11-17.html)|

### Additional Profile resources

\
There is an additional two profiles which are not intended to be used directly, and rather in relation to the Icp entry, update and exit profiles.  Icp Case is the parent resource, and Icp Patient is a contained resource within each.

<div class="tableGridded"></div>

|Id |Canonical url | Description|
|--- |--- | ---|
|IcpCase|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-case|Base structure and rules used by all Icp case scenarios|
|IcpPatient|http://hl7.org.nz/fhir/StructureDefinition/acc-icp-patient|The patient who is the focus of this ICP episode of care Case|
