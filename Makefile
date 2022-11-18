db := docker compose exec db

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
.PHONY: help

##
##Project
##-------

up: ## Start development docker environment.
	docker compose up -d
.PHONY: up

stop: ## Stop development docker environment.
	docker compose stop
.PHONY: stop

rebuild: ## Rebuild development docker environment.
	docker compose down
	docker compose up -d --build
.PHONY: rebuild

shell: ## Opens shell in container with db.
	${db} bash
.PHONY: shell

mysql: ## Opens shell in container with mysql.
	${db} mysql --user=root --password=password bank
.PHONY: mysql