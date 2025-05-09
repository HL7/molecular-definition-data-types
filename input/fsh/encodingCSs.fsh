CodeSystem: Encodings
Id: encodings
Title: "Encodings"
Description: "CodeSystem listing the different encodings for nucleotides and amino acids."
* ^experimental = false
* ^caseSensitive = true
* #nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols"
* #nucleotide-rna-1letter-unambiguous "Nucleotide RNA 1-letter Unambiguous Symbols"
* #nucleotide-dna-1letter-with-n "Nucleotide DNA 1-letter Symbols Including N"
* #nucleotide-dna-1letter-ambiguous "Nucleotide DNA 1-letter Ambiguous Symbols"
* #amino-acid-1letter-unambiguous "Amino Acid 1-letter Unambiguous Symbols"
* #amino-acid-3letter-unambiguous "Amino Acid 3-letter Unambiguous Symbols"
* #amino-acid-1letter-ambiguous "Amino Acid 1-letter Ambiguous Symbols"
* #amino-acid-3letter-ambiguous "Amino Acid 3-letter Ambiguous Symbols"


CodeSystem: NucleotideDNA1LetterUnambiguous
Id: nucleotide-dna-1letter-unambiguous
Title: "Nucleotide DNA 1-letter Unambiguous Symbols"
Description: "Single-letter unambiguous symbols for DNA residues."
* ^experimental = false
* ^caseSensitive = true
* #G "Guanine" "G"
* #A "Adenine" "A"
* #T "Thymine" "T"
* #C "Cytosine" "C"

CodeSystem: NucleotideRNA1LetterUnambiguous
Id: nucleotide-rna-1letter-unambiguous
Title: "Nucleotide RNA 1-letter Unambiguous Symbols"
Description: "Single-letter unambiguous symbols for RNA residues."
* ^experimental = false
* ^caseSensitive = true
* #G "Guanine" "G"
* #A "Adenine" "A"
* #U "Uracil" "U"
* #C "Cytosine" "C"

CodeSystem: NucleotideDNA1LetterWithN
Id: nucleotide-dna-1letter-with-n
Title: "Nucleotide DNA 1-letter Symbols Including N"
Description: "Single-letter symbols for DNA residues, including N for any nucleotide."
* ^experimental = false
* ^caseSensitive = true
* #G "Guanine" "G"
* #A "Adenine" "A"
* #T "Thymine" "T"
* #C "Cytosine" "C"
* #N "Any nucleotide" "G or A or T or C"

CodeSystem: NucleotideDNA1LetterAmbiguous
Id: nucleotide-dna-1letter-ambiguous
Title: "Nucleotide DNA 1-letter Ambiguous Symbols"
Description: "Single-letter ambiguous symbols for DNA residues."
* ^experimental = false
* ^caseSensitive = true
* #G "Guanine" "G"
* #A "Adenine" "A"
* #T "Thymine" "T"
* #C "Cytosine" "C"
* #R "Purine" "G or A"
* #Y "Pyrimidine" "T or C"
* #M "Amino" "A or C"
* #K "Keto" "G or T"
* #S "Strong interaction (3 H bonds)" "G or C"
* #W "Weak interaction (2 H bonds)" "A or T"
* #H "not-G, H follows G in the alphabet" "A or C or T"
* #B "not-A, B follows A" "G or T or C"
* #V "not-T (not-U), V follows U" "G or C or A"
* #D "not-C, D follows C" "G or A or T"
* #N "Any" "G or A or T or C"

CodeSystem: AminoAcid1LetterUnambiguous
Id: amino-acid-1letter-unambiguous
Title: "Amino Acid 1-letter Unambiguous Symbols"
Description: "Single-letter unambiguous symbols for the 20 common amino acids."
* ^experimental = false
* ^caseSensitive = true
* #A "Alanine" "A"
* #C "Cysteine" "C"
* #D "Aspartic acid" "D"
* #E "Glutamic acid" "E"
* #F "Phenylalanine" "F"
* #G "Glycine" "G"
* #H "Histidine" "H"
* #I "Isoleucine" "I"
* #K "Lysine" "K"
* #L "Leucine" "L"
* #M "Methionine" "M"
* #N "Asparagine" "N"
* #P "Proline" "P"
* #Q "Glutamine" "Q"
* #R "Arginine" "R"
* #S "Serine" "S"
* #T "Threonine" "T"
* #V "Valine" "V"
* #W "Tryptophan" "W"
* #Y "Tyrosine" "Y"

