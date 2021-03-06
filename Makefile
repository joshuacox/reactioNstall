all: fedora artful zesty xenial trusty buster stretch jessie tumbleweed centos7 archlinux gentoo

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

tumbleweed: tumbleweed-run logs

tumbleweed.done: tumbleweed
	date -I > tumbleweed.done

tumbleweed-build:
	docker build -f Dockerfile.tumbleweed -t joshuacox/rxnstall:tumbleweed .

tumbleweed-run: clean tumbleweed-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:tumbleweed

centos7: centos7-run logs

centos7.done: centos7
	date -I > centos7.done

centos7-build:
	docker build -f Dockerfile.centos7 -t joshuacox/rxnstall:centos7 .

centos7-run: clean centos7-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:centos7

genteeded: genteeded-run logs

genteeded.done: genteeded
	date -I > genteeded.done

genteeded-build:
	docker build -f Dockerfile.genteeded -t joshuacox/rxnstall:genteeded .

genteeded-run: clean genteeded-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:genteeded

gentoo: gentoo-run logs

gentoo.done: gentoo
	date -I > gentoo.done

gentoo-build:
	docker build -f Dockerfile.gentoo -t joshuacox/rxnstall:gentoo .

gentoo-run: clean gentoo-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:gentoo

archlinux: archlinux-run logs

archlinux.done: archlinux
	date -I > archlinux.done

archlinux-build:
	docker build -f Dockerfile.archlinux -t joshuacox/rxnstall:archlinux .

archlinux-run: clean archlinux-build
	docker run \
		-d \
		--cidfile .rxnstall.cid \
		joshuacox/rxnstall:archlinux

done: fedora.done artful.done zesty.done xenial.done trusty.done buster.done stretch.done jessie.done tumbleweed.done centos7.done archlinux.done gentoo.done

rm:
	-@rm -f fedora.done
	-@rm -f artful.done
	-@rm -f zesty.done
	-@rm -f xenial.done
	-@rm -f trusty.done
	-@rm -f buster.done
	-@rm -f stretch.done
	-@rm -f jessie.done
	-@rm -f tumbleweed.done
	-@rm -f centos7.done
	-@rm -f archlinux.done
	-@rm -f gentoo.done

vanity:
	curl -i https://git.io -F "url=https://raw.githubusercontent.com/joshuacox/rxNstall/master/rxNstall" -F "code=rxNstall"
