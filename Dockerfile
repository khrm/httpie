FROM quay.io/libpod/alpine:latest

ARG VERSION
RUN apk add --update --no-cache py-pip && \
    pip3 install --upgrade pip setuptools httpie==${VERSION} && \
    rm -r /root/.cache

ENTRYPOINT [ "http" ]
CMD ["--help"]
