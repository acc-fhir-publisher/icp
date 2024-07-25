Profile:        ACCProvider
Parent:         NzPractitioner
Id:             acc-provider
Title:          "ACC Provider"
Description:    "The ACC Provider resource based on NzPractitioner."

* ^url = $acc-provider
* insert Acc-Metadata
* ^purpose = "An ACC Provider resource is used to represent a provider that is registered with ACC."
* ^text.status = #additional

//elements that have been removed
* contained 0..0

// * exensions 1..6
* extension contains
    $acc-providerid named acc-providerid 1..1

* extension[acc-providerid] ^short = "The ACC Provider ID"