---

### 🐳 `Dockerfile`

```Dockerfile
FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    openjdk-11-jre \
    fastqc \
    bwa \
    samtools \
    git \
    unzip \
    wget \
    build-essential

# Install Snakemake
RUN pip3 install snakemake

# Install Trimmomatic
RUN mkdir -p /prg/trimmomatic/0.39 && \
    wget -O /prg/trimmomatic/0.39/trimmomatic-0.39.jar https://github.com/timflutre/trimmomatic/raw/master/trimmomatic-0.39.jar

# Install Hapo-G
RUN git clone https://github.com/ntoulza/Hapo-G.git /prg/hapog/1.2

# Install Compleasm
RUN pip3 install compleasm

WORKDIR /app
COPY . .
ENTRYPOINT ["snakemake"]
