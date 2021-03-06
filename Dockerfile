FROM ubuntu:14.04


MAINTAINER sagnitude <sag@sagnitude.com>

RUN mv /etc/apt/sources.list /etc/apt/sources.list.backup
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install --yes --no-install-recommends build-essential libtool cmake git openssl python wget curl

# Clean up.
#RUN apt-get autoremove --yes \
#    && apt-get clean \
#    && rm -Rf /var/lib/apt/lists/*

WORKDIR /root


