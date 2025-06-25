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
