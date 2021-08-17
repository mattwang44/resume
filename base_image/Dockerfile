FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq upgrade
RUN apt-get -q update && apt-get -qqy install \
    curl jq \
    texlive-full \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*
