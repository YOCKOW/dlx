PREFIX=/usr/local

path_to_this_file := $(abspath $(lastword $(MAKEFILE_LIST)))
repository_dir := $(shell dirname "$(path_to_this_file)")

.PHONY: build
build:
	@echo Nothing to do.

.PHONY: clean
clean:
	rm -rf "$(repository_dir)/.SSTest"

.PHONY: test
test:
	@"$(repository_dir)/utils/run-tests"

.PHONY: insatll
install:
	@cp -vf "$(repository_dir)/bin/dlx" "$(PREFIX)/bin/dlx" 
	