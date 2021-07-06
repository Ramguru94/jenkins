FROM jenkinsci/blueocean

ENV TERRAFORM_VERSION=1.0.0

USER root
RUN apk add --update \
    python2 \
    python2-dev \
    py-pip \
    build-base

RUN apk add ansible

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin
