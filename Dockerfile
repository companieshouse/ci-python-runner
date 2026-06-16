FROM python:3.13-alpine

RUN apk update && \
    apk add git    

COPY base-requirements.txt /tmp/

RUN pip install --no-cache-dir -r /tmp/base-requirements.txt

ENTRYPOINT ["/bin/sh"]
