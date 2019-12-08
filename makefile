run: run-infra run-services

run-infra:
	docker-compose -f docker-compose.infra.yml  up -d

run-services:
	docker-compose -f docker-compose.services.yml up

stop:
	docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml down

ps:
	docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml ps

