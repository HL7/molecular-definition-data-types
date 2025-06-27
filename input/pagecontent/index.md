# Scope

Structured genetic information plays a crucial role in modern genomic medicine, enabling precision-based approaches such as personalized medicine and targeted therapies. Accurate representation and exchange of genetic data are essential for clinical decision-making, research, and interoperability across healthcare systems. However, the inherent complexity of genetic definitions, along with variations in interpretation based on context and use case, poses significant challenges in standardizing genetic data communication.

This implementation guide addresses these challenges by leveraging the newly developed Molecular Definition resource to support the structured representation of fundamental genetic concepts, including sequence, allele, and variation. Additionally, it integrates various core FHIR resources to establish a robust framework for interoperable genetic data exchange.

The guide outlines methodologies and provides practical examples of how to utilize the developed Molecular Definition profiles across diverse genomic applications, including:

   - Structured exchange of simple sequences of DNA, RNA, or amino acids.
   - Efficient communication of significant alleles at specific genetic loci impacting pharmacogenomics.
   - Comprehensive representation of genetic variations, ranging from simple mutations to complex structural variations, for diagnostic purposes.
   - Logical presentation of haplotypes and genotypes relevant to clinical or research settings.

By establishing a standardized approach to genomic data representation, this FHIR implementation guide facilitates consistent and accurate genetic information exchange, fostering improved integration within electronic health records, research databases, and clinical genomic workflows

## How to Use this Guide
This Implementation Guide is designed to assist system developers and standards implementers in adopting the FHIR genomic profiles of the Molecular Definition resource across diverse use cases. The implementation guide defines five key profiles—Sequence, Allele, Variation, Haplotype, and Genotype—each tailored to represent distinct genomic concepts. To ensure consistent and reliable representation of the various data elements within these profiles, the guide also provides a curated set of Code Systems and Value Sets. These terminologies, currently bound with example strength to their respective elements, are expected to evolve and undergo validation over time, while already supporting meaningful and accurate data representation. The included Code Systems and Value Sets comprise a combination of adapted existing ontologies and terminologies alongside newly developed vocabularies specifically crafted for the Molecular Definition structure. Furthermore, the Use Cases section illustrates practical applications of these Molecular Definition profiles, Code Systems, and Value Sets through real-world genomic molecule examples, facilitating a deeper understanding of their implementation in clinical and research contexts

While readers of this Implementation Guide are encouraged to begin with this page and proceed through the linked sections sequentially, they are free to navigate directly to any section of interest or move back and forth according to their individual needs—for example, jumping directly to the Use Case section. The recommended reading sequence starts with the Motivation section, which provides the foundational rationale behind the Molecular Definition profiles. Following this, readers should familiarize themselves with the Molecular Definition core resource to understand its structure and scope. Next, it is important to grasp the intended goals of each profile, including their distinctions and interrelationships. Afterward, an overview of the curated Code Systems should be reviewed to appreciate their specific purposes and how they support the corresponding profiles. Finally, readers may explore the practical examples beginning with simpler Sequence, Allele, and Variation example instances, progressively advancing to the more complex scenarios involving Haplotypes and Genotypes.

Suggested Sequence:
1. Motivation of this implementation guide
2. Introduction to HL7 FHIR
3. FHIR Molecular Definition resource
4. MolecularDefinition profiles and their corresponding genetic concepts
5. Supporting terminologies, i.e., code systems and value sets
6. Examples
7. Supporting tools

### Profiles

The Sequence profile serves as a foundational element of this Implementation Guide, designed to represent raw genetic sequences—including DNA, RNA, and proteins across multiple formats to accommodate diverse implementation needs. Unlike profiles such as Allele and Variation that emphasize genomic location, the Sequence profile focuses on the intrinsic composition of genetic material and supports integration with other profiles to enhance overall functionality. The Allele profile builds upon the Sequence profile by defining genetic makeup at specific genomic locations through two states: the base context and the specific allele state. This structured representation ensures accuracy and consistency, formng a basis for other profiles to leverage. The Variation profile represents genetic variations at a precise location, characterizing genetic composition in three states—context, reference, and alternative—while enabling integration with Sequence profile for comprehensive depiction of genomic alterations. The Haplotype profile captures collections of related alleles that exist in CIS (on the same chromosome), representing linked genetic variants. Finally, the Genotype profile extends this concept to encompass collections of related alleles and/or haplotypes that may be in CIS or Trans (on opposite chromosomes) configurations, enabling detailed representation of an individual’s genetic composition. The following is a list of these profiles, their adopted short definitions as well as their corresponding structure definition pages including various examples:
- [Sequence](StructureDefinition-sequence.html) profile to represent raw and contiguous genetic sequences, including DNA, RNA, and proteins in a  multiple formats
- [Allele](StructureDefinition-allele.html) profile is a genetic sequence within a specified location, representing the context (i.e., current) state, and the corresponding allele state
- [Variation](StructureDefinition-variation.html) profile specified a contiguous genetic variation on a specified location on sequence, representing reference, context, and alternative states of this genetic makeup
- [Haplotype](StructureDefinition-haplotype.html) profile is a collection of related Alleles that are in cis to each other.
- [Genotype](StructureDefinition-genotype.html) profile is a collection of related Alleles and/or Haplotypes that are in cis or trans to each other.

