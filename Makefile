BUILD_DIR=build
APP_NAME=landing
APP_PORT=3000

build:
	DOCKER_BUILDKIT=1 docker build \
	-t accelizen:$(APP_NAME) \
	--build-arg APP_NAME=$(APP_NAME) \
	.

run:
	docker run -dp $(APP_PORT):$(APP_PORT) \
	--name $(APP_NAME) \
	--env APP_PORT=$(APP_PORT) \
	--restart unless-stopped \
	accelizen:$(APP_NAME)

serve: build
	docker run -dp $(APP_PORT):$(APP_PORT) \
	--name $(APP_NAME) \
	--env APP_PORT=$(APP_PORT) \
	--restart unless-stopped \
	accelizen:$(APP_NAME)

stop:
	docker rm -f $(APP_NAME)

.PHONY: run build