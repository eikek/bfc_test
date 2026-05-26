FROM debian:bookworm-slim

ARG NB_USER=jovyan

USER root
SHELL [ "/bin/bash", "-c", "-o", "pipefail" ]

ENV HOME=/home/${NB_USER}
ENV NB_UID=1000
ENV NB_GID=100
ENV SHELL=bash
ENV NB_USER=${NB_USER}

# handle the NB_USER setup
RUN id -u ${NB_USER} || useradd ${NB_USER} && \
    usermod -a -G jovyan ${NB_USER}


WORKDIR $HOME

COPY dummy.sh .
RUN chmod a+x dummy.sh

USER $NB_USER
ENTRYPOINT [ "./dummy.sh" ]
