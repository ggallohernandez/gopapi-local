## Gopapi Local

:warning: This is a work in progress. :warning:

Gopapi is a demo project to show skills in PHP (without a framework), NGINX, Docker, SmallStep, and React. It was built using some of the best practices I've learned over the years like Containerization, TDD, SOLID principles, GRASP and GOF patterns.  

Gopapi Local is a local development environment for Gopapi. It is a Docker Compose project that runs an NGIX server that proxies the Gopapi API and frontend.

### Requirements

* Docker compose

### Usage

1. Clone the repository [gopapi-local]()
2. Clone the repository [gopapi-api](https://github.com/ggallohernandez/gopapi-api), [gopapi-web](https://github.com/ggallohernandez/gopapi-web), [gopapi-ca](https://github.com/ggallohernandez/gopapi-ca), and [gopapi-renewer](https://github.com/ggallohernandez/gopapi-renewer)
3. Set GOPAPI_DIR env variable to the path where you cloned the gopapi repositories
4. Run `docker-compose up -d`
5. Visit https://localhost:4443