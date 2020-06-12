all: bin/example

DOCKER := DOCKER_BUILDKIT=1 docker

.PHONY: bin/example
bin/example:
		@$(DOCKER) build --target bin --output bin/ --platform local .

.PHONY: clean
clean:
		rm -rf bin/
