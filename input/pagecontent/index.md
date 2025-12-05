Structured genetic information plays a crucial role in modern genomic medicine, enabling precision-based approaches such as personalized medicine and targeted therapies. Accurate representation and exchange of genetic data are essential for clinical decision-making, research, and interoperability across healthcare systems. However, the inherent complexity of genetic definitions, along with variations in interpretation based on context and use case, poses significant challenges in standardizing genetic data communication.

>This implementation guide is not complete. The included artifacts are marked as experimental, but they are ready for review, testing, and validation.
{: .note-to-balloters}

### Scope
This implementation guide addresses these challenges by leveraging the newly developed [MolecularDefinition]({{site.data.fhir.path}}moleculardefinition.html) resource to support the structured representation of fundamental genetic concepts, including sequence, allele, and variation. Additionally, it integrates various core FHIR resources to establish a robust framework for interoperable genetic data exchange.

The guide outlines methodologies and provides practical examples of how to utilize the developed MolecularDefinition profiles across diverse genomic applications, including:

   - Structured exchange of simple sequences of DNA, RNA, or amino acids.
   - Efficient communication of significant alleles at specific genetic loci impacting pharmacogenomics.
   - Comprehensive representation of genetic variations, ranging from simple mutations to complex structural variations, for diagnostic purposes.
   - Logical presentation of haplotypes and genotypes relevant to clinical or research settings.

By establishing a standardized approach to genomic data representation, this implementation guide facilitates consistent and accurate genetic information exchange, supporting integration within electronic health records, research databases, and clinical genomic workflows

### How to Use this Guide
This Implementation Guide is designed to assist system developers and standards implementers in adopting the FHIR genomic profiles of the MolecularDefinition resource across diverse use cases. The implementation guide defines five key profiles—Sequence, Allele, Variation, Haplotype, and Genotype—each tailored to represent distinct genomic concepts. To ensure consistent and reliable representation of the various data elements within these profiles, the guide also provides a curated set of Code Systems and Value Sets. These terminologies, currently bound with example strength to their respective elements, are expected to evolve and undergo validation over time, while already supporting meaningful and accurate data representation. The included Code Systems and Value Sets comprise a combination of adapted existing ontologies and terminologies alongside newly developed vocabularies specifically crafted for the MolecularDefinition structure. Furthermore, the Use Cases section illustrates practical applications of these MolecularDefinition profiles, Code Systems, and Value Sets through real-world genomic molecule examples, facilitating a deeper understanding of their implementation in clinical and research contexts

Readers are encouraged to start with this page and follow the linked sections in order. They are also free to navigate directly to any section of interest or move back and forth according to their individual needs—for example, jumping directly to the Use Case section. The recommended reading sequence starts with the Motivation section, which provides the foundational rationale behind the MolecularDefinition profiles. Following this, readers should familiarize themselves with the MolecularDefinition core resource to understand its structure and scope. Next, it is important to grasp the intended goals of each profile, including their distinctions and interrelationships. Afterward, an overview of the curated Code Systems should be reviewed to appreciate their specific purposes and how they support the corresponding profiles. Finally, readers may explore the practical examples beginning with simpler Sequence, Allele, and Variation example instances, progressively advancing to the more complex scenarios involving Haplotypes and Genotypes.

