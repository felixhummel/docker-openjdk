.PHONY: default build shell run

NAME := felix/openjdk
VERSION := 1.7
image := $(NAME):$(VERSION)

default: shell

shell:
	docker run --rm -t -i $(image) bash
build:
	docker build -t $(image) .
run:
	docker run --user postgres --rm -t -i $(image) /usr/lib/postgresql/9.3/bin/postgres -D /var/lib/postgresql/9.3/main -c config_file=/etc/postgresql/9.3/main/postgresql.conf
