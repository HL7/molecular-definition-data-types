# Archived examples

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

## Contained examples (`contained-examples/`)

These are the JSON examples that used contained MolecularDefinition resources:

- `MolecularDefinition-example-sequence-fmr1-cgg-20x-edited-contained.json`, the standalone message use case
- `MolecularDefinition-example-allelesliced-cyp2c19-1016-cont.json` in its original form, with the context sequence contained

The IG Publisher currently drops `resourceDefinition` on contained additional resources, so these examples always fail validation (see https://chat.fhir.org/#narrow/channel/179165-committers/topic/Additional.20Resources.20examples.20issue/near/643383378). They were withdrawn for the January 2027 ballot. On `main`, `example-allelesliced-cyp2c19-1016-cont` now references the top-level `example-sequence-nm0007694-acc` instead.

**Restore them once the tooling supports contained additional resources.** Move the files back to `input/examples`, re-add the `resources:` entries in `sushi-config.yaml`, delete `example-sequence-nm0007694-acc` if it is no longer needed, and restore the "Molecular Sequence including a Contained Referenced resource" section in `use-cases.md`.
