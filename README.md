Hybrid Genome Assembly: PacBio Hifi and Oxford Nanopore reads were utilized for hybrid genome assembly using Hifiasm and polished the final assembly with Illumina reads.

Genome Annotations: BRAKER3 pipeline was used that incorporates with GeneMark-ETP + Augustus to train the model with RNASeq and protein evidence to perform the de-novo annotation, followed by TSEBRA mediated integration of both sets to improve accuracy.

Software Installation and Execution: Singularity was used to install/execute the BRAKER3 docker container.
