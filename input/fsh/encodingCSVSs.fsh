CodeSystem: Encodings
Id: encodings
Title: "Encodings"
Description: "CodeSystem listing the different encodings for nucleotides and amino acids."
* ^experimental = false
* ^caseSensitive = true
* #nucleotide-dna-1letter-unambiguous "Nucleotide DNA 1-letter Unambiguous Symbols" "Single-letter unambiguous symbols for DNA residues (G, A, T, C)"
* #nucleotide-rna-1letter-unambiguous "Nucleotide RNA 1-letter Unambiguous Symbols" "Single-letter unambiguous symbols for RNA residues (G, A, U, C)"
* #nucleotide-dna-1letter-with-n "Nucleotide DNA 1-letter Symbols Including N" "Single-letter symbols for DNA residues, including N for any nucleotide"
* #nucleotide-dna-1letter-ambiguous "Nucleotide DNA 1-letter Ambiguous Symbols" "Single-letter ambiguous symbols for DNA residues including IUPAC codes"
* #amino-acid-1letter-unambiguous "Amino Acid 1-letter Unambiguous Symbols" "Single-letter unambiguous symbols for the 20 common amino acids"
* #amino-acid-3letter-unambiguous "Amino Acid 3-letter Unambiguous Symbols" "Three-letter unambiguous symbols for the 20 common amino acids"
* #amino-acid-1letter-ambiguous "Amino Acid 1-letter Ambiguous Symbols" "Single-letter symbols for amino acids, including ambiguous symbols"
* #amino-acid-3letter-ambiguous "Amino Acid 3-letter Ambiguous Symbols" "Three-letter symbols for amino acids, including ambiguous symbols"


CodeSystem: NucleotideDNA
Id: nucleotide-dna
Title: "Nucleotide DNA Symbols"
Description: "Single-letter symbols for DNA residues, including unambiguous, ambiguous, and N symbols."
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
* #N "Any nucleotide" "G or A or T or C"

CodeSystem: NucleotideRNA
Id: nucleotide-rna
Title: "Nucleotide RNA Symbols"
Description: "Single-letter unambiguous symbols for RNA residues."
* ^experimental = false
* ^caseSensitive = true
* #G "Guanine" "G"
* #A "Adenine" "A"
* #U "Uracil" "U"
* #C "Cytosine" "C"

CodeSystem: AminoAcid
Id: amino-acid
Title: "Amino Acid Symbols"
Description: "Single-letter and three-letter symbols for amino acids, including unambiguous and ambiguous symbols."
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
* #B "Aspartic acid or asparagine" "D or N"
* #U "Selenocysteine" "U"
* #X "Unknown or other amino acid" "Any amino acid"
* #Z "Glutamic acid or glutamine" "E or Q"
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
* #Asx "Aspartic acid or asparagine" "Asp or Asn"
* #Sec "Selenocysteine" "Sec"
* #Xaa "Unknown or other amino acid" "Any amino acid"
* #Glx "Glutamic acid or glutamine" "Glu or Gln"

// ValueSets

ValueSet: NucleotideDNA1LetterUnambiguous
Id: nucleotide-dna-1letter-unambiguous
Title: "Nucleotide DNA 1-letter Unambiguous Symbols ValueSet"
Description: "Single-letter unambiguous symbols for DNA residues."
* ^experimental = false
* NucleotideDNA#G
* NucleotideDNA#A
* NucleotideDNA#T
* NucleotideDNA#C

ValueSet: NucleotideDNA1LetterWithN
Id: nucleotide-dna-1letter-with-n
Title: "Nucleotide DNA 1-letter Unambiguous Symbols Including N ValueSet"
Description: "Single-letter unambiguous symbols for DNA residues, including N for any nucleotide."
* ^experimental = false
* NucleotideDNA#G
* NucleotideDNA#A
* NucleotideDNA#T
* NucleotideDNA#C
* NucleotideDNA#N

ValueSet: NucleotideDNA1LetterAmbiguous
Id: nucleotide-dna-1letter-ambiguous
Title: "Nucleotide DNA 1-letter Ambiguous Symbols ValueSet"
Description: "Single-letter ambiguous symbols for DNA residues."
* ^experimental = false
* NucleotideDNA#G
* NucleotideDNA#A
* NucleotideDNA#T
* NucleotideDNA#C
* NucleotideDNA#R
* NucleotideDNA#Y
* NucleotideDNA#M
* NucleotideDNA#K
* NucleotideDNA#S
* NucleotideDNA#W
* NucleotideDNA#H
* NucleotideDNA#B
* NucleotideDNA#V
* NucleotideDNA#D
* NucleotideDNA#N

