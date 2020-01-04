run: up
	docker-compose -f docker-compose.infra.yml  -f docker-compose.services.yml logs -f --tail 1

up:
	docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml up -d

down:
	docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml down

start: run

stop: down

ps:
	docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml ps

