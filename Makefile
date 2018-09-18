#
# Development Environment Version
#
dev:
	docker-compose -f docker-compose.yml -f docker-dev.yml up

#
# Detached up
#
prod:
	docker-compose -f docker-compose.yml -f docker-prod.yml up -d

#
# Brings up the production configuration without detach.
#
prod-dev:
	docker-compose -f docker-compose.yml -f docker-prod.yml up

#
# Brings down the docker instances for this project.
#
down:
	docker-compose down
	docker stop $$(docker ps | grep -i 'caddy' | awk '{ print $$1 }')

#
# Logs into the PHP FPM processor.
#
exec-php:
	docker exec -it $$(docker ps | grep -i 'rev-php' | awk '{ print $$1 }') /bin/sh

