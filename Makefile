DOCKER_REPO?=registry.gocurb.internal:80
CONTAINER=$(DOCKER_REPO)/curbformation-templates

all: build push clean

build:
	docker build --pull --no-cache -t $(CONTAINER):latest . 

push:
	docker push $(CONTAINER)

clean:
	docker rmi $(CONTAINER)
	
