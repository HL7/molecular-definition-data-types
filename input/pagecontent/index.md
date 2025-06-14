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

### Profiles

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
This implementation guide, along with its included artifacts, has been meticulously designed and developed to address practical use cases involving the exchange of genomic molecules and their associated data across diverse institutions and systems. By providing standardized frameworks and code systems, the guide facilitates seamless interoperability and accurate data representation. This section presents example use cases that demonstrate how this implementation guide can be leveraged to represent real genomic concepts as FHIR resource instances, thereby illustrating its applicability and effectiveness in real-world genomic data exchange scenarios.

### Use Case -1
### Use Case -2
### Use Case -3

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