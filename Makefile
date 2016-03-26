.DEFAULT_GOAL := stub
bindir ?= ./build/bin
uname := $(shell uname -s)

clean: | uninstall

install: | stub
	@rsync -a src/ ${bindir}/
ifeq (${uname}, Darwin)
	@$(eval _bindir := $(shell greadlink -f ${bindir}))
	@sed -i ''  "s|bindir=|bindir=${_bindir}|g" ${bindir}/somafm
else ifeq (${uname}, Linux)
	@$(eval _bindir := $(shell readlink -f ${bindir}))
	@sed -i "s|bindir=|bindir=${_bindir}|g" ${bindir}/somafm
endif

stub:
	@mkdir -p ${bindir}

test: | test-unit test-integration

test-integration: | install
	@bats test/integration

test-unit: | install
	@bats test/unit

uninstall:
	@rm -rf ${bindir}

.PHONY: clean install stub test test-integration test-unit uninstall
