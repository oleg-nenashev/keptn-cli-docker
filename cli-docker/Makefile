CLI_VERSION=0.14.1
IMAGE_TAG=$(CLI_VERSION)
IMAGE_NAME=keptn/cli

.PHONY: build
build:
	docker build . -t $(IMAGE_NAME):$(IMAGE_TAG)

.PHONY: publish
publish:
	docker push $(IMAGE_NAME):$(IMAGE_TAG)

