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