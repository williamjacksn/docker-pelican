FROM python:3.7.4-alpine3.10

COPY requirements.txt /requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --requirement /requirements.txt

RUN mkdir /pelican-site
WORKDIR /pelican-site

ENTRYPOINT ["/usr/local/bin/pelican"]
CMD ["content"]

LABEL maintainer=william@subtlecoolness.com
