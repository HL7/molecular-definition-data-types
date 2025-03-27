Profile: Variation
Parent: MolecularDefinition
Description: "A Variation profile of the MolecularDefinition resource."
Id: variation

* ^experimental = true //needs to be true since the parent is experimental

* type MS
* type 1..1
* location 1..1

// * member 0..0  // to be used later when using R6 draft 3
* memberState 0..0  // to be removed later when using R6 draft 3

* representation ^slicing.discriminator.type = #value
* representation ^slicing.discriminator.path = "focus"
* representation ^slicing.rules = #open
* representation ^slicing.ordered = false
* representation ^slicing.description = "Slice based on the representation.focus value to differentiate between Context and Allele states."

* representation contains 
    contextState 0..1 MS and 
    referenceState 1..1 MS and 
    alternativeState 1..1 MS

* representation[contextState].focus = MolecularDefinitionFocusCS#context-state "Context State" // context state slice
* representation[referenceState].focus = MolecularDefinitionFocusCS#reference-state "Reference State" // reference state slice
* representation[alternativeState].focus = MolecularDefinitionFocusCS#alternative-state "Alternative State" // alternative state slice

