include .env

.PHONY: migrate
migrate:
	migrate create -seq -ext .sql -dir ./migrations ${name}
.PHONY: up
up:
	migrate -path ./migrations -database ${DB_DSN} up
#Откат все миграций
.PHONY: down
down:
	migrate -path ./migrations -database ${DB_DSN} down
