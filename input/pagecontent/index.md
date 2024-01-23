
## New Zealand ICP Implementation Guide

This is the Integrated Care Pathways Implementation Guide (IG) for New Zealand, provided by ACC, and contains the profiles and extensions used for PMS Vendors to create and manage ICP claims.  This IG also includes relevant terminology.

\
\
The following tabs are available from the navbar at the top.  

### Profiles

This tab lists all the profiles defined in this guide. A profile is a set of constraints on a [Resource](http://hl7.org/fhir/resourcelist.html) or [Data Type](http://hl7.org/fhir/datatypes.html) - for example, the [ICP Case Create](StructureDefinition-acc-icp-case-create.html) resource has a profile defined for it in this guide. The profile defines which elements are required, and which are optional, and may also define additional constraints on the data in those elements. The ICP Case Create profile also defines that the 'patient' element must have a contained [ICP Patient](http://hl7.org.nz/fhir/StructureDefinition/acc-icp-patient) resource.

### Extensions

This tab lists all the extensions defined in this guide, where an extension is an additional element that can be recorded in a resource. The extension definition describes the purpose of the extension, its name and [dataType/s](http://hl7.org/fhir/datatypes.html).

Clicking on the link in the 'id' column will display the detail page for that extension. Extensions can have a single value, or can be composed of multiple 'child' elements - an example is the [Exceptional Funding Extension](StructureDefinition-acc-icp-exceptional-funding.html) extension. The snapshot tab in the details page (about halfway down) lists all the parts of the extension - including a link to the ValueSet if the element is coded.

### Terminology

This tab lists the terminology artifacts defined in this guide. There are 2 artifacts that will be found here:

* [ValueSets](http://hl7.org/fhir/valueset.html) are sets of codes, drawn from one or more code systems, intended for use in coded data elements in Resources, as defined by a particular conformance rule - such as an Extension or Profile. The ValueSets in this Guide are 'recommended' values, but it may be possible for implementers to use additional concepts if the rules defined by a particular Extension or Profile permit this.
* [CodeSystem](http://hl7.org/fhir/codesystem.html) resources are used to declare the existence of and describe a code system, its key properties, and optionally define a part or all of its content. Wherever possible, the use of international terminologies, such as [SNOMED CT](https://www.snomed.org/), is recommended; however, a number of New Zealand-specific code systems are included in this Guide to meet unique, local requirements.

These resources can be used by Terminology Servers (like [Terminz](https://terminz-itp.azurewebsites.net/) or [Ontoserver](https://aehrc.com/ontoserver/) ) to provide terminology [operations](http://hl7.org/fhir/operations.html) of use to implementers, such as the ValueSet [$expand](http://hl7.org/fhir/valueset-operation-expand.html) operation.

There is a lot more detail on terminology in the [FHIR specification](http://hl7.org/fhir/terminology-module.html). The section on [Terminology Services](http://hl7.org/fhir/terminology-service.html) is also useful.

### Identifiers

This tab lists the [NamingSystem](http://hl7.org/fhir/namingsystem.html) resources defined in this guide, which are used to define the identifiers used in the guide.

Identifiers are used to unambiguously identify something. Examples in New Zealand are the NHI (National Health Identifier) or HPI (Health Practitioner index). Each type of identifier has a url that uniquely identifies it - for example The ACC 45 number is http://hl7.org.nz/fhir/NamingSystem/icpclaimnumber. This url will be present in the 'system' value in a resource instance. Note that the url will not necessarily 'resolve' - entering it into a web browser will not result in anything.

### Artifact Index

This is a tab automatically generated during the build of the Implementation Guide, and lists all the FHIR artifacts defined by the guide with a link to the details.

### Support

Contains links to the main FHIR specification, as well downloads for the full IG or the artifacts defined in the guide (Extension Definitions, ValueSets and CodeSystems.)

If you would like to make any feedback on this Implementation Guide, email <mailto:digitaloperations@acc.co.nz>
