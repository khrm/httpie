FROM alpine:latest

RUN apk add --update --no-cache py3-pip && \
    pip3 install --upgrade pip setuptools httpie && \
    rm -r /root/.cache

ENTRYPOINT [ "http" ]
CMD ["--help"]
