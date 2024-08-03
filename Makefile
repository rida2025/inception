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
	docker stop $(docker ps -qa)
	docker rm $(docker ps -qa)
	docker rmi -f $(docker images -qa)
	docker volume rm $(docker volume ls -q)
	docker network rm $(docker network ls -q)
