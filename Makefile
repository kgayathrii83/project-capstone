## The Makefile includes instructions on environment setup and lint tests

install:
	sudo apt-get update
	sudo apt-get install -y nginx --no-install-recommends
    
build:
	sudo service nginx start
	
test:
	curl http://localhost:80/

all: install build test 