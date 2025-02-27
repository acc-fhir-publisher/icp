ValueSet: STarTCAgreeDisagree
Id: acc-icp-tbi-startc-answeroption-agreedisagree
Title: "STarTC Answer Option ( disagree | agree )"
Description: "ValueSet for response options such as Agree and Disagree."

* ^url = $icp-tbi-startc-answeroption-agreedisagree-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include codes from system $icp-tbi-startc-answeroption-agreedisagree-cs


CodeSystem: STarTCAgreeDisagree
Id: acc-icp-tbi-startc-answeroption-agreedisagree
Title: "STarTC Answer Option"
Description: "CodeSystem for response options such as Agree and Disagree with ordinal values."

* ^url = $icp-tbi-startc-answeroption-agreedisagree-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata-Tbi

* #disagree "Disagree"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#0
* #agree "Agree"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#1


ValueSet: STarTCOverall
Id: acc-icp-tbi-startc-answeroption-overall
Title: "Start-C Overall Options ( not-at-all | slightly | moderately | very-much | extremely )"
Description: "ValueSet for overall STarT-C concussion symptoms with ordinal values."

* ^url = $icp-tbi-startc-answeroption-overall-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include codes from system $icp-tbi-startc-answeroption-overall-cs

CodeSystem: STarTCOverall
Id: acc-icp-tbi-startc-answeroption-overall
Title: "Start-C Overall Option CodeSystem"
Description: "CodeSystem for overall STarT-C concussion symptoms with ordinal values."

* ^url = $icp-tbi-startc-answeroption-overall-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata-Tbi

* #not-at-all "Not at all"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#0
* #slightly "Slightly"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#0
* #moderately "Moderately"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#0
* #very-much "Very Much"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#1
* #extremely "Extremely"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#1