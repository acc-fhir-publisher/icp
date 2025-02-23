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
    "The employer we hold on file for this Client belongs to the Accredited Employer Programme and cannot be entered into ICP. If this is a non-work injury, please ask the Client to contact their Third Party Administrator Provider and discuss having their claim returned to ACC if they would like to enter ICP."
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
    "The active ICP case of the same ICP Service Type already exists for this claim."
    "This claim already has an ICP Case against it. Please contact ACC on 0800 101 996 ext. 77097 to discuss."
* #icp-val-12
    "There's no ICP Subcase against the specified Claim in Eos"
    "Unable to find an ICP Case against this Claim. Please contact ACC via registrations@acc.co.nz"
* #icp-val-13
    "There's an ICP Subcase against the specified Claim in Eos but the Status isn't Accepted"
    "The ICP Case against this Claim is no longer Active. Please contact ACC via registrations@acc.co.nz"
* #icp-val-14
    "There's an Active ICP Subcase against the specified Claim in Eos but it came from a different Vendor ID."
    "The ICP Case against this claim belongs to a different supplier. Please contact ACC via registrations@acc.co.nz"
* #icp-val-15
    "The active ICP case against the specified Claim has already been accepted by this Vendor ID."
    "The ICP Case against this claim has already been accepted by this Vendor ID. Please contact ACC via registrations@acc.co.nz"
* #icp-val-1000
    "The claim number can only contain letters and numbers, no more than 7 characters in all."
    "The claim number can only contain letters and numbers, no more than 7 characters in all."
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
* #icp-val-1005
    "The date cannot be before 1900-01-01."
    "The date cannot be before 1900-01-01."
* #icp-auth-2000
    "{EmailAddress} isn't a valid user. Contact ACC Digital Operations at digitaloperations@acc.co.nz to arrange permission."
    "{EmailAddress} isn't a valid user. Contact ACC Digital Operations at digitaloperations@acc.co.nz to arrange permission."
* #icp-auth-2001
    "You are not authorised to access this service. Contact ACC Digital Operations at digitaloperations@acc.co.nz to arrange permission."
    "You are not authorised to access this service. Contact ACC Digital Operations at digitaloperations@acc.co.nz to arrange permission."
* #icp-auth-2002
    "You are not authorised to access this vendor record. Contact ACC Digital Operations at digitaloperations@acc.co.nz to arrange permission."
    "You are not authorised to access this vendor record. Contact ACC Digital Operations at digitaloperations@acc.co.nz to arrange permission." 
* #bist-val-3000
    "Unable to retrieve Questionnaire matching Questionnaire response version."
    "Unable to retrieve Questionnaire matching Questionnaire response version."
* #bist-val-3001
    "BIST version number is required."
    "BIST version number is required."
* #bist-val-3002
    "BIST instance number is required."
    "BIST instance number is required."
* #bist-val-3003
    "Additional advice line is required when primary advice is not followed."
    "Additional advice line is required when primary advice is not followed."
* #bist-val-3004
    "Mismatch between vomit indicator and numerical response."
    "Mismatch between vomit indicator and numerical response."
* #bist-val-3005
    "Mismatch between loss of consciousness indicator and numerical response."
    "Mismatch between loss of consciousness indicator and numerical response."  
* #bist-val-3006
    "Required duration for loss of consciousness is missing."
    "Required duration for loss of consciousness is missing."
* #bist-val-3007
    "A weighting for this vomit indicator is required."
    "A weighting for this vomit indicator is required."
* #bist-val-3008
    "A weighting for loss of consciousness indicator is required."
    "A weighting for loss of consciousness indicator is required."
* #bist-val-3009
    "A weighting for patient experience is required."
    "A weighting for patient experience is required."
* #bist-val-3010
    "A weighting for mental health indicator is required."
    "A weighting for mental health indicator is required."
* #bist-val-3011
    "A weighting for migraine indicator is required."
    "A weighting for migraine indicator is required."
* #bist-val-3012
    "Symptom scores more than 24 hours post-injury must be out of 160."
    "Symptom scores more than 24 hours post-injury must be out of 160."
* #bist-val-3013
    "Symptom scores less than 24 hours post-injury must be out of 120."
    "Symptom scores less than 24 hours post-injury must be out of 120."
* #bist-val-3014
    "Injury recency mismatch."
    "Injury recency mismatch."
* #bist-val-3015
    "BIST is not a recommended tool for those aged under 8 years old."
    "BIST is not a recommended tool for those aged under 8 years old."    
* #bist-val-3016
    "Incorrect secondary advice provided."
    "Incorrect secondary advice provided."
* #bist-val-3017
    "Consultation date must be after accident date."
    "Consultation date must be after accident date."
* #bist-val-3018
    "Patient date of birth must be in the past."
    "Patient date of birth must be in the past."
* #bist-val-3019
    "Accident date cannot be in the future."
    "Accident date cannot be in the future."
* #bist-val-3020
    "Injury occurred within past 24 hours is a mandatory field."
    "Injury occurred within past 24 hours is a mandatory field."
* #bist-val-3021
    "High risk indicator is a mandatory field."
    "High risk indicator is a mandatory field."
* #bist-val-3022
    "Traumatic circumstances indicator is a mandatory field."
    "Traumatic circumstances indicator is a mandatory field."
* #bist-val-3023
    "Was anyone else with you indicator is a mandatory field."
    "Was anyone else with you indicator is a mandatory field."
* #bist-val-3024
    "Vomit indicator is a mandatory field."
    "Vomit indicator is a mandatory field."
* #bist-val-3025
    "Previous concussion indicator is a mandatory field."
    "Previous concussion indicator is a mandatory field."
* #bist-val-3026
    "Medication indicator is a mandatory field."
    "Medication indicator is a mandatory field."
* #bist-val-3027
    "Mental health indicator is a mandatory field."
    "Mental health indicator is a mandatory field."
* #bist-val-3028
    "Migrain history indicator is a mandatory field."
    "Migrain history indicator is a mandatory field."
* #bist-val-3029
    "Weighting error."
    "Weighting error."
* #icp-val-9000
    "There is an ACC system issue. You'll need to resubmit your content later. Advise ACC Digital Operations at digitaloperations@acc.co.nz."
    "There is an ACC system issue. You'll need to resubmit your content later. Advise ACC Digital Operations at digitaloperations@acc.co.nz."
* #icp-val-9001
    "There is an ACC system issue. You'll need to resubmit your content later. If the issue persists please advise the ACC Digital Operations team at digitaloperations@acc.co.nz."
    "There is an ACC system issue. You'll need to resubmit your content later. If the issue persists please advise the ACC Digital Operations team at digitaloperations@acc.co.nz."
