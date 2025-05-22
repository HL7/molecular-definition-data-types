Instance: example-sequence-a-dna-iupac
InstanceOf: Sequence
Description: "Simple Sequence example with IUPAC encoding"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].literal.encoding.coding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide, DNA, 1 letter, no ambiguity"
* representation[0].literal.value = "A"