### Code Systems
To achieve the ultimate objective of this implementation guide, it was essential to develop multiple code systems designed to represent diverse data elements in a standardized, interoperable format. These code systems are meticulously structured to preserve the precise semantics of genetic concepts, which often possess alternative definitions across different contexts. By establishing a common framework for encoding these concepts, the guide ensures consistent interpretation and facilitates seamless data exchange among stakeholders, thereby promoting clarity, accuracy, and interoperability within the genetic information domain. The following section provides a detailed description of these code systems and their intended purposes. These code systems are systematically grouped according to their specific functions and domains of use, enabling targeted application and effective management within the broader genetic data ecosystem.

#### Molecule Type and Encodings
[Molecule Type code system](CodeSystem-molecule-type.html) encompasses codes that specify the chemical composition of the corresponding genomic molecule, which may be DNA, RNA, or amino acids. In addition to defining the molecular nature of the corresponding genetic molecule, the [Encoding code system](CodeSystem-encodings.html) specifies how the biochemical structures of DNA, RNA, and amino acids are represented. For instance, amino acids can be encoded using various standardized symbol sets, including Amino Acid 1-letter Unambiguous Symbols, Amino Acid 3-letter Unambiguous Symbols, Amino Acid 1-letter Ambiguous Symbols, and Amino Acid 3-letter Ambiguous Symbols. This differentiation allows for precise and flexible representation of amino acid sequences, accommodating both exact and ambiguous biochemical characterizations essential for accurate genetic data interpretation and interoperability. Each of these Encoding code systems maintains its own curated list of valid codes. This comprehensive enumeration facilitates rigorous validation of content across various implementations, ensuring that data conform to standardized representations and thereby promoting consistency, accuracy, and interoperability in genetic information exchange. The following is available Encoding code systes:
- [Nucleotide DNA 1-letter Ambiguous Symbols](CodeSystem-nucleotide-dna-1letter-ambiguous.html) as single-letter ambiguous symbols for DNA residues.
- [Nucleotide DNA 1-letter Symbols Including N](CodeSystem-nucleotide-dna-1letter-with-n.html) as single-letter symbols for DNA residues, including N for any nucleotide.
- [Nucleotide DNA 1-letter Unambiguous Symbols](CodeSystem-nucleotide-dna-1letter-unambiguous.html) as single-letter unambiguous symbols for DNA residues. 
- [Nucleotide RNA 1-letter Unambiguous Symbols](CodeSystem-nucleotide-rna-1letter-unambiguous.html) as single-letter unambiguous symbols for RNA residues.
- [Amino Acid 1-letter Ambiguous Symbols](CodeSystem-amino-acid-1letter-ambiguous.html) as single-letter symbols for amino acids, including ambiguous symbols.
- [Amino Acid 1-letter Unambiguous Symbols](CodeSystem-amino-acid-1letter-unambiguous.html) as single-letter unambiguous symbols for the 20 common amino acids.
- [Amino Acid 3-letter Ambiguous Symbols](CodeSystem-amino-acid-3letter-ambiguous.html) as three-letter symbols for amino acids, including ambiguous symbols.
- [Amino Acid 3-letter Unambiguous Symbols](CodeSystem-amino-acid-3letter-unambiguous.html) as three-letter unambiguous symbols for the 20 common amino acids.

