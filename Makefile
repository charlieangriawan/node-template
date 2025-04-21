IMAGE_NAME = $(shell basename $(CURDIR))
CONTAINER_NAME = $(IMAGE_NAME)-container

.PHONY: help build up down logs clean

help:
	@echo "Available targets:"
	@echo "  build    - Build Docker image"
	@echo "  up       - Start container"
	@echo "  down     - Stop and remove container"
	@echo "  logs     - Show container logs"
	@echo "  clean    - Remove image and containers"
	@echo "  help     - Show this help message"

build:
	docker build -t $(IMAGE_NAME) .

up:
	docker run -d --name $(CONTAINER_NAME) -p 4000:4000 $(IMAGE_NAME)

down:
	docker stop $(CONTAINER_NAME) || true
	docker rm $(CONTAINER_NAME) || true

logs:
	docker logs -f $(CONTAINER_NAME)

clean: down
	docker rmi $(IMAGE_NAME) || true
