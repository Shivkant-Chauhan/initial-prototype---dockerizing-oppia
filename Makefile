CONTAINER_NAME=oppia-webserver

run:
	docker compose up --build

install-dependencies:
	docker build -t $(CONTAINER_NAME) -f Dockerfile .

update-pip-and-npm-packages:
	git pull origin develop --ff
	docker build -t $(CONTAINER_NAME) -f Dockerfile .
	 
clean:
	docker rm -f oppia-webserver oppia-redis oppia-elasticsearch
	docker rm -f oppia-firebase_emulator oppia-google_cloud_sdk

terminal:
	docker exec -it $(CONTAINER_NAME) bash

run-offline:
	docker compose up
