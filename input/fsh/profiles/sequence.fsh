Profile:     Sequence
Parent:      MolecularDefinition
Description: "Sequence profile of MolecularDefinition"
Id: sequence

* ^experimental = true //needs to be true since the parent is experimental

* type MS
* type 1..1
* type from $CGMoleculeTypeVS (required)
* member 0..0
* location 0..0

* insert SetLiteralBindings
