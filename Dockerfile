FROM python:3.11

RUN pip --no-cache-dir install --upgrade \
    pip==26.2.2 \
    aws-encryption-sdk==4.0.7 \
    PyYAML==6.0.3

ENTRYPOINT ["/bin/bash"]
