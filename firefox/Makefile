# Makefile >> Mozilla Firefox on Docker
# Marco Matos <marco@marco.ae>

NAME:= firefox

.PHONY: all build dev current

all: current

build:
	echo ">>> kindly type 'current' and hit enter > dev version is still under development \n ---"; \
    read version; \
	make $$version 

dev:
	cat dev.Dockerfile > Dockerfile
	docker build -t firefox:dev .
	docker run -ti --rm \
	   --name $(NAME) \
	   -m 1GB \
       -e DISPLAY=unix$$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       firefox:dev

current:
	cat current.Dockerfile > Dockerfile
	docker build -t firefox:current .
	docker run -ti --rm \
	   --name $(NAME) \
	   -v /dev/shm:/dev/shm \
       -e DISPLAY=unix$$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       firefox:current
