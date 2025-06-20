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
Description: "Example of Haplotype profile representing HLA-A*01:02:01:01 as HLA00001.1:c.[98T>C; 121C>A; 123C>T; 126G>A; 144C>A]"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-allelesliced-hla-98-c)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-121-a)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-123-t)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-126-a)
* member[+] = Reference(MolecularDefinition/example-allelesliced-hla-144-a)