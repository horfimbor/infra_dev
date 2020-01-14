#!make

DOCKER_COMPOSE = docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml -f docker-compose.sentry.yml

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
