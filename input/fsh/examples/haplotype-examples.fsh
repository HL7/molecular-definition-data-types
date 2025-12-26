Instance: example-haplotype-hla-00001
InstanceOf: Haplotype
Description: "Example of Haplotype profile representing HLA-A*01:01:01:01 HLA00001.1:c.[98T; 121C; 123C; 126G; 144C]"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-hla-98-t)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-121-c)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-123-c)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-126-g)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-144-c)


Instance: example-haplotype-hla-00002
InstanceOf: Haplotype
Description: "Example of Haplotype profile representing HLA-A*01:02:01:01 as HLA00001.1:c.[98C; 121A; 123T; 126A; 144A]"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-hla-98-c)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-121-a)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-123-t)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-126-a)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-144-a)


// CYP2C19*1.002:c.[661G; 1016G]

Instance: example-haplotype-cyp2c19-1002
InstanceOf: Haplotype
Description: "Example of Haplotype profile representing CYP2C19*1.002 as CYP2C19*1.002:c.[661G; 1016G]"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-cyp2c19-661g)
* member[+] = Reference(MolecularDefinition/example-allelesliced-cyp2c19-1016g)


// CYP2C19*3.002:c.[661A; 1016G]
Instance: example-haplotype-cyp2c19-3002
InstanceOf: Haplotype
Description: "Example of Haplotype profile representing CYP2C19*3.002 as CYP2C19*3.002:c.[661A; 1016G]"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-cyp2c19-661a)
* member[+] = Reference(MolecularDefinition/example-allelesliced-cyp2c19-1016g)

// CYP2C19*1.002 (CYP2C19*1B)
Instance: example-haplotype-cyp2c19-1b
InstanceOf: Haplotype
Description: "Example of Haplotype profile representing CYP2C19*1.002 (CYP2C192*1B) as T at 124 and G at 1016 in reference to NM_000769.4"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-cyp2c19-1b-124t)
* member[+] = Reference(MolecularDefinition/example-allelesliced-cyp2c19-1b-1016g)


// CYP2C19*1.003 (CYP2C19*1C)
Instance: example-haplotype-cyp2c19-1c
InstanceOf: Haplotype
Description: "Example of Haplotype profile representing CYP2C19*1.003 (CYP2C19*1C) as G at 1016 in reference to NM_000769.4"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-cyp2c19-1b-1016g)


// VKORC1 reference (C)
Instance: example-haplotype-vkorc1-31096368c
InstanceOf: Haplotype
Description: "Example of Haplotype profile representing VKORC1 rs9923231 reference (C) at 31096368 in reference to NC_000016.10"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-vkorc1-31096368c)


// VKORC1 variant (T)
Instance: example-haplotype-vkorc1-31096368t
InstanceOf: Haplotype
Description: "Example of Haplotype profile representing VKORC1 having (T) at 31096368 in reference to NC_000016.10"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-vkorc1-31096368t)