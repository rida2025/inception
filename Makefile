all: up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
down:
	docker-compose -f ./srcs/docker-compose.yml down
build:
	docker-compose -f ./srcs/docker-compose.yml build -d
stop:
	docker-compose -f ./srcs/docker-compose.yml stop
clean:
	docker system prune -af
	docker volume prune -af