Instance: example-genotype-hla-00001-and-2
InstanceOf: Genotype
Description: "Example of Genotype profile representing HLA-A*01:01:01:01 and HLA-A*01:02:01:01 haplotypes"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-haplotype-hla-00001)
* member[+] = Reference(MolecularDefinition/example-haplotype-hla-00002)


Instance: example-genotype-cyp2c19-1002-and-3
InstanceOf: Genotype
Description: "Example of Genotype profile representing CYP2C19*1.002 and CYP2C19*3.00 haplotypes"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-haplotype-cyp2c19-1002)
* member[+] = Reference(MolecularDefinition/example-haplotype-cyp2c19-3002)


Instance: example-genotype-cyp2c19-1b-and-1c
InstanceOf: Genotype
Description: "Example of Genotype profile representing CYP2C19*1.002 (CYP2C19*1B) and CYP2C19*1.003 (CYP2C19*1C) haplotypes"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-haplotype-cyp2c19-1b)
* member[+] = Reference(MolecularDefinition/example-haplotype-cyp2c19-1c)

// for VKORC1
Instance: example-genotype-vkorc1-31096368c-and-31096368t
InstanceOf: Genotype
Description: "Example of Genotype profile representing VKORC1 C and T haplotypes"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-haplotype-vkorc1-31096368c)
* member[+] = Reference(MolecularDefinition/example-haplotype-vkorc1-31096368t)

Instance: example-genotype-vkorc1-31096368t-and-31096368t
InstanceOf: Genotype
Description: "Example of Genotype profile representing VKORC1 C and T haplotypes"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-haplotype-vkorc1-31096368t)
* member[+] = Reference(MolecularDefinition/example-haplotype-vkorc1-31096368t)