alpine_version := 3.7
typescript_version := 2.9.2

build:
	@docker build \
		--build-arg ALPINE_VERSION=$(alpine_version) \
		--build-arg TSC_VERSION=$(typescript_version) \
		-t aybabtme/typescript-compiler:$(typescript_version) \
		.

push:
	@docker tag  aybabtme/typescript-compiler:$(typescript_version) aybabtme/typescript-compiler:latest
	@docker push aybabtme/typescript-compiler:$(typescript_version)
	@docker push aybabtme/typescript-compiler:latest
