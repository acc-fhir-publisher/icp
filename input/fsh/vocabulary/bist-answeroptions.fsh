ValueSet: BISTYesNo
Id: acc-icp-tbi-bist-answeroption-yesno
Title: "BIST Answer Option ( no | yes )"
Description: "ValueSet for response options Yes and No."

* ^url = $icp-tbi-bist-answeroption-yesno-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include $icp-tbi-bist-answeroption-yesno-cs#yes
* include $icp-tbi-bist-answeroption-yesno-cs#no

ValueSet: BISTYesNoUnknown
Id: acc-icp-tbi-bist-answeroption-yesno-unknown
Title: "BIST Answer Option ( no | yes | unknown)"
Description: "ValueSet for response options Yes, No, and Unknown."

* ^url = $icp-tbi-bist-answeroption-yesnounknown-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include $icp-tbi-bist-answeroption-yesno-cs#yes
* include $icp-tbi-bist-answeroption-yesno-cs#no
* include $icp-tbi-bist-answeroption-yesno-cs#unknown


CodeSystem: BISTYesNo
Id: acc-icp-tbi-bist-answeroption-yesno
Title: "STarTC Answer Option"
Description: "CodeSystem for response "

* ^url = $icp-tbi-bist-answeroption-yesno-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata-Tbi

* #yes "Yes"
  // * ^property[0].code = $ordinal-value#0
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#0
* #no "No"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#1
* #unknown "Unknown"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#0

ValueSet: BISTBetterWorseSame
Id: acc-icp-tbi-bist-answeroption-betterworsesame
Title: "BIST Answer Option ( Better | Worse | About the same )"
Description: "ValueSet for response options Better, Worse, and About the same."

* ^url = $icp-tbi-bist-answeroption-betterworsesame-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include codes from system $icp-tbi-bist-answeroption-betterworsesame-cs

CodeSystem: BISTBetterWorseSame
Id: acc-icp-tbi-bist-answeroption-betterworsesame
Title: "BIST Answer Option ( Better | Worse | About the same )"
Description: "CodeSystem for response "

* ^url = $icp-tbi-bist-answeroption-betterworsesame-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata-Tbi

* #better "Better"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#0
* #worse "Worse"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#1
* #aboutthesame "About the same"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#2

ValueSet: BISTRange
Id: acc-icp-tbi-bist-answeroption-range
Title: "BIST Options Range 0-10 ( 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 )"
Description: "ValueSet for BIST options range 0-10."

* ^url = $icp-tbi-bist-answeroption-range-vs
* insert Acc-Vocabulary-Metadata-Tbi

* include codes from system $icp-tbi-bist-answeroption-range-cs

CodeSystem: BISTRange
Id: acc-icp-tbi-bist-answeroption-range
Title: "BIST Answer Range Option CodeSystem"
Description: "CodeSystem for response "

* ^url = $icp-tbi-bist-answeroption-range-cs
* ^caseSensitive = true
* insert Acc-Vocabulary-Metadata-Tbi

* #0 "0"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#0
* #1 "1"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#1
* #2 "2"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#2
* #3 "3"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#3
* #4 "4"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#4
* #5 "5"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#5
* #6 "6"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#6
* #7 "7"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#7
* #8 "8"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#8
* #9 "9"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#9
* #10 "10"
  // * ^property[0].valueCoding.system = $ordinal-value
  // * ^property[0].valueCoding.code = $ordinal-value#10