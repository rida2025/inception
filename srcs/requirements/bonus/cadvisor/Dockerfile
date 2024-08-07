FROM debian:bullseye

RUN		apt update -y
RUN		apt -y upgrade
RUN		apt -y install curl

RUN 	curl -L	https://github.com/google/cadvisor/releases/download/v0.37.5/cadvisor \
				-o /usr/bin/cadvisor --silent
RUN		chmod +x /usr/bin/cadvisor

CMD	[ "/usr/bin/cadvisor", "-logtostderr"]