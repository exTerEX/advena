FROM condaforge/mambaforge:latest

ARG ICESCREEN_VERSION=1.3.3

LABEL maintainer="Andreas Sagen"
LABEL description="ICEscreen environment for the advena Nextflow pipeline"
LABEL org.opencontainers.image.source="https://github.com/exterex/advena"
LABEL org.opencontainers.image.licenses="AGPL-3.0"

RUN mamba install -y -c conda-forge -c bioconda \
        "icescreen=${ICESCREEN_VERSION}" \
    && mamba clean -afy

ENV ICESCREEN_VERSION=${ICESCREEN_VERSION}
ENV ICESCREEN_ROOT=/opt/conda/bin

WORKDIR /data
