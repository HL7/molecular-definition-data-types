Profile: AlleleSliced
Parent: MolecularDefinition
Description: "An Allele profile of the MolecularDefinition resource."
id allele-sliced

* ^experimental = true //needs to be true since the parent is experimental

* type MS
* type 1..1
* location 1..1
// * member 0..0

* representation ^slicing.discriminator.type = #value
* representation ^slicing.discriminator.path = "focus"
* representation ^slicing.rules = #open
* representation ^slicing.ordered = false
* representation ^slicing.description = "Slice based on the representation.focus value to differentiate between Context and Allele states."

