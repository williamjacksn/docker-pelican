FROM python:3.7.0-alpine3.8

LABEL maintainer="william@subtlecoolness.com"
LABEL version="0.0.1"

COPY requirements.txt /requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --upgrade pip setuptools \
 && /usr/local/bin/pip install --no-cache-dir --requirement /requirements.txt

RUN mkdir /pelican-site
WORKDIR /pelican-site

ENTRYPOINT ["pelican"]
CMD ["content"]
