Profile:        ACCVendor
Parent:         Organization
Id:             acc-vendor
Title:          "ACC Vendor"
Description:    "The ACC Vendor resource based on NzOrganization."

* ^url = $acc-vendor
* insert Acc-Metadata
* ^purpose = "An ACC Vendor resource is used to represent a vendor that is registered with ACC."
* ^text.status = #additional

//elements that have been removed
* contained 0..0

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^slicing.ordered = false

// * exensions 1..6
* extension contains
    $acc-vendorid named acc-vendorid 1..1

* extension[acc-vendorid] ^short = "The ACC Vendor ID"