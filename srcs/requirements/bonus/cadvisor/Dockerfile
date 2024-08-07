FROM debian:bullseye

RUN		apt update -y
RUN		apt -y upgrade
RUN		apt -y install curl

RUN 	curl -L	https://github.com/google/cadvisor/releases/download/v0.49.1/cadvisor-v0.49.1-linux-amd64 \
				-o /usr/bin/cadvisor --silent
RUN		chmod +x /usr/bin/cadvisor

CMD	[ "/usr/bin/cadvisor", "-logtostderr"]