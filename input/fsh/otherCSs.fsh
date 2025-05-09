CodeSystem: MoleculeType
Id: molecule-type
Title: "Molecule Type"
Description: "Types of molecular sequences including DNA, RNA, and amino acids"
* ^experimental = false
* ^caseSensitive = true
* #dna "DNA sequence" "DNA sequence (assumed double stranded, written as single stranded by convention)"
* #rna "RNA sequence" "RNA sequence (assumed single stranded, written as single stranded by convention) may use cDNA or RNA encoding for T/U"
* #aa "AA sequence" "Amino Acid sequence"

CodeSystem: StrandOrientation
Id: strand-orientation
Title: "Strand Orientation"
Description: "Orientation of molecular sequences, indicating directionality for nucleotides (5' to 3' or 3' to 5') or amino acids (N to C terminus)"
* ^experimental = false
* ^caseSensitive = true
* #forward "Forward strand" "5' to 3' for nucleotides or N-to-C for amino acids; also known as positive/plus strand. Single stranded sequences are conventionally represented in forward direction."
* #reverse "Reverse strand" "3' to 5' orientation; also known as negative/minus strand. Applicable only to double stranded sequences."

CodeSystem: NormalizationMethod
Id: normalization-method
Title: "Normalization Method"
Description: "Methods for normalizing sequence variants"
* ^experimental = false
* ^caseSensitive = true
* #left-shift "Left shift" "Variant coordinates normalized by shifting bases to the left, as per VCF specifications"
* #right-shift "Right shift" "Variant coordinates normalized by shifting bases to the right, as per HGVS specifications"
* #fully-justified "Fully justified" "Variant coordinates normalized by full justification, as per VOCA specifications"

CodeSystem: CoordinateOrigin
Id: coordinate-origin
Title: "Coordinate Origin"
Description: "Reference points for coordinate counting in molecular sequences"
* ^experimental = false
* ^caseSensitive = true
* #sequence-start "Sequence start" "Counting begins at the start of the sequence - e.g., 5' end or N terminus"
* #feature-start "Feature start" "Counting begins at the start of a designated feature - e.g., translation initiation codon (A in ATG), exon"
* #feature-end "Feature end" "Counting begins at the end of a designated feature - e.g., exon (as offset into the following intron)"

CodeSystem: Topology
Id: topology
Title: "Topology"
Description: "Structural arrangement of molecular sequences or modifications"
* ^experimental = false
* ^caseSensitive = true
* #linear "Linear" "Linear, contiguous (e.g., Sequence, Allele)"
* #linear-discontiguous "Linear discontiguous" "Linear, with gaps (e.g., Haplotype)"
* #circular "Circular" "Circular, contiguous (e.g., Sequence, Allele)"
* #branched "Branched" "Branched (e.g., carbohydrate modifications)"
