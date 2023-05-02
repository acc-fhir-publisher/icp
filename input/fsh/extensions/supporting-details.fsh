Extension: Icp_supportingDetails
Id: icp-supporting-details
Title: "ICP Supporting Details"
Description: "Supporting details supplied for exceptional funding."

* ^url = $icp-supporting-details
* ^context.type = #element
* ^context.expression = "IcpExceptionalFunding"
* ^status = #draft

* extension 0..0
* value[x] only string