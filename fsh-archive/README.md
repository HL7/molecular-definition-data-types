# Archived FSH examples

These files are the original FSH sources of the MolecularDefinition examples
(Allele, Genotype, Haplotype, Sequence, Variation). They are **not part of the
build**: SUSHI only reads `input/fsh`, so nothing in this folder is compiled.

MolecularDefinition is an additional resource from `hl7.fhir.uv.cg-incubator`.
Every instance, contained ones included, must declare `resourceDefinition`, and
SUSHI cannot set that element. The examples are therefore maintained as JSON in
`input/examples`. Those JSON files are the source of truth; changes made here
have no effect on the IG.

The files are kept for reference (comments, commented-out rules) and in case
SUSHI gains support for `resourceDefinition` later.
