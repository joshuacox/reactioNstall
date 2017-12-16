all: ubuntu fedora

ubuntu: run logs

build:
	docker build -t joshuacox/rxnstall .

run: clean build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall

bash: clean build
	docker run \
		-it \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall \
		/bin/bash

logs:
	docker logs -f `cat .rxnstall.cid`

enter:
	docker exec -it `cat .rxnstall.cid` /bin/bash

clean:
	-docker stop `cat .rxnstall.cid`
	-docker rm `cat .rxnstall.cid`
	-@rm -f .rxnstall.cid

fedora: fedora-run logs

fedora-build:
	docker build -f Dockerfile.fedora -t joshuacox/rxnstall:fedora .

fedora-run: clean fedora-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:fedora
