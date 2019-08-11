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
build: build.process build.task build.webserver

BUILD_NAME = $(patsubst build.%,%,$@)

build.%:
	${DOCKER} build -t helloworld-${BUILD_NAME} ${BUILD_NAME}


#
# running locally
#

RUN_NAME = $(patsubst run.%,%,$@)

run.%:
	${DOCKER} run --rm helloworld-${RUN_NAME}