### Topology
The [Topology code system](CodeSystem-topology.html) defines the structural arrangement of molecular sequences or modifications, capturing the spatial and organizational characteristics of genomic molecules. It includes codes that describe configurations such as linear contiguous sequences, linear sequences with gaps, circular sequences, and branched structures, reflecting the diverse molecular architectures found in genomic and biochemical contexts. This standard topological descriptors can facilitate precise representation of molecular structure in a macro-level, which is critical for understanding functional and regulatory genomic features.

### Location
Genomic location and coordinates are fundamental to ensuring the reliable and precise positioning of genomic molecules within the context of another molecule, such as a DNA sequence. This implementation guide incorporates various code systems designed to support location elements, enabling accurate representation of genomic positions. These systems capture essential details like chromosome identifiers, start and end positions, and coordinate types, facilitating unambiguous mapping of genetic features relative to reference genomes. The following is a list of developed code systems to support location element:
- The [Strand Orientation code system](CodeSystem-strand-orientation.html) defines the directionality of molecular sequences, specifying the polarity of nucleotides from 5' to 3' or 3' to 5', and for amino acids from the N-terminus to the C-terminus. Accurate representation of strand orientation is essential for interpreting genetic information correctly, as it influences transcription, translation, and the functional context of sequences.
- The [Coordinate Origin code system](CodeSystem-coordinate-origin.html) establishes the reference points from which sequence coordinates are counted. It standardizes starting point of counting, i.e., sequence start, feature start, or feature end. Using these codes may ensure consistent and unambiguous positioning of genomic elements across different datasets and applications.
- The [Normalization Method code system](CodeSystem-normalization-method.html) describes the standardized techniques used to normalize sequence variants including left-shift, right-shift, and fully-justified.

### Representation Focus
The [Focus code system](CodeSystem-molecular-definition-focus-cs.html) is a foundational component within the molecular definition representation framework. It plays a pivotal role in articulating the relationships between each molecular representation and the described genomic molecule, as well as defining how these representations interrelate based on specific use cases. For example, in the [Variation Profile](StructureDefinition-variation.html), the Focus element is utilized to distinguish between reference, alternative, and contextual states, thereby enabling precise characterization and interpretation of genetic variations as detailed further in the [Variation Profile](StructureDefinition-variation.html) documentation.

## Implemenation Use Cases
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


### Use Case -4
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
The CYP2C19 gene encodes an enzyme essential for metabolizing several medications, including anti-coagulants, anti-depressants, and proton pump inhibitors. Variations in an individual's CYP2C19 genotype can significantly influence drug response, affecting efficacy and risk of adverse effects. In this example, the [genotype instance](MolecularDefinition-example-genotype-cyp2c19-1002-and-3.html) is represented as a composite of two haplotypes, [CYP2C19*1.002](MolecularDefinition-example-haplotype-cyp2c19-1002.html) and [CYP2C19*3.002](MolecularDefinition-example-haplotype-cyp2c19-3002.html), each defined by two alleles located at positions 661 and 1016 within the reference sequence context. This genomic information involves representing these haplotypes and their constituent alleles by leveraging the MOlecular Definition profiles, i.e., Genotype, Haplotype, Allelem and Sequence, through a series of interconnected profile instances.The following nested list shows this example and corresponding MolecularDefinition instances.

- [Genotype of CYP2C19\*1.002 and CYP2C19\*3.002](MolecularDefinition-example-genotype-cyp2c19-1002-and-3.html)
   - [CYP2C19*1.002:c.[661G; 1016G]](MolecularDefinition-example-haplotype-cyp2c19-1002.html)
      - [First Allele, CYP2C19*1.002:c.661G](MolecularDefinition-example-allelesliced-cyp2c19-661g.html)
      - [Second Allele, CYP2C19*1.002:c.1016G](MolecularDefinition-example-allelesliced-cyp2c19-1016g.html)
   - [CYP2C19*3.002:c.[661A; 1016G]](MolecularDefinition-example-haplotype-cyp2c19-3002.html)
      - [First Allele, CYP2C19*1.002:c.661A](MolecularDefinition-example-allelesliced-cyp2c19-661a.html)
      - [Second Allele, CYP2C19*1.002:c.1016G](MolecularDefinition-example-allelesliced-cyp2c19-1016g.html)


## Understanding FHIR

## Related Specifications

## Cross Version Analysis 

{% include cross-version-analysis.xhtml %} 

## Dependency Table 

{% include dependency-table-short.xhtml %} 

## Globals Table 

{% include globals-table.xhtml %} 

## IP Statements 

{% include ip-statements.xhtml %} 

## Acknowledgments