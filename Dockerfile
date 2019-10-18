FROM python:3.8.0-alpine3.10

ARG PELICAN_VERSION="4.2.0"
ENV PYTHONUNBUFFERED="1"

RUN /usr/local/bin/pip install --no-cache-dir "pelican[markdown]==${PELICAN_VERSION}"

WORKDIR /pelican-site

ENTRYPOINT ["/usr/local/bin/pelican"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>" \
      org.opencontainers.image.source="https://github.com/williamjacksn/docker-pelican" \
      org.opencontainers.image.version="${PELICAN_VERSION}"
