ARG BASE_IMAGE=ubuntu:24.04
FROM ${BASE_IMAGE}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common git && \
    add-apt-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible openssh-client && \
    apt-get clean