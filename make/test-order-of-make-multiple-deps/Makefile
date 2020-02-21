.ONESHELL:
.SHELL := /usr/bin/bash

one:
	@git pull &>/dev/null

two: pull ## Install all Components of Application
	@sh PROJECT.sh all

debug:
	@sh -x PROJECT.sh all