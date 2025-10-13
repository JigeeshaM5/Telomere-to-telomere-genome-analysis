# Hybrid Genome Assembly Pipeline

This pipeline performs hybrid genome assembly using PacBio HiFi and Oxford Nanopore reads, followed by polishing and post-assembly analysis. It is implemented using **Snakemake** and **Docker** for reproducibility.

## 🧬 Pipeline Steps

1. **Convert PacBio CCS BAM to FASTQ**
   - Uses `pbindex` and `bam2fastq` from PacBio toolkit

2. **Filter Oxford Nanopore Reads**
   - Uses `chopper` to remove reads < 3kb

3. **Hybrid Assembly with Hifiasm**
   - Combines HiFi and ONT reads
   - Outputs GFA and FASTA files

4. **Polishing with Illumina Reads**
   - Quality control with FastQC
   - Adapter trimming with Trimmomatic
   - Polishing with Hapo-G

5. **Post-Assembly Analysis**
   - Assembly quality with QUAST
   - Genome completeness with Compleasm (BUSCO)

## ⚙️ Usage

### Build Docker Image


docker build -t hybrid_assembly .

docker run -v $(pwd):/app hybrid_assembly snakemake --cores 4
