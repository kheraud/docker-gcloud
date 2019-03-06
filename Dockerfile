FROM alpine:latest

MAINTAINER Karim Heraud <kheraud@gmail.com>

ENV GCLOUD_VERSION 228.0.0

WORKDIR /opt

RUN apk add --no-cache bash python2 curl tar

RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz

RUN tar xzvf google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz

RUN rm google-cloud-sdk-${GCLOUD_VERSION}-linux-x86_64.tar.gz

RUN /bin/sh ./google-cloud-sdk/install.sh

RUN apk del curl tar
