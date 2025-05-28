Alias: $REFSEQ = http://www.ncbi.nlm.nih.gov/refseq
Alias: $LNC = http://loinc.org

Instance: example-sequence-a-dna-iupac
InstanceOf: Sequence
Description: "Simple Sequence example with IUPAC encoding, A"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].literal.encoding.coding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[0].literal.value = "A"


Instance: example-sequence-c-dna-iupac
InstanceOf: Sequence
Description: "Simple Sequence example with IUPAC encoding, C"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].literal.encoding.coding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[0].literal.value = "C"


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
* representation[0].resolvable = Reference(DocumentReference/example-genomicfile-cyp2c19-url)

Instance: example-sequence-nm0007694-url
InstanceOf: Sequence
Description: "A sequence represented as a resolvable URL"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].resolvable = Reference(DocumentReference/example-genomicfile-nm0007694)


Instance: example-sequence-cyp2c19-attached
InstanceOf: Sequence
Description: "A sequence represented as an attachement"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].resolvable = Reference(DocumentReference/example-genomicfile-cyp2c19-attached)


Instance: example-sequence-cyp2c19-accession
InstanceOf: Sequence
Description: "A sequence represented as an attachement"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].resolvable = Reference(DocumentReference/example-genomicfile-cyp2c19-accession)


Instance: example-sequence-cyp2c19-gene-region
InstanceOf: Sequence
Description: "A gene region extracted from a sequence"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation.extracted.startingMolecule.reference = "MolecularDefinition/example-sequence-cyp2c19-accession"
// * representation.extracted.startingMolecule.type = "MolecularDefinition"
// * representation.extracted.startingMolecule.display = "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), RefSeqGene (LRG_584) on chromosome 10"
* representation.extracted.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30100-4 "0-based interval counting"
* representation.extracted.coordinateInterval.startQuantity.value = 5001
* representation.extracted.coordinateInterval.endQuantity.value = 97867
* representation.extracted.reverseComplement = false


Instance: example-sequence-cyp2c19-upstream-region
InstanceOf: Sequence
Description: "An upstream region extracted from a sequence"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation.extracted.startingMolecule.reference = "MolecularDefinition/example-sequence-cyp2c19-accession"
// * representation.extracted.startingMolecule.type = "MolecularDefinition"
// * representation.extracted.startingMolecule.display = "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), RefSeqGene (LRG_584) on chromosome 10"
* representation.extracted.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30100-4 "0-based interval counting"
* representation.extracted.coordinateInterval.startQuantity.value = 1
* representation.extracted.coordinateInterval.endQuantity.value = 5000
* representation.extracted.reverseComplement = false


Instance: example-sequence-cyp2c19-downstream-region
InstanceOf: Sequence
Description: "A downstream region extracted from a sequence"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation.extracted.startingMolecule.reference = "MolecularDefinition/example-sequence-cyp2c19-accession"
// * representation.extracted.startingMolecule.type = "MolecularDefinition"
// * representation.extracted.startingMolecule.display = "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), RefSeqGene (LRG_584) on chromosome 10"
* representation.extracted.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30100-4 "0-based interval counting"
* representation.extracted.coordinateInterval.startQuantity.value = 97868
* representation.extracted.coordinateInterval.endQuantity.value = 99871
* representation.extracted.reverseComplement = false


