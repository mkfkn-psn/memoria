
# Up web side container
.PHONY: up.web
up.web:
	docker compose -f ./docker/docker-compose.yml up --detach

# Down web side container
.PHONY: down.web
down.web:
	docker compose -f ./docker/docker-compose.yml down

# npm start
.PHONY: start.web
start.web:
	docker compose -f ./docker/docker-compose.yml exec web sh -c "npm install && ng serve --host=0.0.0.0"