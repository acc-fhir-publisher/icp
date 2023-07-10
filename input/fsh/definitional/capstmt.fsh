Alias: $message-transport = http://terminology.hl7.org/CodeSystem/message-transport

Instance:   acc-icp-capabilitystatement
InstanceOf: CapabilityStatement
Title:          "ICP Capability Statement"
Description:    "Represents API exposed to enter an ACC integrated Care Pathways (ICP) Episode of Care"
Usage: #definition

* jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>ICP capabilities</div>"

* name = "ICP_CapabilityStatement"
* title = "Capability Statement describing ICP FHIR APIs"
* description = """
This is the computable resource that describes the RESTful endpoint
"""

* date = "2023-05-30"
* status = #draft
* kind = #instance
* software.name = "ACC Integration API"
* fhirVersion = #4.0.1
* format[0] = #json

* implementation.description = "The ICP endpoint accessed by PMS vendors to create, modify and exit an ICP Episode of Care"
* implementation.url = "https://provider.api-compliance.acc.co.nz/fhir/v1/claims/integratedcarepathway"

* rest.mode = #server

// ============== The EpisodeOfCare endpoint

* rest.resource.type = #EpisodeOfCare

* rest.resource.supportedProfile[0] = $icp-case-create
* rest.resource.interaction[0].code = #create
* rest.resource.interaction[=].documentation[0] = """
EpisodeOfCare create
The ICP Create Episode of Care contains the data that ICP suppliers send ACC on completion of triage and they decide to enrol a patient into their ICP-MSK service.

"""

* rest.resource.supportedProfile[+] = $icp-case-modify
* rest.resource.interaction[+].code = #update
* rest.resource.interaction[=].documentation[+] = """
ICP EpisodeOfCare modify service bundle
The ICP Modify Episode of Care contains the data that ICP suppliers send ACC on when they require to modify the service bundle.

"""

* rest.resource.supportedProfile[+] = $icp-case-exit
* rest.resource.interaction[+].code = #update
* rest.resource.interaction[=].documentation[+] = """
ICP EpisodeOfCare exit
The ICP Exit Episode of Care contains the data that ICP suppliers send ACC on exiting the Episode of Care.

"""
