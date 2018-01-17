# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

USER root

# libav-tools for matplotlib anim
RUN apt-get update && \
    apt-get install -y gfortran python3-tk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV DISPLAY 127.0.0.1:0.0
