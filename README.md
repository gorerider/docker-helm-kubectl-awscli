# docker - helm - kubectl - awscli

This Docker image includes:

- Docker
- Helm
- kubectl
- awscli (v1)

# Building

    docker build \
        --build-arg DOCKER_VERSION=19.03.12 \
        --build-arg K8S_VERSION=v1.16.13 \
        --build-arg HELM_VERSION=v3.2.4 \
        -t docker-helm-kubectl-awscli:19.03.12-v1.16.13-v3.2.4-1 \
        .
