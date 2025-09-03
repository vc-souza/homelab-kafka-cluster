.PHONY: all
all: run

.env:
	@cp .env.template .env

.PHONY: run
run:
	@docker compose up -d

.PHONY: stop
stop: 
	@docker compose down

.PHONY: install
install: .env

.PHONY: uninstall
uninstall:
	@docker compose down -v
	@rm -f .env
