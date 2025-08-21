RuleSet: SetLiteralBindings

* representation.literal.encoding from EncodingsVS (required)

* representation.literal.value ^binding.description = "Refer to the addtional bindings for the literal encoding."
* representation.literal.value ^binding.strength = #extensible

* representation.literal.value ^binding.additional[+].key = "NucleotideDNA1LetterUnambiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = Canonical(NucleotideDNA1LetterUnambiguous)

* representation.literal.value ^binding.additional[+].key = "NucleotideDNA1LetterWithN"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = Canonical(NucleotideDNA1LetterWithN)

* representation.literal.value ^binding.additional[+].key = "NucleotideDNA1LetterAmbiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = Canonical(NucleotideDNA1LetterAmbiguous)

* representation.literal.value ^binding.additional[+].key = "NucleotideRNA1LetterUnambiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = Canonical(NucleotideRNA1LetterUnambiguous)

* representation.literal.value ^binding.additional[+].key = "AminoAcid1LetterUnambiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = Canonical(AminoAcid1LetterUnambiguous)

* representation.literal.value ^binding.additional[+].key = "AminoAcid1LetterAmbiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = Canonical(AminoAcid1LetterAmbiguous)

* representation.literal.value ^binding.additional[+].key = "AminoAcid3LetterUnambiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = Canonical(AminoAcid3LetterUnambiguous)

* representation.literal.value ^binding.additional[+].key = "AminoAcid3LetterAmbiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = Canonical(AminoAcid3LetterAmbiguous)
