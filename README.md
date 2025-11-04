# docker-pelican

A Docker image for [getpelican/pelican][a].

[a]: https://github.com/getpelican/pelican

```sh
docker image pull ghcr.io/williamjacksn/pelican
```

This image is also available [on Docker Hub][b] as `williamjackson/pelican`.

[b]: https://hub.docker.com/r/williamjackson/pelican

## Usage

To quick-start a new site:

1.  Create a new folder for your site:  
    `mkdir my-site`
2.  Change to your new folder:  
    `cd my-site`
3.  Run Pelican's quick-start:
    * Linux or PowerShell: `docker container run -it --rm -v ${PWD}:/pelican-site ghcr.io/williamjacksn/pelican pelican-quickstart`
    * Windows CMD: `docker container run -it --rm -v %cd%:/pelican-site ghcr.io/williamjacksn/pelican pelican-quickstart`

After making changes to your site content, generate the output with:

`docker container run --rm -v ${PWD}:/pelican-site ghcr.io/williamjacksn/pelican`
