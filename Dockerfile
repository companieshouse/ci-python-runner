FROM python:3.11

RUN pip --no-cache-dir install \
    aws-encryption-sdk==3.1.1 \
    PyYAML==6.0

ENTRYPOINT ["/bin/bash"]
