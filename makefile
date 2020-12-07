#!make

include .env
export

DOCKER_COMPOSE = docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml -f docker-compose.sentry.yml

build-frontend:
	cd ${GLOBAL_FRONTEND} && make build

build-service-asteroid:
	cd ${SERVICE_ASTEROID} && make build
build-service-auth:
	cd ${SERVICE_AUTH} && make build
build-service-planet:
	cd ${SERVICE_PLANET} && make build
build-service-stat:
	cd ${SERVICE_STAT} && make build

build-all:
	make build-frontend
	make build-service-asteroid
	make build-service-auth
	make build-service-planet
	make build-service-stat

run: up
	${DOCKER_COMPOSE} logs -f --tail 1

up:
	${DOCKER_COMPOSE} up -d

down:
	${DOCKER_COMPOSE} down

start: run

stop: down

ps:
	${DOCKER_COMPOSE} ps

init:
	${DOCKER_COMPOSE} run --rm sentry-base sentry upgrade --noinput
	${DOCKER_COMPOSE} exec sentry-base sentry createuser --email john@doe.com --password 123456 --superuser --no-input
