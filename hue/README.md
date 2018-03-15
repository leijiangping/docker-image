# docker hue by StudioEtrange

* Run hue inside a docker container built upon debian
* Based on hue github source code
* Choice of hue version
* Use supervisor to manage process


## Sample Usage

to run latest hue version :

	docker run -d -p 8000:8000 studioetrange/docker-hue:latest

then go to http://localhost:8000

## Version and Tag

## Instruction 

### build from github source

	git pull https://github.com/StudioEtrange/docker-hue
	cd docker-hue
	docker build -t=studioetrange/docker-hue .

### retrieve image from docker registry

	docker pull studioetrange/docker-hue

### run hue 

	docker run -v DATA_DIR:/data -p HUE_HTTP_PORT:8000 -p SUPERVISOR_HTTP_WEB:9999 studioetrange/docker-hue:HUE_VERSION

also share /opt/hue/desktop/conf

### run hue daemonized

	docker run -d -p HUE_HTTP_PORT:8000 SUPERVISOR_HTTP_WEB:9999 studioetrange/docker-hue:HUE_VERSION


### run a shell inside this container (without hue running)

	docker run -i -t -p HUE_HTTP_PORT:8000 SUPERVISOR_HTTP_WEB:9999 studioetrange/docker-hue bash

## Access point

### Hue

	http://localhost:HUE_HTTP_PORT/

### Supervisor

	http://localhost:SUPERVISOR_HTTP_WEB/
