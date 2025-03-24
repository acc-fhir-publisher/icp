Profile:        IcpTBICaseExit
Parent:         acc-icp-case
Id:             acc-icp-tbi-case-exit
Title:          "ACC ICP Episode of Care Exit Resource"
Description:    "This profile supports suppliers needing to inform ACC of a patient being exited from their ICP service."

* ^url = $icp-tbi-case-exit
* insert Acc-Metadata-Tbi

* contained contains 
    patient 1..1

* contained[patient] only $icp-patient

* type 0..0

* status ^definition = "The Status of the ICP case (must be Finished)."

* extension 2..2
* extension contains    
    $icp-exit-reason named exit-reason 1..1

* extension[exit-reason].extension[reason].url = "reason" (exactly)
* extension[exit-reason].extension[reason].value[x] only code
* extension[exit-reason].extension[reason].valueCode 1..1
* extension[exit-reason].extension[reason].valueCode from $icp-tbi-exit-reason-vs (required) 

* obeys finished-status-invariant