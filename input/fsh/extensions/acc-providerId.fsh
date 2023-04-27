Extension: AccProviderId
Id: acc-providerid
Title: "ACC Provider ID"
Description: "This should represent the person submitting this inform to ACC. It should take the form of their ACC Provider ID."

* ^url = $acc-providerid
* ^status = #draft
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"

* extension 0..0
* value[x] only string