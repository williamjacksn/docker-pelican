FROM python:3.7.1-alpine3.8

COPY requirements.txt /requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --requirement /requirements.txt

RUN mkdir /pelican-site
WORKDIR /pelican-site

ENTRYPOINT ["pelican"]
CMD ["content"]

LABEL maintainer=william@subtlecoolness.com \
      org.label-schema.schema-version=1.0 \
      org.label-schema.version=0.0.2
