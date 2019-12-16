run: up
	docker-compose -f docker-compose.infra.yml  -f docker-compose.services.yml logs -f --tail 1

up:
	docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml up -d

stop:
	docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml down

ps:
	docker-compose -f docker-compose.infra.yml -f docker-compose.services.yml ps

