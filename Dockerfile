# Base Image
FROM biocontainers/biocontainers:latest

# Metadata
LABEL base.image="biocontainers:latest"
LABEL version="SMC-Heterogeneity Release 5"
LABEL software="PhyloWGS"
LABEL software.version="smchet5"
LABEL description="Application for inferring subclonal composition and evolution from whole-genome sequencing data"
LABEL website="https://github.com/morrislab/phylowgs"
LABEL documentation="https://github.com/morrislab/phylowgs"
LABEL license="https://github.com/morrislab/phylowgs"
LABEL tags="Genomics"

# Maintainer
MAINTAINER Tiandao Li <litd99@gmail.com>

# Installation
RUN apt-get install -y --no-install-recommends libnss-sss
RUN conda install phylowgs

WORKDIR /data/

