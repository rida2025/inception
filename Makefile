all: up

up:
	mkdir -p /home/mel-jira/data/mariadb
	mkdir -p /home/mel-jira/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up -d
down:
	docker-compose -f ./srcs/docker-compose.yml down
build:
	mkdir -p /home/mel-jira/data/mariadb
	mkdir -p /home/mel-jira/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml build -d
stop:
	docker-compose -f ./srcs/docker-compose.yml stop
clean:
	docker stop $(docker ps -qa);
	docker rm $(docker ps -qa);
	docker rmi -f $(docker images -qa);
	docker volume rm $(docker volume ls -q);
	docker network rm $(docker network ls -q);
	docker builder prune -a
