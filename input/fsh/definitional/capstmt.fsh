
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
* fhirVersion = #4.0.1
* format = #json

* implementation.description = "The icp create endpoint"
* implementation.url = "http://acc.co.nz/icp/fhir"

* rest.mode = #server

// ============== The EpisodeOfCare endpoint

* rest.resource.type = #EpisodeOfCare
* rest.resource.supportedProfile = "http://hl7.org.nz/fhir/StructureDefinition/acc-icp-create"
* rest.resource.documentation = """
EpisodeOfCare create

"""


