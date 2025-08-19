Profile:     Haplotype
Parent:      MolecularDefinition
Description: "Haplotype profile of Molecular Definition Resource"
Id: haplotype

* ^experimental = true // more discussion and modeling work are still needed

* type MS
* type 1..1
* type from MoleculeTypeVS (required)
* topology from TopologyVS (required)
* location 0..0

* member MS
* member 0..*
* member only Reference(Allele)

* representation.literal 0..0
// * representation.resolvable 0..1 // need to be discussed
* representation.extracted 0..0
* representation.repeated 0..0
* representation.concatenated 0..0
* representation.relative 0..0
