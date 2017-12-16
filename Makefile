all: fedora artful zesty xenial trusty buster stretch jessie

build: xenial-build

run: xenial-run

logs:
	docker logs -f `cat .rxnstall.cid`

enter:
	docker exec -it `cat .rxnstall.cid` /bin/bash

clean:
	-docker stop `cat .rxnstall.cid`
	-docker rm `cat .rxnstall.cid`
	-@rm -f .rxnstall.cid

fedora: fedora-run logs

fedora.done: fedora
	date -I > fedora.done

fedora-build:
	docker build -f Dockerfile.fedora -t joshuacox/rxnstall:fedora .

fedora-run: clean fedora-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:fedora

buster: buster-run logs

buster.done: buster
	date -I > buster.done

buster-build:
	docker build -f Dockerfile.buster -t joshuacox/rxnstall:buster .

buster-run: clean buster-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:buster

stretch: stretch-run logs

stretch.done: stretch
	date -I > stretch.done

stretch-build:
	docker build -f Dockerfile.stretch -t joshuacox/rxnstall:stretch .

stretch-run: clean stretch-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:stretch

jessie: jessie-run logs

jessie.done: jessie
	date -I > jessie.done

jessie-build:
	docker build -f Dockerfile.jessie -t joshuacox/rxnstall:jessie .

jessie-run: clean jessie-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:jessie

xenial: xenial-run logs

xenial.done: xenial
	date -I > xenial.done

xenial-build:
	docker build -f Dockerfile.xenial -t joshuacox/rxnstall:xenial .

xenial-run: clean xenial-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:xenial

trusty: trusty-run logs

trusty.done: trusty
	date -I > trusty.done

trusty-build:
	docker build -f Dockerfile.trusty -t joshuacox/rxnstall:trusty .

trusty-run: clean trusty-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:trusty


zesty: zesty-run logs

zesty.done: zesty
	date -I > zesty.done

zesty-build:
	docker build -f Dockerfile.zesty -t joshuacox/rxnstall:zesty .

zesty-run: clean zesty-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:zesty


artful: artful-run logs

artful.done: artful
	date -I > artful.done

artful-build:
	docker build -f Dockerfile.artful -t joshuacox/rxnstall:artful .

artful-run: clean artful-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:artful

done: fedora.done artful.done zesty.done xenial.done trusty.done buster.done stretch.done jessie.done