ValueSet: NucleotideRNA1LetterUnambiguous
Id: nucleotide-rna-1letter-unambiguous
Title: "Nucleotide RNA 1-letter Unambiguous Symbols ValueSet"
Description: "Single-letter unambiguous symbols for RNA residues."
* ^experimental = false
* NucleotideRNA#G
* NucleotideRNA#A
* NucleotideRNA#U
* NucleotideRNA#C

ValueSet: AminoAcid1LetterUnambiguous
Id: amino-acid-1letter-unambiguous
Title: "Amino Acid 1-letter Unambiguous Symbols ValueSet"
Description: "Single-letter unambiguous symbols for the 20 common amino acids."
* ^experimental = false
* AminoAcid#A
* AminoAcid#C
* AminoAcid#D
* AminoAcid#E
* AminoAcid#F
* AminoAcid#G
* AminoAcid#H
* AminoAcid#I
* AminoAcid#K
* AminoAcid#L
* AminoAcid#M
* AminoAcid#N
* AminoAcid#P
* AminoAcid#Q
* AminoAcid#R
* AminoAcid#S
* AminoAcid#T
* AminoAcid#V
* AminoAcid#W
* AminoAcid#Y

ValueSet: AminoAcid3LetterUnambiguous
Id: amino-acid-3letter-unambiguous
Title: "Amino Acid 3-letter Unambiguous Symbols ValueSet"
Description: "Three-letter unambiguous symbols for the 20 common amino acids."
* ^experimental = false
* AminoAcid#Ala
* AminoAcid#Cys
* AminoAcid#Asp
* AminoAcid#Glu
* AminoAcid#Phe
* AminoAcid#Gly
* AminoAcid#His
* AminoAcid#Ile
* AminoAcid#Lys
* AminoAcid#Leu
* AminoAcid#Met
* AminoAcid#Asn
* AminoAcid#Pro
* AminoAcid#Gln
* AminoAcid#Arg
* AminoAcid#Ser
* AminoAcid#Thr
* AminoAcid#Val
* AminoAcid#Trp
* AminoAcid#Tyr

ValueSet: AminoAcid1LetterAmbiguous
Id: amino-acid-1letter-ambiguous
Title: "Amino Acid 1-letter Ambiguous Symbols ValueSet"
Description: "Single-letter symbols for amino acids, including ambiguous symbols."
* ^experimental = false
* AminoAcid#A
* AminoAcid#B
* AminoAcid#C
* AminoAcid#D
* AminoAcid#E
* AminoAcid#F
* AminoAcid#G
* AminoAcid#H
* AminoAcid#I
* AminoAcid#K
* AminoAcid#L
* AminoAcid#M
* AminoAcid#N
* AminoAcid#P
* AminoAcid#Q
* AminoAcid#R
* AminoAcid#S
* AminoAcid#T
* AminoAcid#U
* AminoAcid#V
* AminoAcid#W
* AminoAcid#X
* AminoAcid#Y
* AminoAcid#Z

ValueSet: AminoAcid3LetterAmbiguous
Id: amino-acid-3letter-ambiguous
Title: "Amino Acid 3-letter Ambiguous Symbols ValueSet"
Description: "Three-letter symbols for amino acids, including ambiguous symbols."
* ^experimental = false
* AminoAcid#Ala
* AminoAcid#Asx
* AminoAcid#Cys
* AminoAcid#Asp
* AminoAcid#Glu
* AminoAcid#Phe
* AminoAcid#Gly
* AminoAcid#His
* AminoAcid#Ile
* AminoAcid#Lys
* AminoAcid#Leu
* AminoAcid#Met
* AminoAcid#Asn
* AminoAcid#Pro
* AminoAcid#Gln
* AminoAcid#Arg
* AminoAcid#Ser
* AminoAcid#Thr
* AminoAcid#Sec
* AminoAcid#Val
* AminoAcid#Trp
* AminoAcid#Xaa
* AminoAcid#Tyr
* AminoAcid#Glx
