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
1. [Motivation](motivation.html) of this implementation guide
2. [Introduction to HL7 FHIR](#understanding-fhir)
3. [FHIR Molecular Definition resource]({{site.data.fhir.path}}moleculardefinition.html)
4. MolecularDefinition [profiles](#profiles) and their corresponding genetic concepts
5. [Supporting terminologies](#supporting-terminologies), i.e., code systems and value sets
6. [Example Use Cases](use-cases.html)
7. Supporting tools

## Profiles

The Sequence profile serves as a foundational element of this Implementation Guide, designed to represent raw genetic sequences—including DNA, RNA, and proteins across multiple formats to accommodate diverse implementation needs. Unlike profiles such as Allele and Variation that emphasize genomic location, the Sequence profile focuses on the intrinsic composition of genetic material and supports integration with other profiles to enhance overall functionality. The Allele profile builds upon the Sequence profile by defining genetic makeup at specific genomic locations through two states: the base context and the specific allele state. This structured representation ensures accuracy and consistency, formng a basis for other profiles to leverage. The Variation profile represents genetic variations at a precise location, characterizing genetic composition in three states—context, reference, and alternative—while enabling integration with Sequence profile for comprehensive depiction of genomic alterations. The Haplotype profile captures collections of related alleles that exist in CIS (on the same chromosome), representing linked genetic variants. Finally, the Genotype profile extends this concept to encompass collections of related alleles and/or haplotypes that may be in CIS or Trans (on opposite chromosomes) configurations, enabling detailed representation of an individual’s genetic composition. The following is a list of these profiles, their adopted short definitions as well as their corresponding structure definition pages including various examples:
- [Sequence](StructureDefinition-sequence.html) profile to represent raw and contiguous genetic sequences, including DNA, RNA, and proteins in a  multiple formats
- [Allele](StructureDefinition-allele.html) profile is a genetic sequence within a specified location, representing the context (i.e., current) state, and the corresponding allele state
- [Variation](StructureDefinition-variation.html) profile specified a contiguous genetic variation on a specified location on sequence, representing reference, context, and alternative states of this genetic makeup
- [Haplotype](StructureDefinition-haplotype.html) profile is a collection of related Alleles that are in cis to each other.
- [Genotype](StructureDefinition-genotype.html) profile is a collection of related Alleles and/or Haplotypes that are in cis or trans to each other.

![Molecular Definition Profiles](MolDef-profiles-resized.png "Molecular Definition Profiles and Relationships")


## Supporting terminologies
To achieve the ultimate objective of this implementation guide, it was essential to develop multiple code systems designed to represent diverse data elements in a standardized, interoperable format. These code systems are meticulously structured to preserve the precise semantics of genetic concepts, which often possess alternative definitions across different contexts. By establishing a common framework for encoding these concepts, the guide ensures consistent interpretation and facilitates seamless data exchange among stakeholders, thereby promoting clarity, accuracy, and interoperability within the genetic information domain. The following section provides a detailed description of these code systems and their intended purposes. These code systems are systematically grouped according to their specific functions and domains of use, enabling targeted application and effective management within the broader genetic data ecosystem.

### Molecular Focus
In the context of HL7 FHIR standards applied to genomics, the MolecularDefinitionFocus coding system is utilized to precisely describe the molecular state at a specified genomic locus. This coding system encompasses several key concepts:
- Context State: This code represents the current state of the molecule at the given location, serving as a baseline descriptor of the molecular context within the genomic sequence.
- Allele State: This code defines the molecular state according to a specific allele that may present at the specified locus, thereby reflecting the allele-specific variation impacting the molecule.
- Reference State: This code indicates the molecular state as determined by comparison to a reference molecule, typically representing the canonical or consensus genomic sequence.
- Alternative State: This code characterizes the molecular state based on an alternative genomic makeup, distinguishing it from the reference and capturing polymorphic or variant genomic information.
Together, these codes within the MolecularDefinitionFocus system provide a standardized framework for precisely representing molecular variations and states essential for genomic data interoperability and clinical interpretation.
These codes are leveraged as discriminators to differentiate among various slices of profiles included in this implementation guide, such as the Allele and Variation profiles. By employing these MolecularDefinitionFocus codes, it becomes possible to distinctly identify and represent specific molecular states within the genomic data structure. More detailed descriptions follow in the subsequent sections, and illustrative examples are provided to demonstrate their practical implementation within FHIR instances of these profiles, ensuring clarity and consistency in genomic data exchange.

TODO: a placeholder for a Diagram descriping various profiles and how they leverage the Focus CodeSystem

### Molecule Type and Encodings
[Molecule Type CodeSystem](CodeSystem-molecule-type.html) encompasses codes that specify the chemical composition of the corresponding genomic molecule, which may be DNA, RNA, or amino acids. In addition to defining the molecular nature of the corresponding genetic molecule, the [Encoding CodeSystem](CodeSystem-encodings.html) specifies how the biochemical structures of DNA, RNA, and amino acids are represented. For instance, amino acids can be encoded using various standardized symbol sets, including Amino Acid 1-letter Unambiguous Symbols, Amino Acid 3-letter Unambiguous Symbols, Amino Acid 1-letter Ambiguous Symbols, and Amino Acid 3-letter Ambiguous Symbols. This differentiation allows for precise and flexible representation of amino acid sequences, accommodating both exact and ambiguous biochemical characterizations essential for accurate genetic data interpretation and interoperability. Each of these code systems maintains its own curated list of valid codes, and ValueSets are used to represent the concepts for the specific encoding options. This comprehensive enumeration facilitates rigorous validation of content across various implementations, ensuring that data conform to standardized representations and thereby promoting consistency, accuracy, and interoperability in genetic information exchange. The following are the available ValueSets:
- [Nucleotide DNA 1-letter Ambiguous Symbols](ValueSet-nucleotide-dna-1letter-ambiguous.html) as single-letter ambiguous symbols for DNA residues.
- [Nucleotide DNA 1-letter Symbols Including N](ValueSet-nucleotide-dna-1letter-with-n.html) as single-letter symbols for DNA residues, including N for any nucleotide.
- [Nucleotide DNA 1-letter Unambiguous Symbols](ValueSet-nucleotide-dna-1letter-unambiguous.html) as single-letter unambiguous symbols for DNA residues. 
- [Nucleotide RNA 1-letter Unambiguous Symbols](ValueSet-nucleotide-rna-1letter-unambiguous.html) as single-letter unambiguous symbols for RNA residues.
- [Amino Acid 1-letter Ambiguous Symbols](ValueSet-amino-acid-1letter-ambiguous.html) as single-letter symbols for amino acids, including ambiguous symbols.
- [Amino Acid 1-letter Unambiguous Symbols](ValueSet-amino-acid-1letter-unambiguous.html) as single-letter unambiguous symbols for the 20 common amino acids.
- [Amino Acid 3-letter Ambiguous Symbols](ValueSet-amino-acid-3letter-ambiguous.html) as three-letter symbols for amino acids, including ambiguous symbols.
- [Amino Acid 3-letter Unambiguous Symbols](ValueSet-amino-acid-3letter-unambiguous.html) as three-letter unambiguous symbols for the 20 common amino acids.

### Topology
The [Topology CodeSystem](CodeSystem-topology.html) defines the structural arrangement of molecular sequences or modifications, capturing the spatial and organizational characteristics of genomic molecules. It includes codes that describe configurations such as linear contiguous sequences, linear sequences with gaps, circular sequences, and branched structures, reflecting the diverse molecular architectures found in genomic and biochemical contexts. This standard topological descriptors can facilitate precise representation of molecular structure in a macro-level, which is critical for understanding functional and regulatory genomic features.

### Location
Genomic location and coordinates are fundamental to ensuring the reliable and precise positioning of genomic molecules within the context of another molecule, such as a DNA sequence. This implementation guide incorporates various code systems designed to support location elements, enabling accurate representation of genomic positions. These systems capture essential details like chromosome identifiers, start and end positions, and coordinate types, facilitating unambiguous mapping of genetic features relative to reference genomes. The following is a list of developed code systems to support location element:
- The [Strand Orientation CodeSystem](CodeSystem-strand-orientation.html) defines the directionality of molecular sequences, specifying the polarity of nucleotides from 5' to 3' or 3' to 5', and for amino acids from the N-terminus to the C-terminus. Accurate representation of strand orientation is essential for interpreting genetic information correctly, as it influences transcription, translation, and the functional context of sequences.
- The [Coordinate Origin CodeSystem](CodeSystem-coordinate-origin.html) establishes the reference points from which sequence coordinates are counted. It standardizes starting point of counting, i.e., sequence start, feature start, or feature end. Using these codes may ensure consistent and unambiguous positioning of genomic elements across different datasets and applications.
- The [Normalization Method CodeSystem](CodeSystem-normalization-method.html) describes the standardized techniques used to normalize sequence variants including left-shift, right-shift, and fully-justified.

#### Cytoband Interval [TBD]
This section will include descriptions and diagrams in relation to how to use various MolDef elements and associated terminologies to represent various cytoband intervals use cases, how to handle validation, ... etc.
<!-- Add a diagram about the location element and another one for focusing on cytoband interval elements -->



### Representation Focus
The [Focus CodeSystem](CodeSystem-molecular-definition-focus.html) is a foundational component within the molecular definition representation framework. It plays a pivotal role in articulating the relationships between each molecular representation and the described genomic molecule, as well as defining how these representations interrelate based on specific use cases. For example, in the [Variation Profile](StructureDefinition-variation.html), the Focus element is utilized to distinguish between reference, alternative, and contextual states, thereby enabling precise characterization and interpretation of genetic variations as detailed further in the [Variation Profile](StructureDefinition-variation.html) documentation.

### More Code Systems
The HL7 Clinical Genomics Workgroup is currently engaged in efforts to expand the inclusion of additional FHIR code systems that represent widely used genomics terminologies such as HGNC (HUGO Gene Nomenclature Committee), PharmVar (Pharmacogene Variation Consortium), and RefSeq (NCBI Reference Sequence Database). This initiative aims to enhance the interoperability and standardization of genomic data representation within the HL7 FHIR clinical genomics framework, thereby facilitating more consistent and comprehensive exchange of genomic information across health IT systems. These code systems are expected to be incorporated into this implementation guide, thereby streamlining the implementation of this standard and promoting greater consistency and efficiency across adopting organizations.

## Understanding FHIR
<!-- From Genomics Reporting IG -->
This implementation guide is based on the HL7 [FHIR]({{site.data.fhir.path}}index.html) standard. It uses terminology, notations and design principles that are specific to FHIR. Before reading this implementation guide, it's important to be familiar with some of the basic principles of FHIR as well as general guidance on how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to read (or at least skim) the following prior to reading the rest of this implementation guide.

*   [FHIR overview]({{site.data.fhir.path}}overview.html)
*   [Developer's introduction]({{site.data.fhir.path}}overview-dev.html)
*   (or [Clinical introduction]({{site.data.fhir.path}}overview-clinical.html))
*   [FHIR data types]({{site.data.fhir.path}}datatypes.html)
*   [Using codes]({{site.data.fhir.path}}terminologies.html)
*   [References between resources]({{site.data.fhir.path}}references.html)
*   [How to read resource & profile definitions]({{site.data.fhir.path}}formats.html)
*   [Base resource]({{site.data.fhir.path}}resource.html)
*   [FHIR Validation]({{site.data.fhir.path}}validation.html)

## Molecular Definition as Part of The FHIR Diagnostic Module
As part of the FHIR Diagnostic Module, the Molecular Definition is currently leveraged by the Observation resource, positioning it as a cornerstone for supporting a wide range of diagnostic use cases within the HL7 FHIR framework. Specifically, the Observation resource can capture findings of specific genomic variations alongside encounter-specific details, which can then be referenced by the FHIR Diagnostic Report to provide enhanced context and interpretation. In this workflow, both the Diagnostic Report and Observation may reference an instance of the Genomic Study resource, thereby offering detailed information regarding analysis methods and sequencing processes. Consequently, the combined use of Diagnostic Report, Observation, Molecular Definition, and Genomic Study resources enables comprehensive support for diverse genomic use cases within clinical and research settings. The figure below depicts these relationships.
![Molecular Definition Relationship with Observation, Diagnostic Report, and Genomic Study](MolDef-diagnostic-relations_resized.png "Molecular Definition Relationship with Observation, Diagnostic Report, and Genomic Study")


### Clinical Genomics Information Modeling Subgroup (to be added) 

## Extending beyond this Guide
<!-- from Genomics reporting IG -->
Implementers should use this guide to structure genomics data in an interoperable way. The Clinical Genomics Working Group understands that this guide is not complete, and implementers might identify additional concepts and data elements. 

## Related Specifications

### Genomics Reporting Implementation Guide
The Molecular Definition data type Implementation Guide is meticulously designed to encapsulate the foundational definitional elements of genomic molecules and concepts—such as sequences and alleles—adopting a patient-agnostic perspective crucial for establishing a standardized genomic FHIR artifiacts. To enable the precise communication of patient-specific genomic information, stakeholders are advised to refer to the most current iteration of the [FHIR Genomics Reporting Implementation Guide](https://hl7.org/fhir/uv/genomics-reporting/). Within this context, the HL7 Clinical Genomics Workgroup, alongside its Information Modeling Subgroup, has prioritized advancing the integration and leveraging of the Molecular Definition resource and its associated data type guide into the broader Genomics Reporting framework. Achieving this integration, however, necessitates a concerte and collaborative effort among diverse stakeholders, the development and validation of implementation-driven use cases, and the assurance of adequate resource allocation. Recognizing these complexities, the FHIR Clinical Genomics Workgroup has placed this topic prominently on its agenda for thorough discussion, strategic decision making, and the establishment of a clear implementation roadmap.


## Cross Version Analysis 

{% include cross-version-analysis.xhtml %} 

## Dependency Table 

{% include dependency-table-short.xhtml %} 

## Globals Table 

{% include globals-table.xhtml %} 

## IP Statements 

{% include ip-statements.xhtml %} 

## Acknowledgments