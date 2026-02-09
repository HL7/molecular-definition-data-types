>This implementation guide is not complete. The included artifacts are marked as experimental, but they are ready for review, testing, and validation.
{: .note-to-balloters}

This implementation guide, along with its included artifacts, has been designed to address practical use cases involving the exchange of genomic molecules and their associated data across diverse institutions and systems. By providing standardized frameworks and code systems, the guide facilitates seamless interoperability and accurate data representation. This section shows how the guide can be used to represent real genomic concepts as FHIR resources, demonstrating its use in real-world genomic data exchange scenarios. The following subsections provide example instances of MolecularDefinition resource and their corresponding profiles.

Various stakeholders are encouraged to actively contribute their use cases and examples in support of the MolecularDefinition Datatype Implementation Guide to enhance its practical applicability and robustness. Contributions can be made by raising a JIRA ticket, posting comments on the [Genomics Channel-Information Modeling at chat.fhir.org](https://chat.fhir.org/#narrow/channel/179197-genomics/topic/Information.20Modeling/with/539164816), or directly contacting any of the co-chairs of the HL7 Clinical Genomics Workgroup. These inputs are vital to refining the guide, facilitating standardized and interoperable genomic data exchange across diverse healthcare and research environments, and ensuring the guide effectively addresses real-world genomic data scenarios

NOTE: The following examples are under current development and curation. Please report any comment or feedback using HL7 JIRA.

### Representing a Molecular Sequence as a Literal String
The following examples demonstrate how MolecularDefinition resources can represent of a sequence represented as a literal using the [Sequence](StructureDefinition-sequence.html) profile. The moleculeType and encoding attributes enable unambiguous interpretation of the sequence value.

- [Simple Sequence example DNA A, IUPAC](MolecularDefinition-example-sequence-a-dna-iupac.html)
- [Simple Sequence example Amino Acid A, IUPAC](MolecularDefinition-example-sequence-a-aa-iupac.html)

### Representing a Molecular Sequence Using Accession Number as a Code
The following examples demonstrate how MolecularDefinition resources can represent of a sequence represented as a code using an accession number using the [Sequence](StructureDefinition-sequence.html) profile.

- [Example of Sequence profile of CYP2C19 as Accession Number](MolecularDefinition-example-genomic-cyp2c19-accession.html)

### Molecular Sequence from a Resolvable URL
The following examples demonstrate how MolecularDefinition resources can represent of a sequence represented as a resolvable URL using the [Sequence](StructureDefinition-sequence.html) profile. This example uses the [DocumentReference]({{site.data.fhir.path}}documentreference.html) resource to represent the URL.

- [Sequence example of CYP2C19 as URL](MolecularDefinition-example-sequence-cyp2c19-url.html)

### Molecular Sequence from a File
The following examples demonstrate how MolecularDefinition resources can represent of a sequence represented as an attached file.

- [Sequence example of CYP2C19 as Attachment](MolecularDefinition-example-sequence-cyp2c19-attached.html)

### Molecular Sequence extracted from another Molecular Sequence
The following examples demonstrate how MolecularDefinition resources can represent of a sequence represented as a subsequence extracted from a “parent” sequence. In these examples, a sequence representing the CYP2C19 genetic locus is used as the “parent”, from which three subsequences are extracted (corresponding to the upstream region, gene region, and downstream region).

- [Example of Sequence profile of CYP2C19 gene region](MolecularDefinition-example-sequence-cyp2c19-gene-region.html)
- [Example of Sequence profile of CYP2C19 upstream region](MolecularDefinition-example-sequence-cyp2c19-upstream-region.html)
- [Example of Sequence profile of CYP2C19 downstream region](MolecularDefinition-example-sequence-cyp2c19-downstream-region.html)

### Molecular Sequence constructed as a concatenation of several other Molecular Sequence instances
The following examples demonstrate how MolecularDefinition resources can represent of a sequence represented as a concatenation of sequence instances. In this example, the three subsequences from the Extracted example are reassembled into the full genetic locus.

- [Example of Sequence profile of CYP2C19 of concatenated upstream, gene, and downstream regions](MolecularDefinition-example-sequence-cyp2c19-concatenated-regions.html)

### Molecular Sequence constructed as a Repeated Motif
The following examples demonstrate how MolecularDefinition resources can represent of a sequence represented as a repeated sequence motif. In this use case, the CGG trinucleotide repeat from the FMR1 gene is represented in a compressed form that emphasizes the copyCount (convenient for use cases where the number of repeats is important).

- [Example of Sequence profile of FMR1 CGG motif repeated 20 times](MolecularDefinition-example-sequence-fmr1-cgg-20x-repeat.html)

### Molecular Sequence constructed as an Edit on another Molecular Sequence
The following examples demonstrate how MolecularDefinition resources can represent of a sequence represented as a relative sequence, which applies an edit to a starting sequence to create the sequence of interest. In this example, the starting sequence is a perfect CGG trinucleotide that was repeated 20 times (see the repeated motif example). The desired sequence is not a perfect repeat, however, and a single nucleotide must be edited to yield the sequence of interest. The result of this edit operation represents an actual CGG repeat region that is found in the FMR1 gene.

- [Example of Sequence profile of FMR1 using CGG motifs edited by external referenced sequence resources](MolecularDefinition-example-sequence-fmr1-cgg-20x-edited-referenced.html)

### Molecular Sequence including a Contained Referenced resource
Many instances of MolecularDefinition reference other instances of MolecularDefinition. When references within a message are not desired, contained resources can be used. This example shows how contained resources can be used to create a standalone message. It is the same content that was used in the relative (edit) example, but the references have been changed to contained resources.

- [Example of Sequence profile of FMR1 using CGG motifs edited by contained referenced sequence resources](MolecularDefinition-example-sequence-fmr1-cgg-20x-edited-contained.html)

Please check the [complete list of Sequence examples](StructureDefinition-sequence-examples.html) for more examples

### Allele as a MolecularDefinition
The following examples illustrate instances of allele. In this example, the asserted state of the allele is different from the state of the context sequence at the given location. Note: the CG group is still determining how to best represent named alleles; therefore, the reference to the star allele in this example should be considered preliminary and subject to change.

- [Example of Allele profile including slices for CYP2C19 position 1016](MolecularDefinition-example-allelesliced-cyp2c19-1016g.html)
- [Example of Allele profile including slices for CYP2C19 position 1016 while leveraging contained resources](MolecularDefinition-example-allelesliced-cyp2c19-1016-cont.html)

Please check the [complete list of Allele examples](StructureDefinition-allele-examples.html) for more examples

### Variation as MolecularDefinition
The following examples illustrate instances of variation. In this example, the state of the alternate allele is defined as being different from the state of the reference allele, but the same structure could be used to represent a variation where the two alleles are the same. Note that this example uses a 0-based interval coordinate system.

- [Example of Variation profile of CYP2C19 at Position 1015 as SPDI](MolecularDefinition-example-variation-cyp2c19-1015-spdi.html)

The following example illustrates a tri-allelic polymorphism. In this example, it is necessary to unambiguously specify the reference and alternate alleles, neither of which might match the state of the context sequence at the specified location. The slices on the representation element are needed to support this use case.
- [Example of Variation profile of ABCB1 Tri-allelic Variation](MolecularDefinition-example-variation-tri-allelic-ABCB1.html)

The following examples represents how HGVS, SPDI, VRS, and VCF may be represented considering codes and location coordinate systems.

Note: these examples are not complete and under active development and curation, same as other artifacts on this implementation guide.

- [Example of Variation of CYP2C19 at Position 991 as HGVS](MolecularDefinition-example-variation-cyp2c19-991-hgvs.html)

- [Example of Variation of CYP2C19 at Position 1015 as SPDI](MolecularDefinition-example-variation-cyp2c19-1015-spdi.html)

- [Example of Variation of CYP2C19 at Position 1015 as VRS](MolecularDefinition-example-variation-cyp2c19-1015-vrs.html)

- [Example of Variation of CYP2C19 at Position 1016 as VCF](MolecularDefinition-example-variation-cyp2c19-1016-vcf.html)


Please check the [complete list of Variation examples](StructureDefinition-variation-examples.html) for more examples

### Two Aggregate Use Cases to Represent How Sequence, Allele, Haplotype and Genotype Profiles Can Work Together to Represent various Genotypes

#### HLA Genotype 
To illustrate the interaction of various MolecularDefinition profiles, we begin with a foundational example: [an instance of a Sequence profile](MolecularDefinition-example-sequence-hla000011.html) representing the raw coding sequence of HLA00001.1, which corresponds to the HLA-A01:01:01:01 allele. Building upon this, two distinct sets of Allele profiles are introduced, each encompassing five individual alleles derived from the HLA-A01:01:01:01 and HLA-A*01:02:01:01 groups, respectively. Each Allele set is then aggregated into a corresponding Haplotype instance, capturing the linkage of alleles on a single chromosome. Finally, these two Haplotype instances are integrated into [an instance of Genotype profile](MolecularDefinition-example-genotype-hla-00001-and-2.html), representing the combined allelic composition across both chromosomes at the HLA-A locus. This example shows how raw sequence data can be built up through alleles and haplotypes into a complete genotype. The following is the set of MolecularDefinition instances that represent this use case:

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
The CYP2C19 gene encodes an enzyme essential for metabolizing several medications, including anti-coagulants, anti-depressants, and proton pump inhibitors. Variations in an individual's CYP2C19 genotype can significantly influence drug response, affecting efficacy and risk of adverse effects. In this example, the [genotype instance](MolecularDefinition-example-genotype-cyp2c19-1002-and-3.html) is represented as a composite of two haplotypes, [CYP2C19*1.002](MolecularDefinition-example-haplotype-cyp2c19-1002.html) and [CYP2C19*3.002](MolecularDefinition-example-haplotype-cyp2c19-3002.html), each defined by two alleles located at positions 661 and 1016 within the reference sequence context. This genomic information involves representing these haplotypes and their constituent alleles by leveraging the MolecularDefinition profiles, i.e., Genotype, Haplotype, Allele and Sequence, through a series of interconnected profile instances. The following nested list shows this example and corresponding MolecularDefinition instances.

- [Genotype of CYP2C19\*1.002 and CYP2C19\*3.002](MolecularDefinition-example-genotype-cyp2c19-1002-and-3.html)
   - [CYP2C19*1.002:c.[661G; 1016G]](MolecularDefinition-example-haplotype-cyp2c19-1002.html)
      - [First Allele, CYP2C19*1.002:c.661G](MolecularDefinition-example-allelesliced-cyp2c19-661g.html)
      - [Second Allele, CYP2C19*1.002:c.1016G](MolecularDefinition-example-allelesliced-cyp2c19-1016g.html)
   - [CYP2C19*3.002:c.[661A; 1016G]](MolecularDefinition-example-haplotype-cyp2c19-3002.html)
      - [First Allele, CYP2C19*1.002:c.661A](MolecularDefinition-example-allelesliced-cyp2c19-661a.html)
      - [Second Allele, CYP2C19*1.002:c.1016G](MolecularDefinition-example-allelesliced-cyp2c19-1016g.html)

- [Genotype of CYP2C19\*1.002 (CYP2C19\*1B) and CYP2C19\*1.003 (CYP2C19\*1C) haplotypes](MolecularDefinition-example-genotype-cyp2c19-1b-and-1c.html)
   - [CYP2C19\*1.002 (CYP2C19\*1B)](MolecularDefinition-example-haplotype-cyp2c19-1b.html)
      - [First Allele, CYP2C19*1.002:c.661G](MolecularDefinition-example-allelesliced-cyp2c19-1b-124t.html)
      - [Second Allele, CYP2C19*1.002:c.1016G](MolecularDefinition-example-allelesliced-cyp2c19-1b-1016g.html)
   - [CYP2C19\*1.003 (CYP2C19\*1C)](MolecularDefinition-example-haplotype-cyp2c19-1c.html)
      - [Allele, G at 1016](MolecularDefinition-example-allelesliced-cyp2c19-1b-1016g.html)

Please check the [complete list of Haplotype examples](StructureDefinition-haplotype-examples.html) and the [complete list of Genotype examples](StructureDefinition-genotype-examples.html) for more examples

### VKORC1 Genotype
The following examples would be relevant from a genomic definitional prespective to the Genotype example [Pgx-geno-1003](https://hl7.org/fhir/uv/genomics-reporting/Observation-Pgx-geno-1003.html) of FHIR Genomics Reporting Implementation Guide.
- [Genotype of VKORC1 of C/T at 31096368](MolecularDefinition-example-genotype-vkorc1-31096368c-and-31096368t.html)
   - [Haplotype of VKORC1, C at 31096368](MolecularDefinition-example-haplotype-vkorc1-31096368c.html)
   - [Haplotype of VKORC1, T at 31096368](MolecularDefinition-example-haplotype-vkorc1-31096368t.html)
- [Genotype of VKORC1 of T/T at 31096368](MolecularDefinition-example-genotype-vkorc1-31096368t-and-31096368t.html)
- [Genotype of VKORC1 of C/C at 31096368](MolecularDefinition-example-genotype-vkorc1-31096368c-and-31096368c.html)

### More Immunogenetics and Histocompatibility Use Cases
Immunogenetics and histocompatibility constitute critical domains in biomedical research and clinical practice, underpinning the understanding of immune responses, transplant compatibility, and disease susceptibility. The introduction of the Molecular Definition resource within the HL7 FHIR framework represents a significant advancement by providing a standardized model for capturing and exchanging detailed molecular characteristics relevant to these fields. This resource facilitates precise representation of genetic and molecular data essential for accurate immunogenetic and histocompatibility assessments. 

It is important to note that this effort remains a work in progress; the specifications and accompanying illustrative examples are undergoing continual refinement and updates to enhance their accuracy and utility. Furthermore, some terminologies adopted in this implementation guide may diverge from traditional usage within immunogenetics and histocompatibility disciplines. Users are therefore advised to consult the specific profile definitions and the glossary provided to ensure clarity and consistency in interpretation.
Please check the [HLA Genotype examples](use-cases.html#hla-genotype).

It is crucial to recognize that the terminologies employed within this guide, such as allele, haplotype, and genotype, may diverge from the definitions presented in the immunogenetics and histocompatibility Use Cases. This discrepancy underscores the need for precision in usage and comprehension. To mitigate potential confusion arising from the multiple definitions of identical concepts, the HL7 Clinical Genomics work group will undertake efforts to harmonize these terminologies, striving for alignment that ensures clarity and consistency across different contexts.

TODO: a schematic diagram to be added

<!-- TODO: add schematic diagram to show the use cases from genetic point of view -->

This implementation guide is designed to align closely with the future version of the Genomics Reporting Implementation Guide, ensuring comprehensive and precise genomic reporting specifications. This alignment aims to leverage the most recent enhancements in three main FHIR resources such as Observation, DiagnosticReport, and GenomicStudy, thereby promoting consistency, interoperability, and accuracy in the context of immunogenetics and histocompatibility.
