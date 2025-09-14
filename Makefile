.PHONY: all
all: run

config.json:
	@cp config.json.template config.json

.env: config.json
	@./scripts/host/gen/gen_env.sh

.PHONY: install
install: .env

.PHONY: uninstall
uninstall:
	@docker compose down -v || true
	@rm -f config.json
	@rm -f .env

.PHONY: run
run:
	@docker compose up -d

.PHONY: stop
stop: 
	@docker compose down

.PHONY: logs
logs:
	@docker compose logs -f
