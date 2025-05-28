Alias: $LNC = http://loinc.org
Alias: $PHV = https://www.pharmvar.org

Instance: example-allelesliced-cyp2c19-1016
InstanceOf: Allele
Description: "Simple Sequence example with IUPAC encoding, A"
Usage: #example
* moleculeType.coding = MoleculeType#rna "RNA Sequence"
* location.sequenceLocation.sequenceContext.reference = "MolecularDefinition/example-sequence-nm0007694-url"
* location.sequenceLocation.sequenceContext.type = "MolecularDefinition"
* location.sequenceLocation.sequenceContext.display = "Starting Sequence Resource: (CYP2C19), mRNA, NM_000769.4"
* location.sequenceLocation.coordinateInterval.coordinateSystem.system.coding = $LNC#LA30102-0 "1-based character counting"
* location.sequenceLocation.coordinateInterval.startQuantity.value = 1016
* location.sequenceLocation.coordinateInterval.endQuantity.value = 1016
* representation[0].focus.coding.code = "allele-state"
* representation[=].focus.coding.display = "Allele State"
* representation[=].code.coding.system = $PHV#PV00076 "CYP2C19*1.002"
* representation[=].code.coding.version = "6.2"
* representation[=].code.coding.display = "CYP2C19*1.002"
* representation[=].literal.value = "G"
* representation[+].focus.coding.code = "context-state"
* representation[=].focus.coding.display = "Context State"
* representation[=].literal.value = "A"