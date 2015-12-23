.PHONY: main install build pdf epub mobi update review server push clean

OS_NAME := $(shell uname)
BRANCH  := $(shell cat .git/HEAD | awk -F/ '{ print $$3 }')

main: build review

install:
	gitbook install .

build:
	gitbook build .

pdf:
	gitbook pdf .

epub:
	gitbook epub .

mobi:
	gitbook mobi .

update:
	-git pull origin ${BRANCH}

review:
ifeq (${OS_NAME}, Darwin)
	open _book/index.html
else
	firefox _book/index.html
endif

server:
	gitbook serve

push:
	-git push origin master 
	-git push origin develop

clean:
	-rm -rf _book/ _books/ book.pdf book.epub book.mobi

