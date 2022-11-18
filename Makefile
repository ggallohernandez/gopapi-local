all: binaries build up

binaries:
	CGO_ENABLED=0 GOOS=linux go build -o ${GOPAPI_DIR-..}/gopapi-ca/step-ca github.com/smallstep/certificates/cmd/step-ca

build: build-nginx build-ca build-renewer
build-nginx:
	docker build -t nginx:latest nginx
build-ca:
	docker build -t gopapi-ca:latest gopapi-ca
build-renewer:
	docker build -t gopapi-renewer:latest gopapi-ca

up:
	docker-compose up

down:
	docker-compose down

inspect:
	step certificate inspect https://localhost:4443 --insecure

.PHONY: all binaries up down inspect
.PHONY: build build-nginx build-ca build-renewer