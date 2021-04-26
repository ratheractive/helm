FROM debian:stable-slim

WORKDIR /helm

COPY plugins plugins

ENV HELM_DATA_HOME=/helm

RUN apt-get update && apt-get install -y curl openssl jq && \
    curl -s https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash && \
    apt-get clean
