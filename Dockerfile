FROM python:3.8.6-alpine3.12

ENV PYTHONUNBUFFERED="1"

COPY requirements.txt /docker-pelican/requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --requirement /docker-pelican/requirements.txt

WORKDIR /pelican-site

ENTRYPOINT ["/usr/local/bin/pelican"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>" \
      org.opencontainers.image.source="https://github.com/williamjacksn/docker-pelican"
