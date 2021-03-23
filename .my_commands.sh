#!/bin/sh

create() {
	cd $HOME
	python create.py $1
	cd Development
	mkdir $1
	cd $1
	git init
	git remote add origin git@github.com:username/$1.git
	touch README.md
	git add .
	git commit -m "Initial commit"
	git push -u origin master
	code .
}
