Alias: $REFSEQ = http://www.ncbi.nlm.nih.gov/refseq

Instance: example-sequence-a-dna-iupac
InstanceOf: Sequence
Description: "Simple Sequence example with IUPAC encoding"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].literal.encoding.coding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[0].literal.value = "A"


Instance: example-sequence-a-aa-iupac
InstanceOf: Sequence
Description: "Simple Sequence example with IUPAC encoding"
Usage: #example
* moleculeType.coding = MoleculeType#aa "AA Sequence"
* type.coding = MoleculeType#aa "AA Sequence"
// * representation[0].literal.encoding.coding = Encodings#aa-1-noamb-20common "Amino acid, 1 letter, no ambiguity, 20 common"
* representation[0].literal.encoding.coding = Encodings#amino-acid-1letter-unambiguous "Amino Acid 1-letter Unambiguous Symbols"
* representation[0].literal.value = "A"


Instance: example-genomic-cyp2c19-accession
InstanceOf: Sequence
Description: "A sequence represented as a code using an accession number"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].code.coding = $REFSEQ#NG_008384.3 "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), RefSeqGene (LRG_584) on chromosome 10"


Instance: example-sequence-cyp2c19-url
InstanceOf: Sequence
Description: "A sequence represented as a resolvable URL"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].resolvable = Reference(DocumentReference/example-genomicFile-cyp2c19-url)


Instance: example-sequence-cyp2c19-attached
InstanceOf: Sequence
Description: "A sequence represented as an attachement"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].resolvable = Reference(DocumentReference/example-genomicFile-cyp2c19-attached)


Instance: example-sequence-cyp2c19-accession
InstanceOf: Sequence
Description: "A sequence represented as an attachement"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].resolvable = Reference(DocumentReference/example-genomicFile-cyp2c19-accession)


Instance: example-sequence-cyp2c19-gene-region
InstanceOf: Sequence
Description: "A sequence represented as an attachement"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation.extracted.startingMolecule.reference = "MolecularDefinition/example-sequence-cyp2c19-accession"
// * representation.extracted.startingMolecule.type = "MolecularDefinition"
// * representation.extracted.startingMolecule.display = "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), RefSeqGene (LRG_584) on chromosome 10"
* representation.extracted.coordinateInterval.coordinateSystem.system.coding.system = "http://loinc.org"
* representation.extracted.coordinateInterval.coordinateSystem.system.coding.code = LA30100-4
* representation.extracted.coordinateInterval.coordinateSystem.system.coding.display = "0-based interval counting"
* representation.extracted.coordinateInterval.coordinateSystem.system.text = "0-based interval counting"
* representation.extracted.coordinateInterval.startQuantity.value = 5001
* representation.extracted.coordinateInterval.endQuantity.value = 97867
* representation.extracted.reverseComplement = false