Suggested Sequence:
1. [Motivation](motivation.html) of this implementation guide
2. [Introduction to HL7 FHIR](#understanding-fhir)
3. [MolecularDefinition resource]({{site.data.fhir.path}}moleculardefinition.html)
4. MolecularDefinition [profiles](#profiles) and their corresponding genetic concepts
5. [Supporting terminologies](terminology.html), i.e., code systems and value sets
6. [Example Use Cases](use-cases.html)
7. Supporting tools

### The Future with the Genomics Reporting Implementation Guide
This Implementation Guide is designed to define foundational genomic elements of genomic molecules and concepts—such as sequences and alleles—adopting a patient-agnostic perspective crucial for establishing standardized genomic FHIR artifacts. The Clinical Genomics Working Group also supports the [Genomics Reporting Implementation Guide](https://hl7.org/fhir/uv/genomics-reporting/) (GRIG) which includes concepts like the genomic report itself and the high-level categories of observations and other elements that make up the report.

As of this release, this IG and the GRIG are independent of each other. This IG is ready for testing its intended goals of representing the foundational definitional elements. This IG is intended to support any workflow where there is a need for explicit description of the concepts it defines. All of the profiles defined here will be patient-agnostic, so if your use case calls for reporting patient specific results, we would recommend utilizing the GRIG for now.

In the future, the Working Group will utilize the discrete data structures defined by this IG within the GRIG, by addition to and/or substitution of corresponding GRIG profiles (e.g., Variant, Genotype, Haplotype, etc ...). We anticipate an improved ability to exchange structured genomic data produced by clinical testing. For example, it is possible the existing GRIG profiles will remain for the community, and a new set of Observation profiles utilizing this IG will be added to the GRIG. Alternatively, the existing profiles in the GRIG might be redesigned to use this IG. The value of this IG is in the loose coupling between the well-defined and discrete data structures, so ultimately this IG will add value to genomic data interoperability regardless of the decisions or timelines related to its inclusion within the GRIG.

>This diagram is the current strategic vision, which is still a work in progress and subject to change. As with all our work, these decisions will be subject to open discussion and formal votes. Timelines for implementation will be dependent on the feedback and testing.
{: .note-to-balloters}

![Future State of Genomics in FHIR (work in progress)](Moldef-relationship-to-other-resources-new-1.png "Future State of Genomics in FHIR (work in progress)")  
  
  
### Profiles
The Sequence profile is a core part of this guide, used to represent raw genetic sequences like DNA, RNA, and proteins in various formats. Unlike profiles such as Allele and Variation that emphasize genomic location, the Sequence profile focuses on the intrinsic composition of genetic material and supports integration with other profiles to enhance overall functionality. The Allele profile builds upon the Sequence profile by defining genetic makeup at specific genomic locations through two states: the base context and the specific allele state. This structured representation ensures accuracy and consistency, forming a basis for other profiles to leverage. The Variation profile represents genetic variations at a precise location, characterizing genetic composition in three states—context, reference, and alternative—while enabling integration with Sequence profile for comprehensive depiction of genomic alterations. The Haplotype profile captures collections of related alleles that exist in CIS (on the same chromosome), representing linked genetic variants. Finally, the Genotype profile extends this concept to encompass collections of related alleles and/or haplotypes that may be in CIS or Trans (on opposite chromosomes) configurations, enabling detailed representation of an individual’s genetic composition. The following is a list of these profiles, their adopted short definitions as well as their corresponding structure definition pages including various examples:
- [Sequence](StructureDefinition-sequence.html) profile to represent raw and contiguous genetic sequences, including DNA, RNA, and proteins in a  multiple formats
- [Allele](StructureDefinition-allele.html) profile is a genetic sequence within a specified location, representing the context (i.e., current) state, and the corresponding allele state
- [Variation](StructureDefinition-variation.html) profile specified a contiguous genetic variation on a specified location on sequence, representing reference, context, and alternative states of this genetic makeup
- [Haplotype](StructureDefinition-haplotype.html) profile is a collection of related Alleles that are in cis to each other.
- [Genotype](StructureDefinition-genotype.html) profile is a collection of related Alleles and/or Haplotypes that are in cis or trans to each other.

![MolecularDefinition Profiles](MolDef-profiles-resized.png "MolecularDefinition Profiles and Relationships")




<!-- TODO: Add glossary of genomic terms for implementers -->
### Glossary of Genomics Terms
For more details about genomic terms and their corresponding definition, please check this [glossary](https://hl7.org/fhir/uv/genomics-reporting/Glossary.html).

### Understanding FHIR
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

### Extending beyond this Guide
<!-- from Genomics reporting IG -->
Implementers should use this guide to structure genomics data in an interoperable way. The Clinical Genomics Working Group understands that this guide is not complete, and implementers might identify additional concepts and data elements. 

### Cross Version Analysis 
{% include cross-version-analysis.xhtml %} 

### Dependency Table 
{% include dependency-table-short.xhtml %} 

### Globals Table 
{% include globals-table.xhtml %} 

### IP Statements 
{% include ip-statements.xhtml %} 

### Acknowledgments

| Name           | Organization               |
|----------------|----------------------------|
| Name 1         | Org 1                      |
| Name 1         | Org 1                      |
| Name 1         | Org 1                      |


<!-- TODO: Add glossary of genomic terms for implementers -->
