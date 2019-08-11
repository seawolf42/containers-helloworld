# Hello World Webserver

This container is designed for testing hosting environment setup. It exposes a static HTML file at `/` on port 8000. This should be adequate for testing that a container can be deployed successfully and that port mappings are configured properly to expose the web server on port 80.

To build: `$ docker build -t helloworld-webserver .`

To run locally: `$ docker run --rm -p 8000:8000 helloworld-webserver`
