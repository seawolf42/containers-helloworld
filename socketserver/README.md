# Hello World Websocket Server

This container is designed for testing hosting environment setup. It exposes a websocket at `/` on port 8765; the socket simply repeats back anything it receives. This should be adequate for testing that a container can be deployed successfully and that port mappings are configured properly to expose the web socket on port 80.

To build: `$ docker build -t helloworld-socketserver .`

To run locally: `$ docker run --rm -p 8765:8765 helloworld-socketserver`
