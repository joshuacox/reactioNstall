all: run logs

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
