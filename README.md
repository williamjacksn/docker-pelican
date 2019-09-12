# docker-pelican

A Docker image for [getpelican/pelican](https://github.com/getpelican/pelican).

## Usage

To quick-start a new site:

1.  Create a new folder for your site: `mkdir my-site`
2.  Change to your new folder: `cd my-site`
3.  Run Pelican's quick-start: `docker container run --rm --entrypoint pelican-quickstart -v .:/pelican-site williamjackson/pelican`

After making changes to your site content, generate the output with:

`docker container run --rm -v .:/pelican-site williamjackson/pelican`
