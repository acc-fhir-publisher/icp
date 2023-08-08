ValueSet: ICPError
Id: acc-icp-error
Title: "Error"
Description: "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."

* ^url = $icp-error-vs
* insert Acc-Vocabulary-Metadata

* include codes from system $icp-error-cs


CodeSystem: ICPError
Id: acc-icp-error
Title: "Error"
Description: "The type of ICP service. Currently only musculoskeletal (msk) is allowed, with more to be added in the future, e.g. concussion."

* ^url = $icp-error-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata

* #icp-val-01
    "Invalid Provider ID"
    "The Provider record is not currently active or in use. Please contact ACC Digital Operations via digitaloperations@acc.co.nz"
* #icp-val-02
    "Invalid Vendor ID"
    "The Vendor record is not currently active or in use. Please contact ACC Digital Operations via digitaloperations@acc.co.nz"
* #icp-val-03
    "Claim number not found"
    "The specified claim number was not found."
* #icp-val-04
    "Claim number found but DOB doesn't match"
    "The Claim and specified Patient DOB do not match."
* #icp-val-05
    "Cover Status is Held"
    "This claim has not yet been accepted for cover and cannot be entered into ICP. Please contact ACC on 0800 101 996 for more information if required."
* #icp-val-06
    "Cover Status is Decline"
    "This claim has been declined for cover and cannot be entered into ICP."
* #icp-val-07
    "TPA Exclusion"
    "This claim is managed by a Third Party Administrator (TPA) and cannot be entered into ICP. Please ask the Client to contact their TPA Provider and discuss having their claim returned to ACC if they would like to enter ICP."
* #icp-val-08
    "This claim is not eligible for ICP"
    "This claim is not eligible for ICP. Please check that the correct claim number has been used."
* #icp-val-09
    "This claim is unlikely to be eligible for ICP"
    "This claim is unlikely to be eligible for ICP. Please check the claim number used. Contact ACC on 0800 101 996 ext. 77097 for more information or have a staff member assess eligibility."
* #icp-val-10
    "This claim requires assessment from an ACC staff member before it can be entered into ICP"
    "This claim requires assessment from an ACC staff member before it can be entered into ICP. Please contact ACC on 0800 101 996 ext. 77097 to discuss."
* #icp-val-11
    "That claim already has an ICP subcase"
    "That claim already has an ICP subcase."
* #icp-val-12
    "There's no ICP Subcase against the specified Claim in Eos"
    "Unable to find an ICP Case against this Claim. Please contact ACC via registrations@acc.co.nz"
* #icp-val-13
    "There's an ICP Subcase against the specified Claim in Eos but the Status isn't Accepted"
    "The ICP Case against this Claim is no longer Active. Please contact ACC via registrations@acc.co.nz"
* #icp-val-14
    "There's an Active ICP Subcase against the specified Claim in Eos but it came from a different Vendor ID."
    "The ICP Case against this claim belongs to a different supplier. Please contact ACC via registrations@acc.co.nz"
* #icp-val-1000
    "The claim number can only contain letters and numbers, no more than 12 characters in all."
    "The claim number can only contain letters and numbers, no more than 12 characters in all."
* #icp-val-1001
    "The claim number is required."
    "The claim number is required."
* #icp-val-1002
    "The vendor ID is invalid;  it can only contain letters, numbers, and '/', no more than 12 characters in all."
    "The vendor ID is invalid;  it can only contain letters, numbers, and '/', no more than 12 characters in all."
* #icp-val-1003
    "The provider ID can only contain letters and numbers, no more than 12 characters in all."
    "The provider ID can only contain letters and numbers, no more than 12 characters in all."
* #icp-val-1004
    "The ICP Case against this claim is currently being processed. Please try again in 5 minutes or contact ACC on 0800 101 996 ext. 77097 to discuss."
    "The ICP Case against this claim is currently being processed. Please try again in 5 minutes or contact ACC on 0800 101 996 ext. 77097 to discuss."
* #icp-val-9000
    "There is an ACC system issue. You'll need to resubmit your content later. Advise ACC Digital Operations at digitaloperations@acc.co.nz."
    "There is an ACC system issue. You'll need to resubmit your content later. Advise ACC Digital Operations at digitaloperations@acc.co.nz."