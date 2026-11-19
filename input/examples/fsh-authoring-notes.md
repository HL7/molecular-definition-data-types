# MolecularDefinition example authoring notes

The MolecularDefinition examples in this folder (and the resources they contain) were authored in FSH until they were converted to
JSON so that each one can carry the `resourceDefinition` that FHIR 6.0.0-snapshot1 requires on additional
resources (SUSHI 3.21.1 cannot write it). The JSON files are now the authoritative source.
The conversion added only `resourceDefinition`; all other content is the SUSHI 3.21.1 output of the
former FSH. This file keeps the comments from that FSH, grouped by example. Lines that start with
`//*` or `// *` were commented-out FSH rules. A rule followed by a trailing comment is shown in full.
The former FSH files are in the Git history (input/fsh/examples/{allele,genotype,haplotype,sequence,variation}-examples.fsh).

## allele-examples.fsh

### example-allelesliced-cyp2c19-661g

```
(before the instance) // CYP2C19*1.002:c.[661G; 1016G]
* type.coding = $CGMoleculeType#rna "RNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-cyp2c19-661a

```
* type.coding = $CGMoleculeType#rna "RNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-cyp2c19-1016g

```
* type.coding = $CGMoleculeType#rna "RNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-cyp2c19-1016-cont

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-nm0007694-acc

```
(FSH inline instance, no Description; now contained resource #example-sequence-nm0007694-acc in example-allelesliced-cyp2c19-1016-cont)
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-allelesliced-hla-98-t

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-121-c

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-123-c

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-126-g

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-144-c

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-98-c

```
(before the instance) // HLA00002
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-121-a

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-123-t

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-126-a

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-144-a

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-cyp2c19-661g-coded

```
(before the instance) // Terminology binding examples
* type.coding = $CGMoleculeType#rna "RNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-hla-144-a-coded

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-cyp2c19-1b-124t

```
(before the instance) // CYP2C19*1.002 (CYP2C19*1.002*1B)
* type.coding = $CGMoleculeType#rna "RNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-cyp2c19-1b-1016g

```
* type.coding = $CGMoleculeType#rna "RNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-vkorc1-31096368c

```
(before the instance) // for VKORC1
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

### example-allelesliced-vkorc1-31096368t

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
//* representation[0].focus.coding = MolecularDefinitionFocus#allele-state "Allele State"
//* representation[+].focus.coding = MolecularDefinitionFocus#context-state "Context State"
```

## genotype-examples.fsh

### example-genotype-hla-00001-and-2

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-genotype-cyp2c19-1002-and-3

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-genotype-cyp2c19-1b-and-1c

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-genotype-vkorc1-31096368c-and-31096368t

```
(before the instance) // for VKORC1
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-genotype-vkorc1-31096368t-and-31096368t

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-genotype-vkorc1-31096368c-and-31096368c

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

## haplotype-examples.fsh

### example-haplotype-hla-00001

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-haplotype-hla-00002

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-haplotype-cyp2c19-1002

```
(before the instance) // CYP2C19*1.002:c.[661G; 1016G]
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-haplotype-cyp2c19-3002

```
(before the instance) // CYP2C19*3.002:c.[661A; 1016G]
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-haplotype-cyp2c19-1b

```
(before the instance) // CYP2C19*1.002 (CYP2C19*1B)
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-haplotype-cyp2c19-1c

```
(before the instance) // CYP2C19*1.003 (CYP2C19*1C)
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-haplotype-vkorc1-31096368c

```
(before the instance) // VKORC1 reference (C)
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-haplotype-vkorc1-31096368t

```
(before the instance) // VKORC1 variant (T)
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

## sequence-examples.fsh

### example-sequence-a-dna-iupac

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-c-dna-iupac

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-a-aa-iupac

```
// * representation[0].literal.encoding.coding = Encodings#aa-1-noamb-20common "Amino acid, 1 letter, no ambiguity, 20 common"
```

### example-genomic-cyp2c19-accession

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-cyp2c19-url

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-nm0007694-url

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-cyp2c19-attached

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-cyp2c19-accession

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-cyp2c19-gene-region

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
// * representation.extracted.startingMolecule.type = "MolecularDefinition"
// * representation.extracted.startingMolecule.display = "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), RefSeqGene (LRG_584) on chromosome 10"
```

### example-sequence-cyp2c19-upstream-region

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
// * representation.extracted.startingMolecule.type = "MolecularDefinition"
// * representation.extracted.startingMolecule.display = "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), RefSeqGene (LRG_584) on chromosome 10"
```

### example-sequence-cyp2c19-downstream-region

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
// * representation.extracted.startingMolecule.type = "MolecularDefinition"
// * representation.extracted.startingMolecule.display = "Homo sapiens cytochrome P450 family 2 subfamily C member 19 (CYP2C19), RefSeqGene (LRG_584) on chromosome 10"
```

### example-sequence-cyp2c19-concatenated-regions

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-cgg

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-fmr1-cgg-20x-repeat

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-fmr1-cgg-20x-edited-referenced

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### replacement

```
(FSH inline instance, Description "Simple Sequence example with IUPAC encoding, A"; now contained resource #replacement in example-sequence-fmr1-cgg-20x-edited-contained)
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### replaced

```
(FSH inline instance, Description "Simple Sequence example with IUPAC encoding, C"; now contained resource #replaced in example-sequence-fmr1-cgg-20x-edited-contained)
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-fmr1-cgg-20x-edited-contained

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-nc00000714-url

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-hla000011

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

### example-sequence-nc00001610-url

```
(before the instance) // for VKORC1
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be change later to an additional info other than this if moleculeType
```

## variation-examples.fsh

### example-variation-cyp2c19-1015-spdi

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-variation-tri-allelic-ABCB1

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-variation-cyp2c19-1015-spdi-coded

```
(before the instance) // Terminology binding examples
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-variation-tri-allelic-ABCB1-coded

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-variation-cyp2c19-991-hgvs

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-variation-cyp2c19-1015-vrs

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
```

### example-variation-cyp2c19-1015-vcf

```
* type.coding = $CGMoleculeType#dna "DNA sequence" // need to be changed later to an additional info other than this if moleculeType
// * location.sequenceLocation.coordinateInterval.endQuantity.value = 1016
```