Instance: example-sequence-cyp2c19-concatenated-regions
InstanceOf: Sequence
Description: "A sequence represented as a concatenation of sequence instances"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation.concatenated.sequenceElement[0].sequence.reference = "MolecularDefinition/example-sequence-cyp2c19-upstream-region"
* representation.concatenated.sequenceElement[=].sequence.type = "MolecularDefinition"
* representation.concatenated.sequenceElement[=].sequence.display = "Sequence CYP2C19 Upstream Region"
* representation.concatenated.sequenceElement[=].ordinalIndex = 0
* representation.concatenated.sequenceElement[+].sequence.reference = "MolecularDefinition/example-sequence-cyp2c19-gene-region"
* representation.concatenated.sequenceElement[=].sequence.type = "MolecularDefinition"
* representation.concatenated.sequenceElement[=].sequence.display = "Sequence CYP2C19 Gene Region"
* representation.concatenated.sequenceElement[=].ordinalIndex = 1
* representation.concatenated.sequenceElement[+].sequence.reference = "MolecularDefinition/example-sequence-cyp2c19-downstream-region"
* representation.concatenated.sequenceElement[=].sequence.type = "MolecularDefinition"
* representation.concatenated.sequenceElement[=].sequence.display = "Sequence CYP2C19 Downstream Region"
* representation.concatenated.sequenceElement[=].ordinalIndex = 2


Instance: example-sequence-cgg
InstanceOf: Sequence
Description: "Simple Sequence example of GGC sequence"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].literal.encoding.coding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[0].literal.value = "CGG"


Instance: example-sequence-fmr1-cgg-20x-repeat
InstanceOf: Sequence
Description: "A sequence example composed of 20x repeats of CGG sequence"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation.repeated.sequenceMotif.reference = "MolecularDefinition/example-sequence-cgg"
* representation.repeated.sequenceMotif.type = "MolecularDefinition"
* representation.repeated.sequenceMotif.display = "cgg"
* representation.repeated.copyCount = 20


Instance: example-sequence-fmr1-cgg-20x-edited-referenced
InstanceOf: Sequence
Description: "A sequence example composed of 20x repeats of CGG sequence edited using referenced resources"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation.relative.startingMolecule.reference = "MolecularDefinition/example-sequence-fmr1-cgg-20x-repeat"
* representation.relative.startingMolecule.type = "MolecularDefinition"
* representation.relative.startingMolecule.display = "CGG 20X"
* representation.relative.edit.editOrder = 0
* representation.relative.edit.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* representation.relative.edit.coordinateInterval.startQuantity.value = 31
* representation.relative.edit.coordinateInterval.endQuantity.value = 31
* representation.relative.edit.replacementMolecule.reference = "MolecularDefinition/example-sequence-a-dna-iupac"
* representation.relative.edit.replacementMolecule.type = "MolecularDefinition"
* representation.relative.edit.replacementMolecule.display = "A"
* representation.relative.edit.replacedMolecule.reference = "MolecularDefinition/example-sequence-c-dna-iupac"
* representation.relative.edit.replacedMolecule.type = "MolecularDefinition"
* representation.relative.edit.replacedMolecule.display = "C"

Instance: replacement
InstanceOf: Sequence
Description: "Simple Sequence example with IUPAC encoding, A"
Usage: #inline
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].literal.encoding.coding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[0].literal.value = "A"


Instance: replaced
InstanceOf: Sequence
Description: "Simple Sequence example with IUPAC encoding, C"
Usage: #inline
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].literal.encoding.coding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[0].literal.value = "C"


Instance: example-sequence-fmr1-cgg-20x-edited-contained
InstanceOf: Sequence
Description: "A sequence example composed of 20x repeats of CGG sequence edited using contained resources"
Usage: #example
* contained[0] = replacement
* contained[+] = replaced
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* moleculeType.coding.display = "DNA Sequence"
* representation.relative.startingMolecule.reference = "MolecularDefinition/example-sequence-fmr1-cgg-20x-repeat"
* representation.relative.startingMolecule.type = "MolecularDefinition"
* representation.relative.startingMolecule.display = "CGG 20X"
* representation.relative.edit.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* representation.relative.edit.replacementMolecule = Reference(replacement)
* representation.relative.edit.replacementMolecule.type = "MolecularDefinition"
* representation.relative.edit.replacementMolecule.display = "A"
* representation.relative.edit.replacedMolecule = Reference(replaced)
* representation.relative.edit.replacedMolecule.type = "MolecularDefinition"
* representation.relative.edit.replacedMolecule.display = "C"