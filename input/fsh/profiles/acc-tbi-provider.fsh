Profile:        ACCTbiProvider
Parent:         Practitioner
Id:             acc-tbi-provider
Title:          "ACC Provider"
Description:    "The ACC Provider resource based on NzPractitioner."

* ^url = $acc-tbi-provider
* insert Acc-Metadata
* ^purpose = "An ACC Provider resource is used to represent a provider that is registered with ACC to supply concussion services."
* ^text.status = #additional

//elements that have been removed
* contained 0..0

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"

* extension ^slicing.rules = #open
* extension ^slicing.ordered = false

* extension contains
    $acc-vendorid named acc-vendorid 1..1 and
    $acc-providerid named acc-tbi-providerid 0..1


// // * exensions 1..6
// * extension contains

// * extension[acc-providerid] ^short = "The ACC Provider ID"