This implementation guide, along with its included artifacts, has been meticulously designed and developed to address practical use cases involving the exchange of genomic molecules and their associated data across diverse institutions and systems. By providing standardized frameworks and code systems, the guide facilitates seamless interoperability and accurate data representation. This section presents example use cases that demonstrate how this implementation guide can be leveraged to represent real genomic concepts as FHIR resource instances, thereby illustrating its applicability and effectiveness in real-world genomic data exchange scenarios. The following subsections provides example instances of MolecularDefinition resource and their corresponding profiles.

### Representing a Molecular Sequence as a Literal String
The following MolecularDefinitions show examples of a sequence represented as a literal leveraging the [Sequence](StructureDefinition-sequence.html) profile. The moleculeType and encoding attributes enable unambiguous interpretation of the sequence value.

- [Simple Sequence example DNA A, IUPAC](MolecularDefinition-example-sequence-a-dna-iupac.html)
- [Simple Sequence example Amino Acid A, IUPAC](MolecularDefinition-example-sequence-a-aa-iupac.html)

### Representing a Molecular Sequence Using Accession Number as a Code
The following MolecularDefinitions show examples of a sequence represented as a code using an accession number leveraging the [Sequence](StructureDefinition-sequence.html) profile.

- [Example of Sequence profile of CYP2C19 as Accession Number](MolecularDefinition-example-genomic-cyp2c19-accession.html)

### Molecular Sequence from a Resolvable URL
The following MolecularDefinitions show examples of a sequence represented as a resolvable URL leveraging the [Sequence](StructureDefinition-sequence.html) profile. This example shows how the [DocumentReference]({{site.data.fhir.path}}documentreference.html) resource is utilized to represent the corresponding URL.

- [Sequence example of CYP2C19 as URL](MolecularDefinition-example-sequence-cyp2c19-url.html)

### Molecular Sequence from a File
The following MolecularDefinitions show examples of a sequence represented as an attached file.

- [Sequence example of CYP2C19 as Attachment](MolecularDefinition-example-sequence-cyp2c19-attached.html)

### Molecular Sequence extracted from another Molecular Sequence
The following MolecularDefinitions show examples of a sequence represented as a subsequence extracted from a “parent” sequence. In these examples, a sequence representing the CYP2C19 genetic locus is used as the “parent”, from which three subsequences are extracted (corresponding to the upstream region, gene region, and downstream region).

- [Example of Sequence profile of CYP2C19 gene region](MolecularDefinition-example-sequence-cyp2c19-gene-region.html)
- [Example of Sequence profile of CYP2C19 upstream region](MolecularDefinition-example-sequence-cyp2c19-upstream-region.html)
- [Example of Sequence profile of CYP2C19 downstream region](MolecularDefinition-example-sequence-cyp2c19-downstream-region.html)

### Molecular Sequence constructed as a concatenation of several other Molecular Sequence instances
The following MolecularDefinitions show examples of a sequence represented as a concatenation of sequence instances. In this example, the three subsequences from the Extracted example are reassembled into the full genetic locus.

- [Example of Sequence profile of CYP2C19 of concatenated upstream, gene, and downstream regions](MolecularDefinition-example-sequence-cyp2c19-concatenated-regions.html)

### Molecular Sequence constructed as a Repeated Motif
The following MolecularDefinitions show examples of a sequence represented as a repeated sequence motif. In this use case, the CGG trinucleotide repeat from the FMR1 gene is represented in a compressed form that emphasizes the copyCount (convenient for use cases where the number of repeats is important).

- [Example of Sequence profile of FMR1 CGG motif repeated 20 times](MolecularDefinition-example-sequence-fmr1-cgg-20x-repeat.html)

### Molecular Sequence constructed as an Edit on another Molecular Sequence
The following MolecularDefinitions show examples of a sequence represented as a relative sequence, which applies an edit to a starting sequence to create the sequence of interest. In this example, the starting sequence is a perfect CGG trinucleotide that was repeated 20 times (see the repeated motif example). The desired sequence is not a perfect repeat, however, and a single nucleotide must be edited to yield the sequence of interest. The result of this edit operation represents an actual CGG repeat region that is found in the FMR1 gene.

- [Example of Sequence profile of FMR1 using CGG motifs edited by external referenced sequence resources](MolecularDefinition-example-sequence-fmr1-cgg-20x-edited-referenced.html)

### Use Case -5
### Use Case -6

### Two Aggregate Use Cases to Represent How Sequence, Allele, Haplotype and Genotype Profiles Can Work Together to Represent various Genotypes

