FROM python:3.11-alpine
WORKDIR /app
COPY requirements.txt /app/
RUN pip --no-cache-dir install -r requirements.txt

ENTRYPOINT ["/bin/bash"]
