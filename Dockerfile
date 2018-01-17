# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

USER root

# libav-tools for matplotlib anim
RUN apt-get update && \
    apt-get install -y gfortran python3-tk x11-apps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV DISPLAY localhost:0.0
VOLUME ["/tmp/.X11-unix:/tmp/.X11-unix"]
CMD xeyes
