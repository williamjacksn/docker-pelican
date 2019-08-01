FROM python:3.7.4-alpine3.10

COPY requirements.txt /requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --requirement /requirements.txt

RUN mkdir /pelican-site
WORKDIR /pelican-site

ENTRYPOINT ["/usr/local/bin/pelican"]
CMD ["content"]

LABEL org.opencontainers.image.authors="William Jackson <william@subtlecoolness.com>" \
      org.opencontainers.image.source="https://github.com/williamjacksn/docker-pelican" \
      org.opencontainers.image.version="4.1.0"
