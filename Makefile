SHELL = /bin/bash
setup:
	python3 -m venv .udacity-devops-3.6.0
	cd .udacity-devops-3.6.0/bin && source activate
	brew install hadolint

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python3 -m pytest test_scale.py

lint:
	hadolint Dockerfile --ignore=DL3013
	pylint --disable=R,C,W1203 app.py

all: install lint test
