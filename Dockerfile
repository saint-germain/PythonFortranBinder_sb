# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

USER root

VOLUME /tmp/.X11-unix /tmp/.X11-unix rw

# libav-tools for matplotlib anim
RUN apt-get update && \
    apt-get install -y gfortran python3-tk x11-apps x11-xserver-utils python3-pyqt5 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
