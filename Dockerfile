FROM python:3.13-alpine

RUN apk add --no-cache git=2.54.0-r0

COPY base-requirements.txt /tmp/

RUN pip install --no-cache-dir -r /tmp/base-requirements.txt && \
    rm /tmp/base-requirements.txt

ENTRYPOINT ["/bin/sh"]
