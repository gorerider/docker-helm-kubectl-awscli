ARG DOCKER_VERSION=19.03.12

FROM docker:$DOCKER_VERSION

ARG K8S_VERSION=v1.16.13
ARG HELM_VERSION=v3.2.4
ENV HELM_FILENAME=helm-${HELM_VERSION}-linux-amd64.tar.gz

RUN apk add --update ca-certificates gettext tar gzip curl jq python3 py-pip \
    && pip install awscli \
    && curl -L https://storage.googleapis.com/kubernetes-release/release/${K8S_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && curl -L https://get.helm.sh/${HELM_FILENAME} | tar xz && mv linux-amd64/helm /bin/helm && rm -rf linux-amd64 \
    && chmod +x /usr/local/bin/kubectl \
    && rm /var/cache/apk/*