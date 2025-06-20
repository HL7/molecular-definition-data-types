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
* representation[alleleState].code.coding = $PHV#PV00076 "CYP2C19*1.002"
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
* representation[alleleState].code.coding = $PHV#PV00076 "CYP2C19*1.002"
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


Instance: example-allelesliced-hla-98-t
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[98T])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 98
* location.sequenceLocation.coordinateInterval.endQuantity.value = 98
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "T"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "T"


Instance: example-allelesliced-hla-121-c
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[121C])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 121
* location.sequenceLocation.coordinateInterval.endQuantity.value = 121
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "C"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "C"


Instance: example-allelesliced-hla-123-c
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[123C])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 123
* location.sequenceLocation.coordinateInterval.endQuantity.value = 123
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "C"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "C"


Instance: example-allelesliced-hla-126-g
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[126G])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 126
* location.sequenceLocation.coordinateInterval.endQuantity.value = 126
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "G"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "G"


Instance: example-allelesliced-hla-144-c
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[144C])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 144
* location.sequenceLocation.coordinateInterval.endQuantity.value = 144
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "C"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "C"


// HLA00002

Instance: example-allelesliced-hla-98-c
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[98T])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 98
* location.sequenceLocation.coordinateInterval.endQuantity.value = 98
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "C"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "T"


Instance: example-allelesliced-hla-121-a
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[121C])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 121
* location.sequenceLocation.coordinateInterval.endQuantity.value = 121
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "A"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "C"


Instance: example-allelesliced-hla-123-t
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[123C])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 123
* location.sequenceLocation.coordinateInterval.endQuantity.value = 123
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "T"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "C"


Instance: example-allelesliced-hla-126-a
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[126G])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 126
* location.sequenceLocation.coordinateInterval.endQuantity.value = 126
//* representation[0].focus.coding = MolecularDefinitionFocusCS#allele-state "Allele State"
* representation[alleleState].literal.value = "A"
//* representation[+].focus.coding = MolecularDefinitionFocusCS#context-state "Context State"
* representation[contextState].literal.value = "G"