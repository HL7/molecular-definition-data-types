Instance: example-genotype-hla-00001-and-2
InstanceOf: Genotype
Description: "Example of Genotype profile representing HLA-A*01:01:01:01 and HLA-A*01:02:01:01 haplotypes"
Usage: #example
* moleculeType.coding = MoleculeType#dna "DNA Sequence"
* type.coding = MoleculeType#dna "DNA Sequence" // need to be changed later to an additional info other than this if moleculeType
* member[0] = Reference(MolecularDefinition/example-haplotype-hla-00001)
* member[+] = Reference(MolecularDefinition/example-haplotype-hla-00002)
