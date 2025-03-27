Profile: Allele
Parent: MolecularDefinition
Description: "An Allele profile of the MolecularDefinition resource."
id: allele
* ^experimental = true //needs to be true since the parent is experimental

* type MS
* type 1..1
* location 1..1

// * member 0..0  // to be used later when using R6 draft 3
* memberState 0..0  // to be removed later when using R6 draft 3