ValueSet: MolecularDefinitionFocusVS
Id:  molecular-definition-focus
Title: "Molecular Definition Focus ValueSet"
Description: "Molecular Definition Focus terms that describe various representation elements."
* ^experimental = true
* include codes from system MolecularDefinitionFocus

ValueSet: EncodingsVS
Id:  encodings
Title: "Molecular Definition Encodings ValueSet"
Description: "Molecular Definition Encodings terms that describe various encoding schemas."
* ^experimental = true
* include codes from system Encodings

ValueSet: MoleculeTypeVS
Id:  molecule-type
Title: "Molecule Type ValueSet"
Description: "Molecule type terms that describe various genomic molucles, e.g., DNA or RNA."
* ^experimental = true
* include codes from system $CGMoleculeType

ValueSet: StrandOrientationVS
Id:  strand-orientation
Title: "Strand Orientation ValueSet"
Description: "Strand orientation terms of various molecular sequences."
* ^experimental = true
* include codes from system $CGStrandOrientation

ValueSet: NormalizationMethodVS
Id:  normalization-method
Title: "Normalization Method ValueSet"
Description: "Normalization method of genomic sequence, e.g., left or right shift."
* ^experimental = true
* include $CGNormalizationMethod#left-shift
* include $CGNormalizationMethod#right-shift
* include $CGNormalizationMethod#fully-justified

ValueSet: CoordinateOriginVS
Id:  coordinate-origin
Title: "Coordinate Origin ValueSet"
Description: "Coordinate origin of how the start of the sequence is denoted."
* ^experimental = true
* include $CGCoordinateOrigin#sequence-start
* include $CGCoordinateOrigin#feature-start
* include $CGCoordinateOrigin#feature-end

ValueSet: TopologyVS
Id:  topology
Title: "Topology ValueSet"
Description: "Topology of how the genomic molecule are structured toplologically."
* ^experimental = true
* include codes from system $CGTopology
