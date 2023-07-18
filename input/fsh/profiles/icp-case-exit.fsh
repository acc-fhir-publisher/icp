Profile:        IcpCaseExit
Parent:         acc-icp-case
Id:             acc-icp-case-exit
Title:          "ACC ICP Episode of Care Exit Resource"
Description:    "This profile supports suppliers needing to inform ACC of a patient being exited from their ICP service."

* ^url = $icp-case-exit
* ^jurisdiction.coding = urn:iso:std:iso:3166-1-2#NZ "New Zealand"
* ^status = #draft

* type 0..0

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^slicing.ordered = false

* extension 2..2
* extension contains    
    $icp-exit-reason named exit-reason 1..1

* obeys finished-status-invariant and when-acc-support-invariant

Invariant: finished-status-invariant
Severity: #error
Description: "The status attribute must be set to 'finished'."
Expression: "status = 'finished'"

Invariant: when-acc-support-invariant
Severity: #error
Description: "if 'additional-acc-support-needed' is true, supporting-details and outcome-summary are required."
Expression: "((EpisodeOfCare.extension.where(url='http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exit-reason').extension.where(url='additional-acc-support-needed').value = true or EpisodeOfCare.extension.where(url='http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exit-reason').extension.where(url='reason').value != 'goal-achieved') implies (EpisodeOfCare.extension.where(url='http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exit-reason').extension.where(url='supporting-details').value.exists() and EpisodeOfCare.extension.where(url='http://hl7.org.nz/fhir/StructureDefinition/acc-icp-exit-reason').extension.where(url='outcome-summary').value.exists()))"
// Expression: "(extension[exit-reason].extension[additional-acc-support-needed].value = true or extension[exit-reason].extension[reason].value) != 'goal-achieved') implies (extension[exit-reason].extension[supporting-details].value.exists() and extension[exit-reason].extension[outcome-summary].value.exists())"
