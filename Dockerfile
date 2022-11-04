FROM continuumio/miniconda3:latest

LABEL "repository"="https://github.com/EtienneCmb/conda-publish-action"
LABEL "maintainer"="Etienne Combrisson"

RUN conda install -y anaconda-client conda-build

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]