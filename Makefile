## The Makefile includes instructions on environment setup and lint tests

install:
	sudo apt-get update
	sudo apt-get install -y nginx --no-install-recommends
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    chmod +x ./hadolint

copy:
    sudo cp ./config/nginx.conf /etc/nginx/nginx.conf
    sudo cp -r ./www /www
build:
	sudo service nginx start
	
test:
	curl http://localhost:80/

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	#./hadolint Dockerfile

all: install build test lint