FROM golang:1.12

RUN mkdir -p src/helm.sh && \
    cd src/helm.sh && \
    git clone https://github.com/helm/helm.git && \
    cd helm && \
    git checkout dev-v3 && \
    make bootstrap build
ENV PATH $PATH:/go/src/helm.sh/helm/bin
