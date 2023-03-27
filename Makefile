CONTAINER_NAME=oppia-webserver

run:
	docker compose up --build

install-dependencies:
	docker compose build

update-pip-and-npm-packages:
	pip install -r requirements.txt
	pip install -r requirements_dev.txt
	npm install --legacy-peer-deps
	 
clean:
	docker rm -f oppia-webserver oppia-redis oppia-elasticsearch
	docker rm -f oppia-firebase_emulator oppia-google_cloud_sdk

terminal:
	docker exec -it $(CONTAINER_NAME) bash

run-offline:
	docker compose up
