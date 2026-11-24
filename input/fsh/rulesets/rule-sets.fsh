RuleSet: SetLiteralBindings

* representation.literal.encoding from $CGLiteralEncodingVS (required)

* representation.literal.value ^binding.description = "Refer to the addtional bindings for the literal encoding."
* representation.literal.value ^binding.strength = #extensible

* representation.literal.value ^binding.additional[+].key = "NucleotideDNA1LetterUnambiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = "http://hl7.org/fhir/uv/cg-incubator/ValueSet/nucleotide-dna-1letter-unambiguous"

* representation.literal.value ^binding.additional[+].key = "NucleotideDNA1LetterWithN"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = "http://hl7.org/fhir/uv/cg-incubator/ValueSet/nucleotide-dna-1letter-with-n"

* representation.literal.value ^binding.additional[+].key = "NucleotideDNA1LetterAmbiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = "http://hl7.org/fhir/uv/cg-incubator/ValueSet/nucleotide-dna-1letter-ambiguous"

* representation.literal.value ^binding.additional[+].key = "NucleotideRNA1LetterUnambiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = "http://hl7.org/fhir/uv/cg-incubator/ValueSet/nucleotide-rna-1letter-unambiguous"

* representation.literal.value ^binding.additional[+].key = "AminoAcid1LetterUnambiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = "http://hl7.org/fhir/uv/cg-incubator/ValueSet/amino-acid-1letter-unambiguous"

* representation.literal.value ^binding.additional[+].key = "AminoAcid1LetterAmbiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = "http://hl7.org/fhir/uv/cg-incubator/ValueSet/amino-acid-1letter-ambiguous"

* representation.literal.value ^binding.additional[+].key = "AminoAcid3LetterUnambiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = "http://hl7.org/fhir/uv/cg-incubator/ValueSet/amino-acid-3letter-unambiguous"

* representation.literal.value ^binding.additional[+].key = "AminoAcid3LetterAmbiguous"
* representation.literal.value ^binding.additional[=].purpose = #extensible
* representation.literal.value ^binding.additional[=].valueSet = "http://hl7.org/fhir/uv/cg-incubator/ValueSet/amino-acid-3letter-ambiguous"
