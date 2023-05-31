FROM python:3.11

RUN pip --no-cache-dir install \
    aws-encryption-sdk==3.1.1

ENTRYPOINT ["/bin/bash"]
