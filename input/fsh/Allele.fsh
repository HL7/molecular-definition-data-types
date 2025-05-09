Profile: Allele
Parent: MolecularDefinition
Description: "Allele profile of the MolecularDefinition resource."
Id: allele
* ^experimental = true //needs to be true since the parent is experimental

* type MS
* type 1..1
* location 1..1
* member 0..0

* representation ^slicing.discriminator.type = #value
* representation ^slicing.discriminator.path = "focus"
* representation ^slicing.rules = #open
* representation ^slicing.ordered = false
* representation ^slicing.description = "Slice based on the representation.focus value to differentiate between Context and Allele states."

* representation contains 
    contextState 0..1 MS and 
    alleleState 1..1 MS

* representation[contextState].focus = MolecularDefinitionFocusCS#context-state "Context State" // context state slice
* representation[alleleState].focus = MolecularDefinitionFocusCS#allele-state "Allele State" // allele state slice