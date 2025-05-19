Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality

Instance: example-genomicfile-af1961831-url
InstanceOf: DocumentReference
Usage: #example
* identifier.system = "http://www.somesystemabc.net/identifiers/files"
* identifier.value = "11111"
* status = #current
* docStatus = #preliminary
* description = "Homo sapiens MHC class I antigen (HLA-B) gene"
* securityLabel = $v3-Confidentiality#R "Restricted"
* content.attachment.contentType = #text/html
* content.attachment.url = "https://www.ebi.ac.uk/ena/browser/api/fasta/AF196183.1"
* content.attachment.title = "Homo sapiens MHC class I antigen (HLA-B) gene"