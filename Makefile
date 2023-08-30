FRONT_CONTAINER_NPM = docker compose exec -it budget_frontend npm
BACK_CONTAINER_NPM = docker compose exec -it budget_backend npm

up:
	docker compose up -d --remove-orphans

down:
	docker compose down

restart: down up

front_npm_install:
	${FRONT_CONTAINER_NPM} install

back_npm_install:
	${BACK_CONTAINER_NPM} install

npm_install: front_npm_install back_npm_install

front_start:
	${FRONT_CONTAINER_NPM} run start:docker

back_start:
	${BACK_CONTAINER_NPM} run start:dev
