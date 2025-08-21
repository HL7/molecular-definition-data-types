// Alias: $LNC = http://loinc.org
Alias: $PHV = http://www.pharmvar.org


// CYP2C19*1.002:c.[661G; 1016G]

Instance: example-allelesliced-cyp2c19-661g
InstanceOf: Allele
Description: "A simple Allele example showing CYP2C19*1.002:c.661G"
Usage: #example
* moleculeType.coding = MoleculeType#rna "RNA Sequence"
* type.coding = MoleculeType#rna "RNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 661
* location.sequenceLocation.coordinateInterval.endQuantity.value = 661
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].code.coding = $PHV#PV00076 "CYP2C19*1.002"
* representation[alleleState].code.coding.display = "CYP2C19*1.002"
* representation[alleleState].literal.value = "G"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "G"


Instance: example-allelesliced-cyp2c19-661a
InstanceOf: Allele
Description: "A simple Allele example showing CYP2C19*3.002:c.661A"
Usage: #example
* moleculeType.coding = MoleculeType#rna "RNA Sequence"
* type.coding = MoleculeType#rna "RNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 661
* location.sequenceLocation.coordinateInterval.endQuantity.value = 661
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].code.coding = $PHV#PV00076 "CYP2C19*3.002"
* representation[alleleState].code.coding.display = "CYP2C19*3.002"
* representation[alleleState].literal.value = "A"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "G"



Instance: example-allelesliced-cyp2c19-1016g
InstanceOf: Allele
Description: "A simple Allele example showing a G at position 1016 on NM_000769.4, applicable to both CYP2C19*1.002 and CYP2C19*3.002"
Usage: #example
* moleculeType.coding = MoleculeType#rna "RNA Sequence"
* type.coding = MoleculeType#rna "RNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1016
* location.sequenceLocation.coordinateInterval.endQuantity.value = 1016
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].code.coding = $PHV#PV00076 "CYP2C19*1.002"
* representation[alleleState].code.coding.display = "CYP2C19*1.002"
* representation[alleleState].literal.value = "G"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
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
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "T"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
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
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "C"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
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
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "C"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
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
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "G"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
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
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "C"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "C"


// HLA00002

Instance: example-allelesliced-hla-98-c
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[98C])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 98
* location.sequenceLocation.coordinateInterval.endQuantity.value = 98
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "C"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "T"


Instance: example-allelesliced-hla-121-a
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[121A])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 121
* location.sequenceLocation.coordinateInterval.endQuantity.value = 121
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "A"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "C"


Instance: example-allelesliced-hla-123-t
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[123T])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 123
* location.sequenceLocation.coordinateInterval.endQuantity.value = 123
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "T"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "C"


Instance: example-allelesliced-hla-126-a
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[126A])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 126
* location.sequenceLocation.coordinateInterval.endQuantity.value = 126
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "A"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "G"


Instance: example-allelesliced-hla-144-a
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[144A])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 144
* location.sequenceLocation.coordinateInterval.endQuantity.value = 144
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "A"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "C"

// Terminology binding examples

Instance: example-allelesliced-cyp2c19-661g-coded
InstanceOf: Allele
Description: "A simple Allele example showing CYP2C19*1.002:c.661G"
Usage: #example
* moleculeType.coding = MoleculeType#rna "RNA Sequence"
* type.coding = MoleculeType#rna "RNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.coordinateSystem.origin = CoordinateOriginVS#sequence-start "Sequence start"
* location.sequenceLocation.coordinateInterval.coordinateSystem.normalizationMethod = NormalizationMethodVS#left-shift "Left shift"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 661
* location.sequenceLocation.coordinateInterval.endQuantity.value = 661
* location.sequenceLocation.strand = StrandOrientationVS#forward "Forward strand"
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].code.coding = $PHV#PV00076 "CYP2C19*1.002"
* representation[alleleState].code.coding.display = "CYP2C19*1.002"
* representation[alleleState].literal.value = "G"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.value = "G"


Instance: example-allelesliced-hla-144-a-coded
InstanceOf: Allele
Description: "An Allele example representing a part of HLA00001.1:c.[144A])"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-hla000011"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: HLA00001"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.coordinateSystem.origin = CoordinateOriginVS#sequence-start "Sequence start"
* location.sequenceLocation.coordinateInterval.coordinateSystem.normalizationMethod = NormalizationMethodVS#left-shift "Left shift"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 144
* location.sequenceLocation.coordinateInterval.endQuantity.value = 144
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
* representation[alleleState].literal.value = "A"
* representation[alleleState].literal.encoding = EncodingsVS#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
* representation[contextState].literal.encoding = EncodingsVS#nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* representation[contextState].literal.value = "C"
