FROM python:3.13-alpine

RUN apk add --no-cache git=2.54.0-r0 && \
    rm -rf /var/cache/apk/*

COPY base-requirements.txt /tmp/

RUN pip install --no-cache-dir -r /tmp/base-requirements.txt && \
    rm /tmp/base-requirements.txt

ENTRYPOINT ["/bin/sh"]
