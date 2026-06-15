FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-core-runtime:1.1.0

RUN dnf install -y \
        git \
        python3.13 \
        python3.13-pip

ENV VIRTUAL_ENV=/opt/python

RUN mkdir $VIRTUAL_ENV && \
    python3.13 -m venv $VIRTUAL_ENV

ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip --no-cache-dir install \
        aws-encryption-sdk==3.3.1 \
        PyYAML==6.0