#### HLA Genotype 
To illustrate the interaction of various MolecularDefinition profiles, we begin with a foundational example: [an instance of a Sequence profile](MolecularDefinition-example-sequence-hla000011.html) representing the raw coding sequence of HLA00001.1, which corresponds to the HLA-A01:01:01:01 allele. Building upon this, two distinct sets of Allele profiles are introduced, each encompassing five individual alleles derived from the HLA-A01:01:01:01 and HLA-A*01:02:01:01 groups, respectively. Each Allele set is then aggregated into a corresponding Haplotype instance, capturing the linkage of alleles on a single chromosome. Finally, these two Haplotype instances are integrated into [an instance of Genotype profile](MolecularDefinition-example-genotype-hla-00001-and-2.html), representing the combined allelic composition across both chromosomes at the HLA-A locus. This stepwise construction exemplifies how complex genetic information can be systematically modeled from raw sequence data through allelic and haplotypic layers to a comprehensive genotype representation. The following is the set of Molecular Definition instances that represent this use case:

- [Genotype of HLA-A*01:01:01:01 and HLA-A*01:02:01:01 haplotype](MolecularDefinition-example-genotype-hla-00001-and-2.html)
   - [HLA-A*01:01:01:01 Haplotype instance](MolecularDefinition-example-haplotype-hla-00001.html)
      - [First Allele, HLA00001.1:c.98T](MolecularDefinition-example-allelesliced-hla-98-t.html)
      - [Second Allele, HLA00001.1:c.121C](MolecularDefinition-example-allelesliced-hla-121-c.html)
      - [Third Allele, HLA00001.1:c.123C](MolecularDefinition-example-allelesliced-hla-123-c.html)
      - [Fourth Allele, HLA00001.1:c.126G](MolecularDefinition-example-allelesliced-hla-126-g.html)
      - [Fifth Allele, HLA00001.1:c.144C](MolecularDefinition-example-allelesliced-hla-144-c.html)
   - [HLA-A*01:02:01:01 Haplotype instance](MolecularDefinition-example-haplotype-hla-00002.html)
      - [First Allele, HLA00001.1:c.98C](MolecularDefinition-example-allelesliced-hla-98-c.html)
      - [Second Allele, HLA00001.1:c.121A](MolecularDefinition-example-allelesliced-hla-121-a.html)
      - [Third Allele, HLA00001.1:c.123T](MolecularDefinition-example-allelesliced-hla-123-t.html)
      - [Fourth Allele, HLA00001.1:c.126A](MolecularDefinition-example-allelesliced-hla-126-a.html)
      - [Fifth Allele, HLA00001.1:c.144A](MolecularDefinition-example-allelesliced-hla-144-a.html)

#### CYP2C19 Genotype
The CYP2C19 gene encodes an enzyme essential for metabolizing several medications, including anti-coagulants, anti-depressants, and proton pump inhibitors. Variations in an individual's CYP2C19 genotype can significantly influence drug response, affecting efficacy and risk of adverse effects. In this example, the [genotype instance](MolecularDefinition-example-genotype-cyp2c19-1002-and-3.html) is represented as a composite of two haplotypes, [CYP2C19*1.002](MolecularDefinition-example-haplotype-cyp2c19-1002.html) and [CYP2C19*3.002](MolecularDefinition-example-haplotype-cyp2c19-3002.html), each defined by two alleles located at positions 661 and 1016 within the reference sequence context. This genomic information involves representing these haplotypes and their constituent alleles by leveraging the Molecular Definition profiles, i.e., Genotype, Haplotype, Allele and Sequence, through a series of interconnected profile instances. The following nested list shows this example and corresponding MolecularDefinition instances.

- [Genotype of CYP2C19\*1.002 and CYP2C19\*3.002](MolecularDefinition-example-genotype-cyp2c19-1002-and-3.html)
   - [CYP2C19*1.002:c.[661G; 1016G]](MolecularDefinition-example-haplotype-cyp2c19-1002.html)
      - [First Allele, CYP2C19*1.002:c.661G](MolecularDefinition-example-allelesliced-cyp2c19-661g.html)
      - [Second Allele, CYP2C19*1.002:c.1016G](MolecularDefinition-example-allelesliced-cyp2c19-1016g.html)
   - [CYP2C19*3.002:c.[661A; 1016G]](MolecularDefinition-example-haplotype-cyp2c19-3002.html)
      - [First Allele, CYP2C19*1.002:c.661A](MolecularDefinition-example-allelesliced-cyp2c19-661a.html)
      - [Second Allele, CYP2C19*1.002:c.1016G](MolecularDefinition-example-allelesliced-cyp2c19-1016g.html)
