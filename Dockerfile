FROM debian:stable-slim

RUN apt-get update && apt-get install -y curl openssl git && \
    curl -s https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash && \
    helm plugin install https://github.com/chartmuseum/helm-push && \
    apt-get clean

