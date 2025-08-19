Profile: Allele
Parent: MolecularDefinition
Description: "Allele profile of the MolecularDefinition resource."
Id: allele
* ^experimental = true //needs to be true since the parent is experimental

* type MS
* type 1..1
* type from MoleculeTypeVS (required)
* topology from TopologyVS (required)
* location ^short = "Genomic location of the specified allele"
* location 1..1
* location.sequenceLocation.sequenceContext only Reference(Sequence)
* location.sequenceLocation.strand from StrandOrientationVS (required)
* location.sequenceLocation.coordinateInterval.coordinateSystem.origin from CoordinateOriginVS (required)
* location.sequenceLocation.coordinateInterval.coordinateSystem.normalizationMethod from NormalizationMethodVS (required)
* member 0..0

* representation.literal.encoding from EncodingsVS (required)

* representation ^slicing.discriminator.type = #value
* representation ^slicing.discriminator.path = "focus"
* representation ^slicing.rules = #open
* representation ^slicing.ordered = false
* representation ^slicing.description = "Slice based on the representation.focus value to differentiate between Context and Allele states."

* representation contains 
    contextState 0..1 MS and 
    alleleState 1..1 MS

* representation[contextState].focus = MolecularDefinitionFocus#context-state "Context State" // context state slice
* representation[alleleState].focus = MolecularDefinitionFocus#allele-state "Allele State" // allele state slice