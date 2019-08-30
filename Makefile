# -------------------------------------
# MAKEFILE
# -------------------------------------

#
# project settings
#

DOCKER=docker


#
# building
#

.PHONY: build
build: build.process build.task build.webserver build.socketserver

BUILD_NAME = $(patsubst build.%,%,$@)

build.%:
	${DOCKER} build -t helloworld-${BUILD_NAME} ${BUILD_NAME}


#
# running locally
#

RUN_NAME = $(patsubst run.%,%,$@)

run.%:
	${DOCKER} run --rm helloworld-${RUN_NAME}

run.socketserver:
	${DOCKER} run --rm -p 8765:8765 helloworld-socketserver

run.webserver:
	${DOCKER} run --rm -p 8000:8000 helloworld-webserver
