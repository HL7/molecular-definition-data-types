// Alias: $LNC = http://loinc.org
Alias: $PHV = https://www.pharmvar.org

Instance: example-allelesliced-cyp2c19-1016
InstanceOf: Allele
Description: "A simple Allele example"
Usage: #example
* moleculeType.coding = MoleculeType#rna "RNA Sequence"
* type.coding = MoleculeType#rna "RNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1016
* location.sequenceLocation.coordinateInterval.endQuantity.value = 1016
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].code.coding.system = $PHV#PV00076 "CYP2C19*1.002"
* representation[alleleState].code.coding.version = "6.2"
* representation[alleleState].code.coding.display = "CYP2C19*1.002"
* representation[alleleState].literal.value = "G"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "A"


Instance: example-allelesliced-cyp2c19-1016-cont
InstanceOf: Allele
Description: "Example of Allele profile including slices for CYP2C19 position 1016 while leveraging contained resources"
Usage: #example
* contained = example-sequence-nm0007694-acc
* moleculeType.coding = MoleculeType#rna "RNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "#example-sequence-nm0007694-acc"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding.system = "http://loinc.org"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1016
* location.sequenceLocation.coordinateInterval.endQuantity.value = 1016
* representation[alleleState].code.coding.system = $PHV#PV00076 "CYP2C19*1.002"
* representation[alleleState].code.coding.version = "6.2"
* representation[alleleState].code.coding.display = "CYP2C19*1.002"
* representation[alleleState].literal.value = "G"
* representation[contextState].literal.value = "A"

Instance: example-sequence-nm0007694-acc
InstanceOf: Sequence
Usage: #inline
* moleculeType.coding = MoleculeType#rna "RNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be change later to an additional info other than this if moleculeType
* representation[0].code.coding = $REFSEQ#NM_000769.4 "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), mRNA"
