Profile:     Haplotype
Parent:      MolecularDefinition
Description: "Haplotype profile of Molecular Definition"
id: haplotype

* ^experimental = true

* type MS
* type 1..1
* location 0..0

// * member MS
// * member 0..*

* member only Reference(Allele)

* representation.literal 0..0
// * representation.resolvable 0..1 // need to be discussed
* representation.extracted 0..0
* representation.repeated 0..0
* representation.concatenated 0..0
* representation.relative 0..0
