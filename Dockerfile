FROM python:3.8.0-alpine3.10

ENV PELICAN_VERSION="4.2.0" \
    PYTHONUNBUFFERED="1"

RUN /usr/local/bin/pip install --no-cache-dir pelican[Markdown]==${PELICAN_VERSION}

RUN mkdir /pelican-site
WORKDIR /pelican-site

ENTRYPOINT ["/usr/local/bin/pelican"]
CMD ["content"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>" \
      org.opencontainers.image.source="https://github.com/williamjacksn/docker-pelican" \
      org.opencontainers.image.version="${PELICAN_VERSION}"
