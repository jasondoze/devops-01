# devops-01

build a webserver

  provision the infrastructure for a website

## install dependencies

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

`brew install virtualbox vagrant`

## create virtual machine

`vagrant up`

## delete virtual machine

`vagrant destroy -f`

## re-run provision

`vagrant up --provision`

## test webserver

test from shell:
`curl 192.168.56.10`

test from browser:
`http://192.168.56.10`

--- 
# Deploy website
deploy a website to a webserver

## Create a webpage