CodeSystem: AminoAcid3LetterUnambiguous
Id: amino-acid-3letter-unambiguous
Title: "Amino Acid 3-letter Unambiguous Symbols"
Description: "Three-letter unambiguous symbols for the 20 common amino acids."
* ^experimental = false
* ^caseSensitive = true
* #Ala "Alanine" "Ala"
* #Cys "Cysteine" "Cys"
* #Asp "Aspartic acid" "Asp"
* #Glu "Glutamic acid" "Glu"
* #Phe "Phenylalanine" "Phe"
* #Gly "Glycine" "Gly"
* #His "Histidine" "His"
* #Ile "Isoleucine" "Ile"
* #Lys "Lysine" "Lys"
* #Leu "Leucine" "Leu"
* #Met "Methionine" "Met"
* #Asn "Asparagine" "Asn"
* #Pro "Proline" "Pro"
* #Gln "Glutamine" "Gln"
* #Arg "Arginine" "Arg"
* #Ser "Serine" "Ser"
* #Thr "Threonine" "Thr"
* #Val "Valine" "Val"
* #Trp "Tryptophan" "Trp"
* #Tyr "Tyrosine" "Tyr"

CodeSystem: AminoAcid1LetterAmbiguous
Id: amino-acid-1letter-ambiguous
Title: "Amino Acid 1-letter Ambiguous Symbols"
Description: "Single-letter symbols for amino acids, including ambiguous symbols."
* ^experimental = false
* ^caseSensitive = true
* #A "Alanine" "A"
* #B "Aspartic acid or asparagine" "D or N"
* #C "Cysteine" "C"
* #D "Aspartic acid" "D"
* #E "Glutamic acid" "E"
* #F "Phenylalanine" "F"
* #G "Glycine" "G"
* #H "Histidine" "H"
* #I "Isoleucine" "I"
* #K "Lysine" "K"
* #L "Leucine" "L"
* #M "Methionine" "M"
* #N "Asparagine" "N"
* #P "Proline" "P"
* #Q "Glutamine" "Q"
* #R "Arginine" "R"
* #S "Serine" "S"
* #T "Threonine" "T"
* #U "Selenocysteine" "U"
* #V "Valine" "V"
* #W "Tryptophan" "W"
* #X "Unknown or other amino acid" "Any amino acid"
* #Y "Tyrosine" "Y"
* #Z "Glutamic acid or glutamine" "E or Q"

CodeSystem: AminoAcid3LetterAmbiguous
Id: amino-acid-3letter-ambiguous
Title: "Amino Acid 3-letter Ambiguous Symbols"
Description: "Three-letter symbols for amino acids, including ambiguous symbols."
* ^experimental = false
* ^caseSensitive = true
* #Ala "Alanine" "Ala"
* #Asx "Aspartic acid or asparagine" "Asp or Asn"
* #Cys "Cysteine" "Cys"
* #Asp "Aspartic acid" "Asp"
* #Glu "Glutamic acid" "Glu"
* #Phe "Phenylalanine" "Phe"
* #Gly "Glycine" "Gly"
* #His "Histidine" "His"
* #Ile "Isoleucine" "Ile"
* #Lys "Lysine" "Lys"
* #Leu "Leucine" "Leu"
* #Met "Methionine" "Met"
* #Asn "Asparagine" "Asn"
* #Pro "Proline" "Pro"
* #Gln "Glutamine" "Gln"
* #Arg "Arginine" "Arg"
* #Ser "Serine" "Ser"
* #Thr "Threonine" "Thr"
* #Sec "Selenocysteine" "Sec"
* #Val "Valine" "Val"
* #Trp "Tryptophan" "Trp"
* #Xaa "Unknown or other amino acid" "Any amino acid"
* #Tyr "Tyrosine" "Tyr"
* #Glx "Glutamic acid or glutamine" "Glu or Gln"
