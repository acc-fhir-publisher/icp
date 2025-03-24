Alias: $message-transport = http://terminology.hl7.org/CodeSystem/message-transport

Instance:   acc-icp-capabilitystatement
InstanceOf: CapabilityStatement
Title:          "Capability Statement"
Description:    "Represents API exposed to enter an ACC integrated Care Pathways (ICP) Episode of Care"
Usage: #definition

* jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>ICP capabilities</div>"

* name = "ICP_CapabilityStatement"
* title = "Capability Statement describing ICP FHIR API"
* description = """
This is the computable resource that describes the RESTful endpoint
"""

* date = "2023-08-17"
* status = #active
* kind = #instance
* software.name = "ACC Integration API"
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json

* implementation.description = "The ICP endpoints accessed by PMS vendors to enter into, capture observations, manage and exit ACC Integrated Care Pathway."
* implementation.url = "https://provider.api-compliance.acc.co.nz/fhir/v1/integratedcarepathway"

* rest.mode = #server

// ============== The EpisodeOfCare endpoint

* rest.resource[+].type = #EpisodeOfCare

* rest.resource[=].supportedProfile[+] = $icp-case-create
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[=].documentation[0] = """
EpisodeOfCare create
The ICP Create Episode of Care contains the data that ICP suppliers send ACC on completion of patient triage and if they decide to enrol a patient into the ACC Integrated Care Pathway service.

"""

* rest.resource[=].supportedProfile[+] = $icp-case-modify
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].documentation[+] = """
ICP EpisodeOfCare modify service bundle
The ICP Modify Episode of Care contains the data that ICP suppliers send ACC on when they require to modify the service bundle.

"""

* rest.resource[=].supportedProfile[+] = $icp-case-exit
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[=].documentation[+] = """
ICP EpisodeOfCare exit
The ICP Exit Episode of Care contains the data that ICP suppliers send ACC on exiting the Episode of Care.

"""
// ============== The Observation endpoint

* rest.resource[+].type = #Observation

* rest.resource[=].supportedProfile[+] = $icp-measurement-clinical
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[=].documentation[0] = """
Observation clinical measures
The ICP Clinical measures contains the clinical observation data that ICP suppliers send to ACC whilst the patient is going through ICP.

"""

* rest.resource[=].supportedProfile[+] = $icp-measurement-prom
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[=].documentation[0] = """
Observation patient measures
The ICP Patient measures contains the patient record observation data that ICP suppliers send ACC while the patient is accepted into ICP.

"""

// ============== The Encounter endpoint

* rest.resource[+].type = #Encounter

* rest.resource[=].supportedProfile[+] = $icp-referral-decline
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].interaction[=].documentation[0] = """
Encounter create
The ICP Referral Decline contains the data that ICP suppliers send ACC on completion of patient triage and if they decide to decline the referral into the ACC Integrated Care Pathway service.

"""

// ============== The Service Request endpoint

// * rest.resource[+].type = #ServiceRequest
// * rest.resource[=].supportedProfile[+] = $icp-bist-patient-referral
// * rest.resource[=].interaction[+].code = #create
// * rest.resource[=].interaction[=].documentation[0] = """
// Service Request create
// The ICP BIST Patient Referral contains the data that ICP suppliers send ACC on completion of patient triage and if they decide to refer the patient for a BIST measurement.

// """
