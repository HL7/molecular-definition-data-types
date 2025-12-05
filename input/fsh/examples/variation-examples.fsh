Alias: $VRN = http://varnomen.hgvs.org


Instance: example-variation-cyp2c19-1015-spdi
InstanceOf: Variation
Description: "Example of Variation profile of CYP2C19 at Position 1015 as SPDI"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30100-4 "0-based interval counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1015
* representation[referenceState].literal.value = "A"
* representation[alternativeState].literal.value = "G"


Instance: example-variation-tri-allelic-ABCB1
InstanceOf: Variation
Description: "Example of Variation profile of tri-allelic variant in ABCB1"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nc00000714-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Homo sapiens chromosome 7, GRCh38.p14 Primary Assembly, NC_000007.14"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30100-4 "0-based interval counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 87531302
* representation[referenceState].literal.value = "A"
* representation[alternativeState].literal.value = "C"
* representation[contextState].literal.value = "T"

// Terminology binding examples

Instance: example-variation-cyp2c19-1015-spdi-coded
InstanceOf: Variation
Description: "Example of Variation profile of CYP2C19 at Position 1015 as SPDI"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30100-4 "0-based interval counting"
* location.sequenceLocation.coordinateInterval.coordinateSystem.origin = CoordinateOrigin#sequence-start "Sequence start"
* location.sequenceLocation.coordinateInterval.coordinateSystem.normalizationMethod = NormalizationMethod#left-shift "Left shift"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1015
* representation[referenceState].literal.encoding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[referenceState].literal.value = "A"
* representation[alternativeState].literal.encoding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[alternativeState].literal.value = "G"

Instance: example-variation-tri-allelic-ABCB1-coded
InstanceOf: Variation
Description: "Example of Variation profile of tri-allelic variant in ABCB1"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nc00000714-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Homo sapiens chromosome 7, GRCh38.p14 Primary Assembly, NC_000007.14"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30100-4 "0-based interval counting"
* location.sequenceLocation.coordinateInterval.coordinateSystem.origin = CoordinateOrigin#sequence-start "Sequence start"
* location.sequenceLocation.coordinateInterval.coordinateSystem.normalizationMethod = NormalizationMethod#left-shift "Left shift"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 87531302
* representation[referenceState].literal.encoding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[referenceState].literal.value = "A"
* representation[alternativeState].literal.encoding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[alternativeState].literal.value = "C"
* representation[contextState].literal.encoding = Encodings#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[contextState].literal.value = "T"


Instance: example-variation-cyp2c19-991-hgvs
InstanceOf: Variation
Description: "Example of Variation profile of CYP2C19 at Position 911 as HGVS"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1015
* location.sequenceLocation.coordinateInterval.endQuantity.value = 1016
* representation[referenceState].literal.value = "A"
* representation[referenceState].code = $VRN#NM_000769.4:c.991A "NM_000769.4:c.991A"
* representation[alternativeState].literal.value = "G"
* representation[alternativeState].code = $VRN#NM_000769.4:c.991A>G "NM_000769.4:c.991A>G"


Instance: example-variation-cyp2c19-1015-vrs
InstanceOf: Variation
Description: "Example of Variation profile of CYP2C19 at Position 1015 as VRS"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30100-4 "0-based interval counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1015
* location.sequenceLocation.coordinateInterval.endQuantity.value = 1016
* representation[referenceState].literal.value = "A"
* representation[alternativeState].literal.value = "G"


Instance: example-variation-cyp2c19-1015-vcf
InstanceOf: Variation
Description: "Example of Variation profile of CYP2C19 at Position 1015 as VCF"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1016
// * location.sequenceLocation.coordinateInterval.endQuantity.value = 1016
* representation[referenceState].literal.value = "A"
* representation[alternativeState].literal.value = "G"