## Gopapi Local

Gopapi is a demo project to show skills in PHP (without a framework), NGINX, Docker, SmallStep, and React. 

Gopapi Local is a local development environment for Gopapi. It is a Docker Compose project that runs an NGIX server that proxies the Gopapi API and frontend.

### Requirements

* Docker compose

### Usage

1. Clone the repository [gopapi-local]()
2. Clone the repository [gopapi-api](), [gopapi-web](), [gopapi-ca](), and [gopapi-renewer]()
3. Set GOPAPI_DIR env variable to the path where you cloned the gopapi repositories
4. Run `docker-compose up -d`
5. Visit https://localhost:4443