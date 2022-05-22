SHELL := /bin/bash

.PHONY: setup
setup:
	pyenv local 3.9.4
	python -m venv .venv
	.venv/bin/python -m pip install --upgrade pip
	.venv/bin/python -m pip install -r requirements.txt
	brew install proj
	pip install pyproj
	pip install keplergl == 0.2.0
