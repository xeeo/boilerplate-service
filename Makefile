CURRENT_DIRECTORY := $(shell pwd)

start:
	@docker-compose up

clean:
	@docker-compose rm --force

stop:
	@docker-compose stop

status:
	@docker-compose ps

cli:
	@docker-compose run --rm service bash

cc:
	@docker-compose run --rm service drush cc all

restart:
	@docker-compose stop service
	@docker-compose start service

.PHONY: clean start stop status cli log cc restart
