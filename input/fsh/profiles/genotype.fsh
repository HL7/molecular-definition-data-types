Profile:     Genotype
Parent:      MolecularDefinition
Description: "Genotype profile of MolecularDefinition"
Id: genotype

* ^experimental = true // more discussion and modeling work are still needed

* type MS
* type 1..1
* type from MoleculeTypeVS (required)
* topology from TopologyVS (required)
* location 0..0

* member MS
* member 0..*
* member only Reference(Allele or Haplotype)

// * representation.literal 0..1 // need to be discussed
// * representation.resolvable 0..1 // need to be discussed
* representation.extracted 0..0
* representation.repeated 0..0
* representation.concatenated 0..0
* representation.relative 0..0